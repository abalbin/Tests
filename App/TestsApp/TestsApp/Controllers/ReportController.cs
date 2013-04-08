using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TestsApp.Filters;
using TestsApp.Models;

namespace TestsApp.Controllers
{
    [Authorize]
    [InitializeSimpleMembership]
    public class ReportController : Controller
    {
        private TestsAppBDEntities db = new TestsAppBDEntities();
        //
        // GET: /Report/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult AsesoriaTerreno()
        {
            var q = db.ExamenUsuario.Where(r => r.Examen.IdTipo == 2);
            return View(q.ToList());
        }

    }
}
