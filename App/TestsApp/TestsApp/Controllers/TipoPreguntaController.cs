using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TestsApp.Models;

namespace TestsApp.Controllers
{
    public class TipoPreguntaController : Controller
    {
        private TestsAppBDEntities db = new TestsAppBDEntities();

        //
        // GET: /TipoPregunta/

        public ActionResult Index()
        {
            return View(db.TipoPregunta.ToList());
        }

        //
        // GET: /TipoPregunta/Details/5

        public ActionResult Details(int id = 0)
        {
            TipoPregunta tipopregunta = db.TipoPregunta.Find(id);
            if (tipopregunta == null)
            {
                return HttpNotFound();
            }
            return View(tipopregunta);
        }

        //
        // GET: /TipoPregunta/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /TipoPregunta/Create

        [HttpPost]
        public ActionResult Create(TipoPregunta tipopregunta)
        {
            if (ModelState.IsValid)
            {
                db.TipoPregunta.Add(tipopregunta);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tipopregunta);
        }

        //
        // GET: /TipoPregunta/Edit/5

        public ActionResult Edit(int id = 0)
        {
            TipoPregunta tipopregunta = db.TipoPregunta.Find(id);
            if (tipopregunta == null)
            {
                return HttpNotFound();
            }
            return View(tipopregunta);
        }

        //
        // POST: /TipoPregunta/Edit/5

        [HttpPost]
        public ActionResult Edit(TipoPregunta tipopregunta)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tipopregunta).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tipopregunta);
        }

        //
        // GET: /TipoPregunta/Delete/5

        public ActionResult Delete(int id = 0)
        {
            TipoPregunta tipopregunta = db.TipoPregunta.Find(id);
            if (tipopregunta == null)
            {
                return HttpNotFound();
            }
            return View(tipopregunta);
        }

        //
        // POST: /TipoPregunta/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            TipoPregunta tipopregunta = db.TipoPregunta.Find(id);
            db.TipoPregunta.Remove(tipopregunta);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}