using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using TestsApp.Filters;
using TestsApp.Models;

namespace TestsApp.Controllers
{
    [Authorize]
    [InitializeSimpleMembership]
    public class ExamenController : Controller
    {
        private TestsAppBDEntities db = new TestsAppBDEntities();

        //
        // GET: /Examen/

        public ActionResult Index()
        {
            Session.RemoveAll();
            UserProfile us = db.UserProfile.First(r => r.UserName == User.Identity.Name);
            List<Examen> examenes = new List<Examen>();
            if (Roles.IsUserInRole("Administrador"))
                examenes = db.Examen.ToList();
            else
                examenes = db.ExamenUsuario.Where(e => e.IdUsuario == us.UserId).Select(e => e.Examen).ToList();
            return View(examenes);
        }

        //
        // GET: /Examen/Details/5

        public ActionResult Details(int id = 0)
        {
            Examen examen = db.Examen.Find(id);
            if (examen == null)
            {
                return HttpNotFound();
            }
            return View(examen);
        }

        [HttpPost]
        public ActionResult NextQuestion(Pregunta pregunta, int estadoExamen = 0)
        {
            Pregunta current = db.Pregunta.FirstOrDefault(r => r.Id == pregunta.Id);
            Pregunta next = db.Pregunta.FirstOrDefault(r => r.Orden == current.Orden + 1 && r.IdExamen == current.IdExamen);
            UserProfile user = db.UserProfile.First(r => r.UserName == User.Identity.Name);
            if (next == null)
                return HttpNotFound();
            else
            {
                if (estadoExamen != 2)
                    SavePregunta(current, pregunta, user);

                if (db.PreguntaUsuario.FirstOrDefault(r => r.IdPregunta == next.Id && r.IdUsuario == user.UserId) != null)
                {
                    foreach (var rpta in next.Respuesta)
                    {
                        rpta.Marcada = db.RespuestaUsuario.First(r => r.IdRespuesta == rpta.Id && r.IdUsuario == user.UserId).Marcada;
                    }
                }
                ModelState.Clear();
                return PartialView("GivePreguntaPartial", next);
            }
        }

        [HttpPost]
        public ActionResult PreviousQuestion(Pregunta pregunta, int estadoExamen = 0)
        {
            Pregunta current = db.Pregunta.FirstOrDefault(r => r.Id == pregunta.Id);
            Pregunta prev = db.Pregunta.FirstOrDefault(r => r.Orden == current.Orden - 1 && r.IdExamen == current.IdExamen);
            UserProfile user = db.UserProfile.First(r => r.UserName == User.Identity.Name);
            if (prev == null)
                return HttpNotFound();
            else
            {
                if (estadoExamen != 2)
                    SavePregunta(current, pregunta, user);

                if (db.PreguntaUsuario.FirstOrDefault(r => r.IdPregunta == prev.Id && r.IdUsuario == user.UserId) != null)
                {
                    foreach (var rpta in prev.Respuesta)
                    {
                        rpta.Marcada = db.RespuestaUsuario.First(r => r.IdRespuesta == rpta.Id && r.IdUsuario == user.UserId).Marcada;
                    }
                }
                ModelState.Clear();
                return PartialView("GivePreguntaPartial", prev);
            }
        }

        private void SavePregunta(Pregunta current, Pregunta pregunta, UserProfile user)
        {

            Pregunta preguntaOriginal = db.Pregunta.First(r => r.Id == current.Id);
            decimal puntajePregunta = 0;
            Respuesta respuestaOriginal;
            RespuestaUsuario rptausuario;
            foreach (var rpta in pregunta.Respuesta)
            {
                rptausuario = db.RespuestaUsuario.FirstOrDefault(r => r.IdUsuario == user.UserId && r.IdRespuesta == rpta.Id);
                respuestaOriginal = db.Respuesta.First(r => r.Id == rpta.Id);
                puntajePregunta += ((rpta.Marcada && respuestaOriginal.EsCorrecta == 1) ? (Convert.ToDecimal(preguntaOriginal.Puntaje / preguntaOriginal.CantidadRespuesta)) : 0);
                if (rptausuario == null)
                {
                    rptausuario = new RespuestaUsuario { IdUsuario = user.UserId };
                    rptausuario.IdRespuesta = rpta.Id;
                    rptausuario.Texto = respuestaOriginal.Texto;
                    rptausuario.Marcada = preguntaOriginal.TipoPregunta.Nombre.Equals("Textarea") ? true : rpta.Marcada;
                    db.RespuestaUsuario.Add(rptausuario);
                }
                else
                    rptausuario.Marcada = preguntaOriginal.TipoPregunta.Nombre.Equals("Textarea") ? true : rpta.Marcada;
                db.SaveChanges();

            }
            PreguntaUsuario pregUsuario = db.PreguntaUsuario.FirstOrDefault(r => r.IdUsuario == user.UserId && r.IdPregunta == current.Id);
            if (pregUsuario == null)
            {
                pregUsuario = new PreguntaUsuario { IdUsuario = user.UserId, IdPregunta = current.Id };
                pregUsuario.Puntaje = puntajePregunta;
                db.PreguntaUsuario.Add(pregUsuario);
            }
            else
                pregUsuario.Puntaje = puntajePregunta;
            db.SaveChanges();
        }

