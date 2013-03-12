using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TestsApp.Filters;
using TestsApp.Models;

namespace TestsApp.Controllers
{
    [InitializeSimpleMembership]
    public class LineaController : Controller
    {
        private TestsAppBDEntities db = new TestsAppBDEntities();

        //
        // GET: /Linea/

        public ActionResult Index()
        {
            return View(db.Linea.ToList());
        }

        //
        // GET: /Linea/Details/5

        public ActionResult Details(int id = 0)
        {
            Linea linea = db.Linea.Find(id);
            if (linea == null)
            {
                return HttpNotFound();
            }
            return View(linea);
        }

        //
        // GET: /Linea/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Linea/Create

        [HttpPost]
        public ActionResult Create(Linea linea)
        {
            if (ModelState.IsValid)
            {
                db.Linea.Add(linea);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(linea);
        }

        //
        // GET: /Linea/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Linea linea = db.Linea.Find(id);
            if (linea == null)
            {
                return HttpNotFound();
            }
            return View(linea);
        }

        //
        // POST: /Linea/Edit/5

        [HttpPost]
        public ActionResult Edit(Linea linea)
        {
            if (ModelState.IsValid)
            {
                db.Entry(linea).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(linea);
        }

        //
        // GET: /Linea/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Linea linea = db.Linea.Find(id);
            if (linea == null)
            {
                return HttpNotFound();
            }
            return View(linea);
        }

        //
        // POST: /Linea/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            Linea linea = db.Linea.Find(id);
            db.Linea.Remove(linea);
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