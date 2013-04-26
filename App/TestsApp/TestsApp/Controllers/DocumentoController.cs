using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TestsApp.Filters;
using TestsApp.Models;

namespace TestsApp.Controllers
{
    [InitializeSimpleMembership]
    public class DocumentoController : Controller
    {
        private TestsAppBDEntities db = new TestsAppBDEntities();

        //
        // GET: /Documento/

        public ActionResult Index()
        {
            return View(db.Documento.ToList());
        }

        //
        // GET: /Documento/Details/5

        public ActionResult Details(int id = 0)
        {
            Documento documento = db.Documento.Find(id);
            if (documento == null)
            {
                return HttpNotFound();
            }
            return View(documento);
        }

        //
        // GET: /Documento/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Documento/Create

        [HttpPost]
        public ActionResult Create(Documento documento, HttpPostedFileBase file)
        {
            if (ModelState.IsValid)
            {
                // Verify that the user selected a file
                if (file != null && file.ContentLength > 0)
                {
                    // extract only the fielname
                    var fileName = Path.GetFileName(file.FileName);
                    // store the file inside ~/App_Data/uploads folder
                    var path = Path.Combine(Server.MapPath("~/Content/Documentos"), fileName);
                    file.SaveAs(path);
                    documento.Ruta = fileName;
                }
                db.Documento.Add(documento);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(documento);
        }

        //
        // GET: /Documento/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Documento documento = db.Documento.Find(id);
            if (documento == null)
            {
                return HttpNotFound();
            }
            return View(documento);
        }

        //
        // POST: /Documento/Edit/5

        [HttpPost]
        public ActionResult Edit(Documento documento)
        {
            if (ModelState.IsValid)
            {
                db.Entry(documento).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(documento);
        }

        //
        // GET: /Documento/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Documento documento = db.Documento.Find(id);
            if (documento == null)
            {
                return HttpNotFound();
            }
            return View(documento);
        }

        //
        // POST: /Documento/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            Documento documento = db.Documento.Find(id);
            db.Documento.Remove(documento);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public FileResult Download(int id)
        {
            var documento = db.Documento.Find(id);
            if (documento != null)
            {
                var filename = documento.Ruta;
                var path = Path.Combine(Server.MapPath("~/Content/Documentos"), filename);
                return File(path, "application/pdf");
            }
            return null;
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}