        public ActionResult Give(int id = 0)
        {
            Examen examen = new Examen();
            examen = db.Examen.FirstOrDefault(e => e.Id == id);

            if (examen == null)
            {
                return HttpNotFound();
            }
            else
            {
                UserProfile user = db.UserProfile.First(r => r.UserName == User.Identity.Name);
                ExamenUsuario exUsua = db.ExamenUsuario.FirstOrDefault(r => r.IdExamen == examen.Id && r.IdUsuario == user.UserId);
                if (FechaInicioEjecucion == null)
                {
                    if (exUsua.Estado == 1)
                        FechaInicioEjecucion = exUsua.FechaInicio;
                    else
                        FechaInicioEjecucion = DateTime.Now;
                }
                examen.FechaEjecucion = FechaInicioEjecucion.Value;
                //Hack para bindear---------------------
                foreach (var item in examen.Pregunta)
                    item.Respuesta.ToList();
                //--------------------------------------
                //Para visualizar las marcadas (en caso existan) de la primera respuesta
                Pregunta primera = examen.Pregunta.ElementAt(0);
                if (db.PreguntaUsuario.FirstOrDefault(r => r.IdPregunta == primera.Id && r.IdUsuario == user.UserId) != null)
                {
                    foreach (var rpta in primera.Respuesta)
                    {
                        rpta.Marcada = db.RespuestaUsuario.First(r => r.IdRespuesta == rpta.Id && r.IdUsuario == user.UserId).Marcada;
                    }
                }
                //--------------------------------------------------------------------
                //Actualizar Estado de ExamenUsuario:

                if (exUsua != null && exUsua.Estado != 2)
                {
                    if (exUsua.Estado == 0)
                    {
                        exUsua.FechaInicio = DateTime.Now;
                        exUsua.Estado = 1;
                        db.SaveChanges();
                    }
                    ModelState.Clear();
                    return View(examen);
                }
                else
                    return HttpNotFound();

            }

        }

        [HttpPost]
        [Authorize]
        public ActionResult Give(Pregunta pregunta, TimeSpan TiempoTranscurrido)
        {
            Pregunta current = db.Pregunta.FirstOrDefault(r => r.Id == pregunta.Id);
            UserProfile user = db.UserProfile.First(r => r.UserName == User.Identity.Name);
            if (current != null)
                SavePregunta(current, pregunta, user);
            var examenHelp = db.Examen.FirstOrDefault(r => r.Id == pregunta.IdExamen);
            if (examenHelp != null)
            {
                ExamenUsuario exUsuario = db.ExamenUsuario.FirstOrDefault(r => r.IdExamen == pregunta.IdExamen && r.IdUsuario == user.UserId);

                if (exUsuario != null)
                {
                    decimal puntajeTotal = 0;
                    var preguntas = db.PreguntaUsuario.Where(r => r.Pregunta.Examen.Id == pregunta.IdExamen && r.IdUsuario == user.UserId);
                    foreach (var preg in preguntas)
                        puntajeTotal += Convert.ToDecimal(preg.Puntaje);
                    exUsuario.Puntaje = puntajeTotal;
                    exUsuario.FechaTermino = DateTime.Now;
                    exUsuario.Tiempo = TiempoTranscurrido;
                    exUsuario.Estado = 2;
                    db.SaveChanges();
                    return RedirectToAction("Result", new { idExamen = exUsuario.IdExamen, idUsuario = exUsuario.IdUsuario });
                }
                else
                    return HttpNotFound();
            }
            else
                return HttpNotFound();
        }

        public ActionResult Result(int idExamen, int idUsuario)
        {
            var exUsuario = db.ExamenUsuario.FirstOrDefault(r => r.IdExamen == idExamen && r.IdUsuario == idUsuario);
            if (exUsuario != null)
            {
                //Para visualizar las marcadas (en caso existan) de la primera respuesta
                Pregunta primera = exUsuario.Examen.Pregunta.ElementAt(0);
                if (db.PreguntaUsuario.FirstOrDefault(r => r.IdPregunta == primera.Id && r.IdUsuario == idUsuario) != null)
                {
                    foreach (var rpta in primera.Respuesta)
                    {
                        rpta.Marcada = db.RespuestaUsuario.First(r => r.IdRespuesta == rpta.Id && r.IdUsuario == idUsuario).Marcada;
                    }
                }
                return View(exUsuario);
            }
            else
                return HttpNotFound();
        }

