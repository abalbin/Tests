using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using TestsApp.Models;

namespace TestsApp.Controllers
{
    public class ExamenController : Controller
    {
        private TestsAppBDEntities db = new TestsAppBDEntities();

        //
        // GET: /Examen/

        public ActionResult Index()
        {
            var examen = db.Examen.Include(e => e.Estado);
            return View(examen.ToList());
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

        //
        // GET: /Examen/Create

        public ActionResult Create()
        {
            ViewBag.IdEstado = new SelectList(db.Estado, "Id", "Nombre");
            Session.Remove("ListaPreguntas");
            ListaPreguntas = new List<Pregunta>();
            ViewBag.ListaPreguntas = ListaPreguntas;
            return View();
        }

        //
        // POST: /Examen/Create

        [HttpPost]
        public ActionResult Create(Examen examen)
        {
            if (ModelState.IsValid)
            {
                db.Examen.Add(examen);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdEstado = new SelectList(db.Estado, "Id", "Nombre", examen.IdEstado);
            return View(examen);
        }

        [HttpPost]
        public ActionResult CreatePregunta(Pregunta preg)
        {
            //(ViewBag.ListaPreguntas as List<Pregunta>).Add(pregunta);
            //return View(pregunta);
            ListaPreguntas.Add(preg);
            ViewBag.ListaPreguntas = ListaPreguntas;
            return PartialView("PreguntaPartial", ListaPreguntas);
        }

        [HttpPost]
        public ActionResult CreateRespuesta(string texto, int indexParent)
        {
            ListaPreguntas[indexParent].Respuesta.Add(new Respuesta { Texto = texto });
            ViewBag.ListaPreguntas = ListaPreguntas;
            return PartialView("RespuestaPartial", ListaPreguntas[indexParent]);
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
            get {
                if (Session["ListaPreguntas"] == null)
                {
                    Session["ListaPreguntas"] = new List<Pregunta>();
                    return Session["ListaPreguntas"] as List<Pregunta>;
                }
                else
                    return Session["ListaPreguntas"] as List<Pregunta>;
            }
            set {
                Session["ListaPreguntas"] = value;
            }
        }
    }
}