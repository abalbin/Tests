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
    public class TituloController : Controller
    {
        private TestsAppBDEntities db = new TestsAppBDEntities();

        //
        // GET: /Titulo/

        public ActionResult Index()
        {
            return View(db.NombreTabla.ToList());
        }

        //
        // GET: /Titulo/Details/5

        public ActionResult Details(int id = 0)
        {
            NombreTabla nombretabla = db.NombreTabla.Find(id);
            if (nombretabla == null)
            {
                return HttpNotFound();
            }
            return View(nombretabla);
        }

        //
        // GET: /Titulo/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Titulo/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(NombreTabla nombretabla)
        {
            if (ModelState.IsValid)
            {
                db.NombreTabla.Add(nombretabla);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(nombretabla);
        }

        //
        // GET: /Titulo/Edit/5

        public ActionResult Edit(int id = 0)
        {
            NombreTabla nombretabla = db.NombreTabla.Find(id);
            if (nombretabla == null)
            {
                return HttpNotFound();
            }
            return View(nombretabla);
        }

        //
        // POST: /Titulo/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(NombreTabla nombretabla)
        {
            if (ModelState.IsValid)
            {
                db.Entry(nombretabla).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(nombretabla);
        }

        //
        // GET: /Titulo/Delete/5

        public ActionResult Delete(int id = 0)
        {
            NombreTabla nombretabla = db.NombreTabla.Find(id);
            if (nombretabla == null)
            {
                return HttpNotFound();
            }
            return View(nombretabla);
        }

        //
        // POST: /Titulo/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            NombreTabla nombretabla = db.NombreTabla.Find(id);
            db.NombreTabla.Remove(nombretabla);
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