        [HttpPost]
        [Authorize]
        public ActionResult Result(Pregunta pregunta, TimeSpan TiempoTranscurrido)
        {
            return RedirectToAction("Index");
        }

        public ActionResult Aprobar(int id = 0)
        {
            Examen examen = db.Examen.Find(id);
            IdExamenAsignar = 0;
            if (examen == null)
            {
                return HttpNotFound();
            }
            IdExamenAsignar = id;
            return PartialView("AsignarAsterPopUpPartial", examen.ExamenUsuario);
        }

        [HttpPost]
        public ActionResult Aprobar()
        {
            if (ListaExamenUsuarioAsignar.Count > 0)
            {
                foreach (var item in ListaExamenUsuarioAsignar)
                {
                    item.Estado = 0;
                    db.ExamenUsuario.Add(item);
                    db.SaveChanges();
                }
                return RedirectToAction("Index");
            }
            else
                return PartialView("AsignarAsterPopUpPartial", ListaExamenUsuarioAsignar);
        }

        public ActionResult AsignarUsuario(int idUsuario = 0)
        {
            Examen examen = db.Examen.Find(IdExamenAsignar);
            if (examen != null)
            {
                ExamenUsuario nuevoExamenUsuario = new ExamenUsuario() { IdExamen = IdExamenAsignar, IdUsuario = idUsuario };
                ListaExamenUsuarioAsignar.Add(nuevoExamenUsuario);
            }
            return PartialView("AsignarAsterPopUpPartial", ListaExamenUsuarioAsignar);
        }

        public ActionResult NoAsignarUsuario(int idUsuario = 0)
        {
            Examen examen = db.Examen.Find(IdExamenAsignar);
            if (examen != null)
            {
                var currentExamenUsuario = ListaExamenUsuarioAsignar.FirstOrDefault(r => r.IdUsuario == idUsuario && r.IdExamen == IdExamenAsignar);
                if (currentExamenUsuario != null)
                    ListaExamenUsuarioAsignar.Remove(currentExamenUsuario);
            }
            return PartialView("AsignarAsterPopUpPartial", ListaExamenUsuarioAsignar);
        }

        //
        // GET: /Examen/Create

        public ActionResult Create()
        {
            ViewBag.IdEstado = new SelectList(db.Estado, "Id", "Nombre");
            Session.Remove("ListaPreguntas");
            ListaPreguntas = new List<Pregunta>();
            ViewBag.ListaPreguntas = ListaPreguntas;
            Examen ex = new Examen();
            return View(ex);
        }

        public ActionResult GetProductsByLine(int id)
        {
            var result = db.Producto.Where(r => r.IdLinea == id);

            //build JSON.  
            var modelResult = from m in result
                                 select new { value = m.Id,
                                                text = m.Nombre };

            return Json(modelResult, JsonRequestBehavior.AllowGet);
        }

        //
        // POST: /Examen/Create

