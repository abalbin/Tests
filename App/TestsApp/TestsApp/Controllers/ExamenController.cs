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
    public class ExamenController : Controller
    {
        private TestsAppBDEntities db = new TestsAppBDEntities();

        //
        // GET: /Examen/
        [InitializeSimpleMembership]
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
                if (FechaInicioEjecucion == null)
                    FechaInicioEjecucion = DateTime.Now;
                examen.FechaEjecucion = FechaInicioEjecucion.Value;
                //Hack para bindear---------------------
                foreach (var item in examen.Pregunta)
                    item.Respuesta.ToList();
                //--------------------------------------
            }
            return View(examen);
        }

        [HttpPost]
        [Authorize]
        public ActionResult Give(Examen examen)
        {
            var examenHelp = db.Examen.FirstOrDefault(r => r.Id == examen.Id);
            if (examenHelp != null)
            {
                UserProfile user = db.UserProfile.First(r => r.UserName == User.Identity.Name);
                ExamenUsuario exUsuario = db.ExamenUsuario.FirstOrDefault(r => r.IdExamen == examen.Id && r.IdUsuario == user.UserId);

                if (exUsuario != null)
                {
                    PreguntaUsuario pregUsuario;
                    RespuestaUsuario rptausuario;
                    Pregunta preguntaOriginal;
                    Respuesta respuestOriginal;
                    decimal puntajePregunta;
                    decimal puntajeTotal = 0;
                    foreach (var preg in examen.Pregunta)
                    {
                        preguntaOriginal = db.Pregunta.First(r => r.Id == preg.Id);
                        puntajePregunta = 0;
                        pregUsuario = new PreguntaUsuario { IdUsuario = exUsuario.IdUsuario, IdPregunta = preg.Id };
                        foreach (var rpta in preg.Respuesta)
                        {
                            respuestOriginal = db.Respuesta.First(r => r.Id == rpta.Id);
                            rptausuario = new RespuestaUsuario { IdUsuario = exUsuario.IdUsuario };
                            rptausuario.IdRespuesta = rpta.Id;
                            rptausuario.Texto = rpta.Texto;
                            rptausuario.Marcada = preguntaOriginal.TipoPregunta.Nombre.Equals("Textarea") ? true : rpta.Marcada;
                            puntajePregunta += ((rpta.Marcada && respuestOriginal.EsCorrecta == 1) ? (Convert.ToDecimal(preguntaOriginal.Puntaje / preguntaOriginal.CantidadRespuesta)) : 0);
                            db.RespuestaUsuario.Add(rptausuario);
                            db.SaveChanges();
                        }
                        pregUsuario.Puntaje = puntajePregunta;
                        db.PreguntaUsuario.Add(pregUsuario);
                        db.SaveChanges();
                        puntajeTotal += Convert.ToDecimal(pregUsuario.Puntaje);
                    }
                    exUsuario.Puntaje = puntajeTotal;
                    exUsuario.FechaEjecucion = DateTime.Now;
                    exUsuario.Tiempo = examen.TiempoTranscurrido;
                    db.SaveChanges();

                }
                else
                    return HttpNotFound();
            }
            else
                return HttpNotFound();
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