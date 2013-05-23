using OfficeOpenXml;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Mail;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using TestsApp.Filters;
using TestsApp.Models;
using TestsApp.Models.ViewModels;

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
            bool esGerente = false;
            Roles.GetRolesForUser().ToList().ForEach((string s) => { esGerente = s.Contains("Gerente"); });
            if (Roles.IsUserInRole("Administrador"))
                examenes = db.Examen.ToList();
            else
            {
                if (esGerente)
                    examenes = db.Examen.Where(e => e.IdTipo == 2 && e.IdEstado == 3).ToList();
                else
                    examenes = db.ExamenUsuario.Where(e => e.IdUsuario == us.UserId && e.Examen.IdTipo == 1 && e.Examen.IdEstado == 3).Select(e => e.Examen).ToList();
            }
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
            int idExamenUsuario = Convert.ToInt32(Session["sIdExamenUsuario"]);
            if (next == null)
                return HttpNotFound();
            else
            {
                if (estadoExamen != 2)
                    SavePregunta(current, pregunta, user);

                //if (db.PreguntaUsuario.FirstOrDefault(r => r.IdPregunta == next.Id && r.IdUsuario == user.UserId) != null)
                if (db.PreguntaUsuario.FirstOrDefault(r => r.IdPregunta == next.Id && r.IdExamenUsuario == idExamenUsuario) != null)
                {
                    foreach (var rpta in next.Respuesta)
                    {
                        //rpta.Marcada = db.RespuestaUsuario.First(r => r.IdRespuesta == rpta.Id && r.IdUsuario == user.UserId).Marcada;
                        rpta.Marcada = db.RespuestaUsuario.First(r => r.IdRespuesta == rpta.Id && r.IdExamenUsuario == idExamenUsuario).Marcada;
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
            int idExamenUsuario = Convert.ToInt32(Session["sIdExamenUsuario"]);
            if (prev == null)
                return HttpNotFound();
            else
            {
                if (estadoExamen != 2)
                    SavePregunta(current, pregunta, user);

                //if (db.PreguntaUsuario.FirstOrDefault(r => r.IdPregunta == next.Id && r.IdUsuario == user.UserId) != null)
                if (db.PreguntaUsuario.FirstOrDefault(r => r.IdPregunta == prev.Id && r.IdExamenUsuario == idExamenUsuario) != null)
                {
                    foreach (var rpta in prev.Respuesta)
                    {
                        //rpta.Marcada = db.RespuestaUsuario.First(r => r.IdRespuesta == rpta.Id && r.IdUsuario == user.UserId).Marcada;
                        rpta.Marcada = db.RespuestaUsuario.First(r => r.IdRespuesta == rpta.Id && r.IdExamenUsuario == idExamenUsuario).Marcada;
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
            int idExamenUsuario = Convert.ToInt32(Session["sIdExamenUsuario"]);
            foreach (var rpta in pregunta.Respuesta)
            {
                //rptausuario = db.RespuestaUsuario.FirstOrDefault(r => r.IdUsuario == user.UserId && r.IdRespuesta == rpta.Id);
                rptausuario = db.RespuestaUsuario.FirstOrDefault(r => r.IdExamenUsuario == idExamenUsuario && r.IdRespuesta == rpta.Id);
                respuestaOriginal = db.Respuesta.First(r => r.Id == rpta.Id);
                if (preguntaOriginal.Examen.IdTipo != 2)
                    puntajePregunta += ((rpta.Marcada && respuestaOriginal.EsCorrecta == 1) ? (Convert.ToDecimal(preguntaOriginal.Puntaje / preguntaOriginal.CantidadRespuesta)) : 0);
                else
                    puntajePregunta += rpta.Marcada ? respuestaOriginal.Puntaje.Value : 0;
                if (rptausuario == null)
                {
                    rptausuario = new RespuestaUsuario { IdUsuario = user.UserId };
                    rptausuario.IdRespuesta = rpta.Id;
                    rptausuario.Texto = respuestaOriginal.Texto;
                    rptausuario.Marcada = preguntaOriginal.TipoPregunta.Nombre.Equals("Textarea") ? true : rpta.Marcada;
                    rptausuario.IdExamenUsuario = idExamenUsuario;
                    db.RespuestaUsuario.Add(rptausuario);
                }
                else
                    rptausuario.Marcada = preguntaOriginal.TipoPregunta.Nombre.Equals("Textarea") ? true : rpta.Marcada;
                db.SaveChanges();

            }
            //PreguntaUsuario pregUsuario = db.PreguntaUsuario.FirstOrDefault(r => r.IdUsuario == user.UserId && r.IdPregunta == current.Id);
            PreguntaUsuario pregUsuario = db.PreguntaUsuario.FirstOrDefault(r => r.IdExamenUsuario == idExamenUsuario && r.IdPregunta == current.Id);
            if (pregUsuario == null)
            {
                pregUsuario = new PreguntaUsuario { IdUsuario = user.UserId, IdPregunta = current.Id };
                pregUsuario.Puntaje = puntajePregunta;
                pregUsuario.IdExamenUsuario = idExamenUsuario;
                db.PreguntaUsuario.Add(pregUsuario);
            }
            else
                pregUsuario.Puntaje = puntajePregunta;
            ExamenUsuario exUsua = db.ExamenUsuario.Find(idExamenUsuario);
            exUsua.IdPreguntaActual = pregUsuario.IdPregunta;
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
                if (exUsua == null && examen.IdTipo == 2)
                {
                    if (db.ExamenUsuario.FirstOrDefault(r => r.IdEjecutivo == user.UserId && r.Estado == 1 &&r.IdExamen == examen.Id) != null)
                        exUsua = db.ExamenUsuario.FirstOrDefault(r => r.IdEjecutivo == user.UserId && r.Estado == 1 && r.IdExamen == examen.Id);
                    else
                    {
                        exUsua = new ExamenUsuario();
                        exUsua.IdEjecutivo = user.UserId;
                        exUsua.Estado = 0;
                        exUsua.IdExamen = examen.Id;
                        exUsua.IdPreguntaActual = 0;
                        db.ExamenUsuario.Add(exUsua);
                        db.SaveChanges();
                    }
                }
                if (FechaInicioEjecucion == null)
                {
                    if (exUsua.Estado == 1)
                        FechaInicioEjecucion = exUsua.FechaInicio;
                    else
                        FechaInicioEjecucion = TimeZoneInfo.ConvertTime(DateTime.Now, TimeZoneInfo.FindSystemTimeZoneById("SA Pacific Standard Time"));
                }

                //Hack para bindear---------------------
                foreach (var item in examen.Pregunta)
                    item.Respuesta.ToList();
                //--------------------------------------
                //Para visualizar las marcadas (en caso existan) de la primera respuesta
                //Pregunta primera = examen.Pregunta.ElementAt(0);
                Pregunta primera = exUsua.IdPreguntaActual == 0 ? examen.Pregunta.ElementAt(0) : examen.Pregunta.First(r => r.Id == exUsua.IdPreguntaActual);
                if (db.PreguntaUsuario.FirstOrDefault(r => r.IdPregunta == primera.Id && r.IdExamenUsuario == exUsua.Id) != null)
                    foreach (var rpta in primera.Respuesta)
                        rpta.Marcada = db.RespuestaUsuario.First(r => r.IdRespuesta == rpta.Id && r.IdExamenUsuario == exUsua.Id).Marcada;
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
                    Session.Add("sIdExamenUsuario", exUsua.Id);
                    ModelState.Clear();
                    examen.FechaEjecucion = FechaInicioEjecucion.Value;
                    return View(examen);
                }
                else
                    return HttpNotFound();

            }

        }

        [HttpPost]
        [Authorize]
        public ActionResult Give(Pregunta pregunta, TimeSpan TiempoTranscurrido, int IdAster = 0, string FechaAsesoria = "")
        {
            Pregunta current = db.Pregunta.FirstOrDefault(r => r.Id == pregunta.Id);
            UserProfile user = db.UserProfile.First(r => r.UserName == User.Identity.Name);
            int idExamenUsuario = Convert.ToInt32(Session["sIdExamenUsuario"]);
            if (current != null)
                SavePregunta(current, pregunta, user);
            var examenHelp = db.Examen.FirstOrDefault(r => r.Id == pregunta.IdExamen);
            if (examenHelp != null)
            {
                //ExamenUsuario exUsuario = db.ExamenUsuario.FirstOrDefault(r => r.IdExamen == pregunta.IdExamen && r.IdUsuario == user.UserId);
                ExamenUsuario exUsuario = db.ExamenUsuario.FirstOrDefault(r => r.Id == idExamenUsuario);

                if (exUsuario != null)
                {
                    decimal puntajeTotal = 0;
                    //var preguntas = db.PreguntaUsuario.Where(r => r.Pregunta.Examen.Id == pregunta.IdExamen && r.IdUsuario == user.UserId);
                    var preguntas = db.PreguntaUsuario.Where(r => r.IdExamenUsuario == idExamenUsuario);
                    foreach (var preg in preguntas)
                        puntajeTotal += Convert.ToDecimal(preg.Puntaje);
                    exUsuario.Puntaje = puntajeTotal;
                    exUsuario.FechaTermino = TimeZoneInfo.ConvertTime(DateTime.Now, TimeZoneInfo.FindSystemTimeZoneById("SA Pacific Standard Time")); ;
                    exUsuario.Tiempo = TiempoTranscurrido;
                    exUsuario.Estado = 2;
                    if (examenHelp.IdTipo == 2)
                    {
                        exUsuario.IdAster = IdAster;
                        if (FechaAsesoria != "")
                        {
                            string[] dates = FechaAsesoria.Split('/');
                            DateTime dtFechaAsesoria = new DateTime(Convert.ToInt32(dates[2]), Convert.ToInt32(dates[1]), Convert.ToInt32(dates[0]));
                            exUsuario.FechaInicio = dtFechaAsesoria;
                        }
                    }
                    try
                    {
                        db.SaveChanges();
                        //return RedirectToAction("Result", new { idExamen = exUsuario.IdExamen, idUsuario = exUsuario.IdUsuario });
                        return RedirectToAction("Result", new { IdExamenUsuario = idExamenUsuario });
                    }
                    catch
                    {
                        return RedirectToAction("Give", new { id = examenHelp.Id });
                    }
                }
                else
                    return HttpNotFound();
            }
            else
                return HttpNotFound();
        }

        //public ActionResult Result(int idExamen, int idUsuario)
        public ActionResult Result(int IdExamenUsuario)
        {
            //var exUsuario = db.ExamenUsuario.FirstOrDefault(r => r.IdExamen == idExamen && r.IdUsuario == idUsuario);
            var exUsuario = db.ExamenUsuario.FirstOrDefault(r => r.Id == IdExamenUsuario);
            if (exUsuario != null)
            {
                //Para visualizar las marcadas (en caso existan) de la primera respuesta
                Pregunta primera = exUsuario.Examen.Pregunta.ElementAt(0);
                //if (db.PreguntaUsuario.FirstOrDefault(r => r.IdPregunta == primera.Id && r.IdUsuario == idUsuario) != null)
                if (db.PreguntaUsuario.FirstOrDefault(r => r.IdPregunta == primera.Id && r.IdExamenUsuario == IdExamenUsuario) != null)
                {
                    foreach (var rpta in primera.Respuesta)
                    {
                        //rpta.Marcada = db.RespuestaUsuario.First(r => r.IdRespuesta == rpta.Id && r.IdUsuario == idUsuario).Marcada;
                        rpta.Marcada = db.RespuestaUsuario.First(r => r.IdRespuesta == rpta.Id && r.IdExamenUsuario == IdExamenUsuario).Marcada;
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

        public ActionResult ChangeDate(int id = 0)
        {
            Examen ex = db.Examen.Find(id);
            if (ex != null)
                return PartialView("ChangeDateExamenPartial", ex);
            else
                return HttpNotFound();
        }

        [HttpPost]
        public ActionResult ChangeDate(Examen examen)
        {
            Examen ex = db.Examen.Find(examen.Id);
            if (ex != null)
            {
                db.Entry(examen).State = EntityState.Detached;
                ex.FechaEjecucion = examen.FechaEjecucion;
                db.SaveChanges();
            }
            return RedirectToAction("Index");
        }

        public ActionResult Publish(int id = 0)
        {
            Examen ex = db.Examen.Find(id);
            if (ex != null)
                return PartialView("PublishExamenPartial", ex);
            else
                return HttpNotFound();
        }

        [HttpPost]
        public ActionResult PublishFinal(int id = 0)
        {
            Examen examen = db.Examen.Find(id);
            if (examen != null)
            {
                if (examen.IdTipo == 1)
                {
                    List<UserProfile> usuariosSolucion = db.UserProfile.Where(r => r.Linea.Producto.Any(p => p.Id == examen.IdProducto)).ToList();
                    foreach (UserProfile u in usuariosSolucion)
                    {
                        ExamenUsuario nuevoExamenUsuario = new ExamenUsuario() { IdExamen = examen.Id, IdUsuario = u.UserId, Estado = 0, IdPreguntaActual = 0 };
                        db.ExamenUsuario.Add(nuevoExamenUsuario);
                    }
                    //enviarAlertaPublicacion(usuariosSolucion, examen);
                }
                examen.IdEstado = 3;
                db.SaveChanges();
            }
            return RedirectToAction("Index");
        }

        private void enviarAlertaPublicacion(List<UserProfile> users, Examen examen)
        {
            var msg = new MailMessage();
            msg.From = new MailAddress("unimed.learning@gmail.com");
            foreach (UserProfile user in users)
            {
                if (user.Mail != null)
                {
                    msg.To.Add(new MailAddress(user.Mail));
                }
            }
            msg.Subject = string.Format("Examen {0} disponible", examen.Titulo);
            msg.Body = string.Format("Le comunicamos que el examen {0} se encuentra disponible para su ejecución el día {1}.", examen.Titulo, examen.FechaEjecucion.Value.ToShortDateString());
            var client = new System.Net.Mail.SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential("unimed.learning@gmail.com", "learningapp")
            };
            client.Send(msg);
        }

        public ActionResult Clone(int id = 0)
        {
            Examen ex = db.Examen.Find(id);
            if (ex != null)
            {
                Session.Remove("ListaPreguntas");
                Examen modelo = new Examen() { IdTipo = ex.IdTipo, IdProducto = ex.IdProducto, FechaEjecucion = ex.FechaEjecucion, PuntajeMaximo = ex.PuntajeMaximo, TiempoMaximo = ex.TiempoMaximo, Titulo = ex.Titulo };
                List<Pregunta> listaPreguntasTemp = ex.Pregunta.ToList();
                for (int i = 0; i < listaPreguntasTemp.Count; i++)
                {
                    Pregunta prg = new Pregunta()
                    {
                        IdTipoPregunta = listaPreguntasTemp[i].IdTipoPregunta,
                        Orden = listaPreguntasTemp[i].Orden,
                        Puntaje = listaPreguntasTemp[i].Puntaje,
                        Texto = listaPreguntasTemp[i].Texto,
                        CantidadRespuesta = listaPreguntasTemp[i].CantidadRespuesta
                    };

                    List<Respuesta> listaRespuestasTemp = listaPreguntasTemp[i].Respuesta.ToList();
                    for (int j = 0; j < listaRespuestasTemp.Count; j++)
                    {
                        Respuesta rpta = new Respuesta()
                        {
                            EsCorrecta = listaRespuestasTemp[j].EsCorrecta,
                            Orden = listaRespuestasTemp[j].Orden,
                            Marcada = listaRespuestasTemp[j].Marcada,
                            Puntaje = listaRespuestasTemp[j].Puntaje,
                            Texto = listaRespuestasTemp[j].Texto
                        };
                        prg.Respuesta.Add(rpta);
                    }
                    ListaPreguntas.Add(prg);
                }
                modelo.Pregunta = ListaPreguntas;
                return View("Create", modelo);
            }
            return HttpNotFound();
        }

        public ActionResult Create(int id = 0, int ite = 0)
        {
            ViewBag.IdEstado = new SelectList(db.Estado, "Id", "Nombre");
            Session.Remove("ListaPreguntas");
            Examen ex = db.Examen.Find(id) != null ? db.Examen.First(r => r.Id == id) : new Examen();
            //Hack para bindear---------------------
            foreach (var item in ex.Pregunta)
                item.Respuesta.ToList();
            //-------------------------------------------
            ListaPreguntas = new List<Pregunta>();
            Examen ex2 = db.Examen.Find(id);
            if (ex2 != null)
            {
                List<Pregunta> listaPreguntasTemp = ex2.Pregunta.ToList();
                for (int i = 0; i < listaPreguntasTemp.Count; i++)
                {
                    Pregunta prg = new Pregunta()
                    {
                        IdTipoPregunta = listaPreguntasTemp[i].IdTipoPregunta,
                        Orden = listaPreguntasTemp[i].Orden,
                        Puntaje = listaPreguntasTemp[i].Puntaje,
                        Texto = listaPreguntasTemp[i].Texto,
                        CantidadRespuesta = listaPreguntasTemp[i].CantidadRespuesta
                    };

                    List<Respuesta> listaRespuestasTemp = listaPreguntasTemp[i].Respuesta.ToList();
                    for (int j = 0; j < listaRespuestasTemp.Count; j++)
                    {
                        Respuesta rpta = new Respuesta()
                        {
                            EsCorrecta = listaRespuestasTemp[j].EsCorrecta,
                            Orden = listaRespuestasTemp[j].Orden,
                            Marcada = listaRespuestasTemp[j].Marcada,
                            Puntaje = listaRespuestasTemp[j].Puntaje,
                            Texto = listaRespuestasTemp[j].Texto
                        };
                        prg.Respuesta.Add(rpta);
                    }
                    ListaPreguntas.Add(prg);
                }
            }

            ViewBag.ListaPreguntas = ListaPreguntas;
            ex.IdTipo = id == 0 ? ite : ex.IdTipo;
            ex.Titulo = id == 0 ? db.TipoExamen.First(r => r.Id == ite).Nombre : ex.Titulo;
            return View(ex);
        }

        public ActionResult GetProductsByLine(int id)
        {
            var result = db.Producto.Where(r => r.Linea.Any(l => l.Id == id));

            //build JSON.  
            var modelResult = from m in result
                              select new
                              {
                                  value = m.Id,
                                  text = m.Nombre
                              };

            return Json(modelResult, JsonRequestBehavior.AllowGet);
        }

        public ActionResult GetAstersByLine(int id)
        {
            var result = db.UserProfile.Where(r => r.webpages_Roles.Any(m => m.RoleId == 2)).Where(r => r.IdLinea == id);

            var modelResult = (from m in result
                               select m).AsEnumerable().Select(x => new
                              {
                                  value = x.UserId,
                                  text = string.Format("{0} {1}", x.FirstName, x.LastName)
                              });

            return Json(modelResult, JsonRequestBehavior.AllowGet);
        }

        //
        // POST: /Examen/Create

        [HttpPost]
        public ActionResult Create(Examen examen, int idPuntaje = 0)
        {
            examen.Pregunta = ListaPreguntas;
            if (ModelState.IsValid)
            {
                examen.FechaCreacion = TimeZoneInfo.ConvertTime(DateTime.Now, TimeZoneInfo.FindSystemTimeZoneById("SA Pacific Standard Time"));
                examen.IdEstado = 1;
                PuntajeAsesoria puntaje = db.PuntajeAsesoria.Find(idPuntaje);
                if (examen.Id > 0)
                {
                    if (puntaje == null)
                        puntaje = db.PuntajeAsesoria.FirstOrDefault(r => r.IdExamen == examen.Id);
                    Examen exOriginal = db.Examen.Find(examen.Id);
                    List<Pregunta> preguntasOriginal = exOriginal.Pregunta.ToList();
                    foreach (Pregunta p in preguntasOriginal)
                    {
                        List<Respuesta> respuestasOriginal = p.Respuesta.ToList();
                        foreach (Respuesta r in respuestasOriginal)
                            db.Respuesta.Remove(r);
                        db.Pregunta.Remove(p);
                    }
                    db.Examen.Remove(exOriginal);
                }
                db.Examen.Add(examen);
                db.SaveChanges();
                if (examen.IdTipo == 2)
                {
                    if (puntaje != null)
                        puntaje.IdExamen = examen.Id;
                    else
                    {
                        puntaje = new PuntajeAsesoria() { D = 60, A = 70, B = 85, S = 100, IdExamen = examen.Id };
                        db.PuntajeAsesoria.Add(puntaje);
                    }
                    foreach (Pregunta p in examen.Pregunta)
                    {
                        p.Puntaje = puntaje.S;
                        foreach (Respuesta r in p.Respuesta)
                        {
                            switch (r.Texto)
                            {
                                case "D":
                                    r.Puntaje = puntaje.D;
                                    break;
                                case "A":
                                    r.Puntaje = puntaje.A;
                                    break;
                                case "B":
                                    r.Puntaje = puntaje.B;
                                    break;
                                case "S":
                                    r.Puntaje = puntaje.S;
                                    break;
                            }
                        }
                    }
                    db.SaveChanges();
                }
                return RedirectToAction("Index");
            }

            //ViewBag.IdEstado = new SelectList(db.Estado, "Id", "Nombre", examen.IdEstado);
            return View(examen);
        }

        [HttpPost]
        public ActionResult DeletePregunta(int orden = 0)
        {
            if (orden == 0)
            {
                return HttpNotFound();
            }
            ListaPreguntas.Remove(ListaPreguntas.First(r => r.Orden == orden));
            for (int i = 1; i <= ListaPreguntas.Count; i++)
                ListaPreguntas[i - 1].Orden = i;
            return PartialView("PreguntaPartial", ListaPreguntas);
        }

        [HttpPost]
        public ActionResult DeleteRespuesta(int indexParent, int indexRespuesta = -1)
        {
            if (indexRespuesta == -1)
            {
                return HttpNotFound();
            }
            indexParent = indexParent - 1;
            Respuesta rptaEliminar = ListaPreguntas[indexParent].Respuesta.ToList()[indexRespuesta];
            ListaPreguntas[indexParent].Respuesta.Remove(rptaEliminar);

            for (int i = 1; i <= ListaPreguntas[indexParent].Respuesta.Count; i++)
                ListaPreguntas[indexParent].Respuesta.ToList()[i - 1].Orden = i;
            return PartialView("RespuestaPartial", ListaPreguntas[indexParent]);
        }

        [HttpPost]
        public ActionResult CreatePregunta(CreatePreguntaViewModel createPregunta)
        {
            //(ViewBag.ListaPreguntas as List<Pregunta>).Add(pregunta);
            //return View(pregunta);
            //var tipoPreguntaTemp = new TestsAppBDEntities().TipoPregunta.FirstOrDefault(r => r.Id == preg.IdTipoPregunta);
            //TipoPregunta nuevoTipoPregunta = new TipoPregunta() { Id = tipoPreguntaTemp.Id, Nombre = tipoPreguntaTemp.Nombre, NombreControl = tipoPreguntaTemp.NombreControl };
            ////preg.TipoPregunta = nuevoTipoPregunta;
            //preg.TipoPregunta = db.TipoPregunta.FirstOrDefault(r => r.Id == preg.IdTipoPregunta);
            decimal puntajePrev = 0;
            Pregunta preg = createPregunta.pregunta;
            int puntajeExamen = createPregunta.puntajeExamen;
            foreach (Pregunta p in ListaPreguntas)
                puntajePrev += p.Puntaje == null ? 0 : p.Puntaje.Value;
            Pregunta pregActualizar = null;
            if (preg.Orden != null)
                pregActualizar = ListaPreguntas.Where(r => r.Orden == preg.Orden).Single();
            if (pregActualizar != null)
                puntajePrev -= pregActualizar.Puntaje == null ? 0 : pregActualizar.Puntaje.Value;
            if (puntajePrev + (preg.Puntaje == null ? 0 : preg.Puntaje) <= puntajeExamen || createPregunta.idTipoExamen == 2)
            {
                if (pregActualizar == null)
                {
                    preg.IdTipoPregunta = 1;
                    if (createPregunta.idTipoExamen != 2)
                    {
                        var tipoPreg = db.TipoPregunta.First(r => r.Id == preg.IdTipoPregunta);
                        if (preg.CantidadRespuesta == null)
                            preg.CantidadRespuesta = tipoPreg.NombreControl.Equals("Textarea") ? 1 : 0;
                    }
                    else
                    {
                        preg.IdTipoPregunta = 9;
                        preg.CantidadRespuesta = 1;
                        preg.Puntaje = 100;
                        preg.Respuesta.Add(new Respuesta() { Texto = "D", EsCorrecta = 0, Marcada = false, Puntaje = 60 });
                        preg.Respuesta.Add(new Respuesta() { Texto = "A", EsCorrecta = 0, Marcada = false, Puntaje = 70 });
                        preg.Respuesta.Add(new Respuesta() { Texto = "B", EsCorrecta = 0, Marcada = false, Puntaje = 85 });
                        preg.Respuesta.Add(new Respuesta() { Texto = "S", EsCorrecta = 0, Marcada = false, Puntaje = 100 });
                    }
                    preg.Orden = ListaPreguntas.Count + 1;
                    ListaPreguntas.Add(preg);
                }
                else
                {
                    pregActualizar.Texto = preg.Texto;
                    pregActualizar.Puntaje = preg.Puntaje;
                }
                ViewBag.ListaPreguntas = ListaPreguntas;
                return PartialView("PreguntaPartial", ListaPreguntas);
            }
            else
            {
                string msg = "Puntaje inválido";
                return Json(new { errorMsg = msg });
            }
        }

        public ActionResult EditarPreguntaPrev(int id, int idTipoExamen)
        {
            if (id >= 0)
            {
                var pregunta = ListaPreguntas[id];
                if (pregunta != null)
                    return PartialView("PreguntaPopUpPartial", new CreatePreguntaViewModel() { pregunta = pregunta, idTipoExamen = idTipoExamen });
                else
                    return PartialView("PreguntaPopUpPartial", null);
            }
            else
                return PartialView("PreguntaPopUpPartial", new CreatePreguntaViewModel() { pregunta = new Pregunta(), idTipoExamen = idTipoExamen });
        }

        [HttpPost]
        public ActionResult CreateRespuesta(string texto, int indexParent, IEnumerable<int> respuestas)
        {
            indexParent = indexParent - 1;
            int idtipoPreg = ListaPreguntas[indexParent].IdTipoPregunta.Value;
            var tipoPreg = db.TipoPregunta.First(r => r.Id == idtipoPreg);
            Respuesta rpta = new Respuesta { Texto = texto };
            rpta.EsCorrecta = tipoPreg.NombreControl.Equals("Textarea") ? 1 : 0;
            rpta.Orden = ListaPreguntas[indexParent].Respuesta.Count + 1;
            ListaPreguntas[indexParent].Respuesta.Add(rpta);
            ViewBag.ListaPreguntas = ListaPreguntas;
            return PartialView("RespuestaPartial", ListaPreguntas[indexParent]);
        }

        [HttpPost]
        public ActionResult ChangeStateRespuesta(int indexRespuesta, int indexPregunta, bool ischecked)
        {
            indexPregunta = indexPregunta - 1;
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

        public ActionResult ConfigurarPuntajePrev(int idExamen = 0, int id = 0)
        {
            PuntajeAsesoria modelo;
            if (id == 0 && idExamen != 0)
                modelo = db.PuntajeAsesoria.FirstOrDefault(r => r.IdExamen == idExamen);
            else
                modelo = db.PuntajeAsesoria.Find(id);
            if (modelo == null)
                modelo = new PuntajeAsesoria() { D = 60, A = 70, B = 85, S = 100 };
            ModelState.Clear();
            return PartialView("ChangeScorePartial", modelo);
        }

        [HttpPost]
        public ActionResult ConfigurarPuntaje(PuntajeAsesoria puntaje)
        {
            PuntajeAsesoria modelo = db.PuntajeAsesoria.FirstOrDefault(r => r.Id == puntaje.Id);
            if (modelo == null)
                db.PuntajeAsesoria.Add(puntaje);
            else
            {
                db.Entry(modelo).State = EntityState.Detached;
                db.Entry(puntaje).State = EntityState.Modified;
            }
            db.SaveChanges();
            return Json(puntaje, JsonRequestBehavior.AllowGet);
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