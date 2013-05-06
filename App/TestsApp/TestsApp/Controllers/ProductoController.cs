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
    [Authorize]
    [InitializeSimpleMembership]
    public class ProductoController : Controller
    {
        private TestsAppBDEntities db = new TestsAppBDEntities();

        //
        // GET: /Producto/

        public ActionResult Index()
        {
            var producto = db.Producto.Include(p => p.Linea);
            return View(producto.ToList());
        }

        //
        // GET: /Producto/Details/5

        public ActionResult Details(int id = 0)
        {
            Producto producto = db.Producto.Find(id);
            if (producto == null)
            {
                return HttpNotFound();
            }
            return View(producto);
        }

        //
        // GET: /Producto/Create

        public ActionResult Create()
        {
            ViewBag.IdLinea = new SelectList(db.Linea, "Id", "Nombre");
            return View();
        }

        //
        // POST: /Producto/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Producto producto, string[] IdLinea = null)
        {
            if (ModelState.IsValid)
            {
                db.Producto.Add(producto);
                if (IdLinea != null)
                    foreach (string s in IdLinea)
                        producto.Linea.Add(db.Linea.AsEnumerable().First(l => l.Id == Convert.ToInt32(s)));
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdLinea = new SelectList(db.Linea, "Id", "Nombre", producto.IdLinea);
            return View(producto);
        }

        //
        // GET: /Producto/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Producto producto = db.Producto.Find(id);
            if (producto == null)
            {
                return HttpNotFound();
            }
            List<string> listaLineas = new List<string>();
            foreach (var s in producto.Linea)
            {
                string idLinea = s.Id.ToString();
                listaLineas.Add(idLinea);
            }
            ViewBag.IdLinea = listaLineas.ToArray();
            return View(producto);
        }

        //
        // POST: /Producto/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Producto producto, string[] IdLinea = null)
        {
            if (ModelState.IsValid)
            {
                Producto aux = db.Producto.Find(producto.Id);
                aux.Linea.Clear();
                db.SaveChanges();
                if (IdLinea != null)
                    foreach (string s in IdLinea)
                        aux.Linea.Add(db.Linea.AsEnumerable().First(l => l.Id == Convert.ToInt32(s)));
                aux.Nombre = producto.Nombre;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdLinea = new SelectList(db.Linea, "Id", "Nombre", producto.IdLinea);
            return View(producto);
        }

        //
        // GET: /Producto/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Producto producto = db.Producto.Find(id);
            if (producto == null)
            {
                return HttpNotFound();
            }
            return View(producto);
        }

        //
        // POST: /Producto/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Producto producto = db.Producto.Find(id);
            db.Producto.Remove(producto);
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