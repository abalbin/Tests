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
            if (!User.IsInRole("Administrador"))
            {
                UserProfile usuario = db.UserProfile.Where(r => r.UserName == User.Identity.Name).First();
                return View(db.Documento.Where(r => r.Linea.Any(l => l.Id == usuario.IdLinea)).ToList());
            }
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
        public ActionResult Create(Documento documento, HttpPostedFileBase file, string[] IdLinea = null)
        {
            if (ModelState.IsValid)
            {
                // Verify that the user selected a file
                if (file != null && file.ContentLength > 0)
                {
                    if (validarArchivo(Path.GetExtension(file.FileName)))
                    {
                        // extract only the fielname
                        var fileName = Path.GetFileName(file.FileName);
                        // store the file inside ~/App_Data/uploads folder
                        var path = Path.Combine(Server.MapPath("~/Content/Documentos"), fileName);
                        file.SaveAs(path);
                        documento.Ruta = fileName;
                        if (IdLinea != null)
                            foreach (string s in IdLinea)
                                documento.Linea.Add(db.Linea.AsEnumerable().First(l => l.Id == Convert.ToInt32(s)));

                        db.Documento.Add(documento);
                        db.SaveChanges();
                        return RedirectToAction("Index");
                    }
                    else
                        ModelState.AddModelError("invalido", "El archivo seleccionado no es válido. Los archivos válidos son: pdf, doc, docx, xls, xlsx, jpeg, png.");
                }
                else
                    ModelState.AddModelError("empty", "No ha seleccionado ningún archivo");
                
            }
            
            return View(documento);
        }

        private bool validarArchivo(string content)
        {
            switch (content)
            {
                case ".pdf":
                    return true;
                case ".doc":
                case ".docx":
                    return true;
                case ".xls":
                case ".xlsx":
                    return true;
                case ".jpeg":
                case ".jpg":
                    return true;
                case ".png":
                    return true;
                default:
                    return false;
            }
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
                string[] cadena = filename.Split('.');
                string ext = cadena[1];
                string content = string.Empty;
                switch (ext)
                {
                    case "pdf":
                        content = "application/pdf";
                        break;
                    case "doc":
                    case "docx":
                        content = "application/word";
                        break;
                    case "xls":
                    case "xlsx":
                        content = "application/excel";
                        break;
                    case "jpeg":
                    case "jpg":
                        content = "image/jpeg";
                        break;
                    case "png":
                        content = "image/png";
                        break;
                }
                var path = Path.Combine(Server.MapPath("~/Content/Documentos"), filename);
                return File(path, content, filename);
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