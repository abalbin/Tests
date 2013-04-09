using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Script.Serialization;
using TestsApp.Filters;
using TestsApp.Models;
using TestsApp.Models.ViewModels;

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

        public ActionResult DrawChart(int idEjecutivo, int idAster)
        {
            ChartViewModel cvm = new ChartViewModel();
            List<HighChartsSeries> allSeries = new List<HighChartsSeries>();
            List<HighChartsPoint> allPoint = new List<HighChartsPoint>();
            List<string> allCategories = new List<string>();

            var listaAsesorias = db.ExamenUsuario.Where(r => r.IdEjecutivo == idEjecutivo && r.IdAster == idAster && r.Examen.IdTipo == 2).ToList();
            var ejecutivo = db.UserProfile.First(r=>r.UserId == idEjecutivo);
            var aster = db.UserProfile.First(r=>r.UserId == idAster);

            for (int i = 0; i < listaAsesorias.Count; i++)
            {
                allCategories.Add(listaAsesorias[i].FechaInicio.ToString());
                allPoint.Add(new HighChartsPoint { x = i, y = Convert.ToDouble(listaAsesorias[i].Puntaje.Value) });
            }

            //allCategories.Add("Ene");
            //allCategories.Add("Feb");
            //allCategories.Add("Mar");
            //allCategories.Add("Abr");

            //allPoint.Add(new HighChartsPoint { x = 0, y = 1 });
            //allPoint.Add(new HighChartsPoint { x = 1, y = 2 });
            //allPoint.Add(new HighChartsPoint { x = 2, y = 3 });
            //allPoint.Add(new HighChartsPoint { x = 3, y = 4 });

            allSeries.Add(new HighChartsSeries
            {
                data = new List<HighChartsPoint>(allPoint),
                name = "Series 2",
                type = "line"
            });

            cvm.allSeries = allSeries;
            cvm.xAxis = new HighChartAxis { categories = new List<string>(allCategories), title = new HighChartTitle() { text = "Fecha de Asesoría" } };
            cvm.yAxis = new HighChartAxis { title = new HighChartTitle() { text = "Puntaje" } };
            cvm.title = new HighChartTitle() { text = string.Format("Historial de {0} {1}", aster.FirstName, aster.LastName) };
            cvm.subtitle = new HighChartTitle() { text = string.Format("Asesoría tomada por {0} {1}", ejecutivo.FirstName, ejecutivo.LastName) };
            return Json(cvm, JsonRequestBehavior.AllowGet);
        }

    }
}