        [HttpPost]
        public ActionResult Create(Examen examen)
        {
            examen.Pregunta = ListaPreguntas;
            if (ModelState.IsValid)
            {
                examen.FechaCreacion = DateTime.Now;
                examen.IdEstado = 1;
                db.Examen.Add(examen);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            //ViewBag.IdEstado = new SelectList(db.Estado, "Id", "Nombre", examen.IdEstado);
            return View(examen);
        }

        [HttpPost]
        public ActionResult CreatePregunta(Pregunta preg)
        {
            //(ViewBag.ListaPreguntas as List<Pregunta>).Add(pregunta);
            //return View(pregunta);
            //var tipoPreguntaTemp = new TestsAppBDEntities().TipoPregunta.FirstOrDefault(r => r.Id == preg.IdTipoPregunta);
            //TipoPregunta nuevoTipoPregunta = new TipoPregunta() { Id = tipoPreguntaTemp.Id, Nombre = tipoPreguntaTemp.Nombre, NombreControl = tipoPreguntaTemp.NombreControl };
            ////preg.TipoPregunta = nuevoTipoPregunta;
            //preg.TipoPregunta = db.TipoPregunta.FirstOrDefault(r => r.Id == preg.IdTipoPregunta);
            var tipoPreg = db.TipoPregunta.First(r => r.Id == preg.IdTipoPregunta);
            if (preg.CantidadRespuesta == null)
                preg.CantidadRespuesta = tipoPreg.NombreControl.Equals("Textarea") ? 1 : 0;
            preg.Orden = ListaPreguntas.Count + 1;
            ListaPreguntas.Add(preg);
            ViewBag.ListaPreguntas = ListaPreguntas;
            return PartialView("PreguntaPartial", ListaPreguntas);
        }

        public ActionResult EditarPreguntaPrev(int id)
        {
            var pregunta = ListaPreguntas[id];
            if (pregunta != null)
                return PartialView("PreguntaPopUpPartial", ListaPreguntas);
            else
                return PartialView("PreguntaPopUpPartial", null);
        }

        [HttpPost]
        public ActionResult CreateRespuesta(string texto, int indexParent, IEnumerable<int> respuestas)
        {
            int idtipoPreg = ListaPreguntas[indexParent].IdTipoPregunta.Value;
            var tipoPreg = db.TipoPregunta.First(r => r.Id == idtipoPreg);
            Respuesta rpta = new Respuesta { Texto = texto };
            rpta.EsCorrecta = tipoPreg.NombreControl.Equals("Textarea") ? 1 : 0;
            ListaPreguntas[indexParent].Respuesta.Add(rpta);
            ViewBag.ListaPreguntas = ListaPreguntas;
            return PartialView("RespuestaPartial", ListaPreguntas[indexParent]);
        }

        [HttpPost]
        public ActionResult ChangeStateRespuesta(int indexRespuesta, int indexPregunta, bool ischecked)
        {
            if (ischecked)
                ListaPreguntas[indexPregunta].Respuesta.ToList()[indexRespuesta].EsCorrecta = 1;
            else
                ListaPreguntas[indexPregunta].Respuesta.ToList()[indexRespuesta].EsCorrecta = 0;
            ListaPreguntas[indexPregunta].CantidadRespuesta = ListaPreguntas[indexPregunta].Respuesta.Where(r => r.EsCorrecta == 1).ToList().Count;
            return PartialView("RespuestaPartial", ListaPreguntas[indexPregunta]);
        }

        //
        // GET: /Examen/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Examen examen = db.Examen.Find(id);
            if (examen == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdEstado = new SelectList(db.Estado, "Id", "Nombre", examen.IdEstado);
            return View(examen);
        }

        //
        // POST: /Examen/Edit/5

        [HttpPost]
        public ActionResult Edit(Examen examen)
        {
            if (ModelState.IsValid)
            {
                db.Entry(examen).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdEstado = new SelectList(db.Estado, "Id", "Nombre", examen.IdEstado);
            return View(examen);
        }

        //
        // GET: /Examen/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Examen examen = db.Examen.Find(id);
            if (examen == null)
            {
                return HttpNotFound();
            }
            return View(examen);
        }

        //
        // POST: /Examen/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            Examen examen = db.Examen.Find(id);
            db.Examen.Remove(examen);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

        public List<Pregunta> ListaPreguntas
        {
            get
            {
                if (Session["ListaPreguntas"] == null)
                {
                    Session["ListaPreguntas"] = new List<Pregunta>();
                    return Session["ListaPreguntas"] as List<Pregunta>;
                }
                else
                    return Session["ListaPreguntas"] as List<Pregunta>;
            }
            set
            {
                Session["ListaPreguntas"] = value;
            }
        }

        public List<ExamenUsuario> ListaExamenUsuarioAsignar
        {
            get
            {
                if (Session["ListaExamenUsuarioAsignar"] == null)
                {
                    Session["ListaExamenUsuarioAsignar"] = new List<ExamenUsuario>();
                    return Session["ListaExamenUsuarioAsignar"] as List<ExamenUsuario>;
                }
                else
                    return Session["ListaExamenUsuarioAsignar"] as List<ExamenUsuario>;
            }
            set
            {
                Session["ListaExamenUsuarioAsignar"] = value;
            }
        }

        public int IdExamenAsignar
        {
            get
            {
                if (Session["IdExamenAsignar"] == null)
                {
                    Session["IdExamenAsignar"] = 0;
                    return Convert.ToInt32(Session["ListaPreguntas"]);
                }
                else
                    return Convert.ToInt32(Session["ListaPreguntas"]);
            }
            set
            {
                Session["ListaPreguntas"] = value;
            }
        }

        public DateTime? FechaInicioEjecucion
        {
            get
            {
                if (Session["FechaInicioEjecucion"] == null)
                    return null;
                return Convert.ToDateTime(Session["FechaInicioEjecucion"]);
            }
            set
            {
                Session["FechaInicioEjecucion"] = value;
            }
        }
    }
}