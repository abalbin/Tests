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
            var q = db.ExamenUsuario.Where(r => r.Examen.IdTipo == 2 && r.Estado == 2);
            return View(q.ToList());
        }

        public ActionResult DrawChart(int idEjecutivo, int idAster)
        {
            ChartViewModel cvm = new ChartViewModel();
            List<HighChartsSeries> allSeries = new List<HighChartsSeries>();
            List<HighChartsPoint> allPoint = new List<HighChartsPoint>();
            List<string> allCategories = new List<string>();

            var listaAsesorias = db.ExamenUsuario.Where(r => r.IdAster == idAster && r.Examen.IdTipo == 2 && r.Estado == 2).ToList();
            var ejecutivo = db.UserProfile.First(r => r.UserId == idEjecutivo);
            var aster = db.UserProfile.First(r => r.UserId == idAster);

            for (int i = 0; i < listaAsesorias.Count; i++)
            {
                allCategories.Add(listaAsesorias[i].FechaInicio.ToString());
                allPoint.Add(new HighChartsPoint { x = i, y = Convert.ToDouble(listaAsesorias[i].Puntaje.Value) });
            }

            allSeries.Add(new HighChartsSeries
            {
                data = new List<HighChartsPoint>(allPoint),
                name = string.Format("{0} {1}", aster.FirstName, aster.LastName),
                type = "line"
            });

            cvm.allSeries = allSeries;
            cvm.xAxis = new HighChartAxis { categories = new List<string>(allCategories), title = new HighChartTitle() { text = "Fecha de Asesoría" } };
            cvm.yAxis = new HighChartAxis { title = new HighChartTitle() { text = "Puntaje" } };
            cvm.title = new HighChartTitle() { text = string.Format("Historial de {0} {1}", aster.FirstName, aster.LastName) };
            //cvm.subtitle = new HighChartTitle() { text = string.Format("Asesoría tomada por {0} {1}", ejecutivo.FirstName, ejecutivo.LastName) };
            return Json(cvm, JsonRequestBehavior.AllowGet);
        }

        public ActionResult DrawComparativeChart(string[] arrayIds)
        {
            ChartViewModel cvm = new ChartViewModel();
            List<HighChartsSeries> allSeries = new List<HighChartsSeries>();
            List<HighChartsPoint> allPoint = new List<HighChartsPoint>();
            List<ExamenUsuario> allCategoriesDates = new List<ExamenUsuario>();
            List<string> allCategories = new List<string>();
            List<ExamenUsuario> listaAsesoriasAux = new List<ExamenUsuario>();

            foreach (string s in arrayIds)
            {
                int idExUsua = Convert.ToInt32(s);
                ExamenUsuario ex = db.ExamenUsuario.First(r => r.Id == idExUsua && r.Estado == 2);
                if (listaAsesoriasAux.FirstOrDefault(r => r.IdAster == ex.IdAster) == null)
                    listaAsesoriasAux.Add(ex);
            }
            foreach (ExamenUsuario exusua in listaAsesoriasAux)
            {
                var listaAsesorias = db.ExamenUsuario.Where(r => r.IdAster == exusua.IdAster && r.Examen.IdTipo == 2 && r.Estado == 2).ToList();
                for (int i = 0; i < listaAsesorias.Count; i++)
                    if (allCategoriesDates.FirstOrDefault(r => r.FechaInicio == listaAsesorias[i].FechaInicio) == null)
                        allCategoriesDates.Add(listaAsesorias[i]);

                allCategoriesDates = allCategoriesDates.OrderBy(r => r.FechaInicio).ToList();
            }

            foreach (ExamenUsuario ex in allCategoriesDates)
                allCategories.Add(ex.FechaInicio.ToString());
            allCategories = allCategories.Distinct().ToList();

            foreach (ExamenUsuario exusua in listaAsesoriasAux)
            {
                var listaAsesorias = db.ExamenUsuario.Where(r => r.IdAster == exusua.IdAster && r.Examen.IdTipo == 2 && r.Estado == 2).ToList();
                var aster = db.UserProfile.First(r => r.UserId == exusua.IdAster);
                allPoint = new List<HighChartsPoint>();
                for (int i = 0; i < listaAsesorias.Count; i++)
                {
                    int ind = allCategories.IndexOf(listaAsesorias[i].FechaInicio.ToString());
                    allPoint.Add(new HighChartsPoint { x = ind, y = Convert.ToDouble(listaAsesorias[i].Puntaje.Value) });
                }

                allSeries.Add(new HighChartsSeries
                {
                    data = new List<HighChartsPoint>(allPoint),
                    name = string.Format("{0} {1}", aster.FirstName, aster.LastName),
                    type = "line"
                });
            }

            cvm.allSeries = allSeries;
            cvm.title = new HighChartTitle() { text = "Comparativo de Puntajes" };
            cvm.xAxis = new HighChartAxis { categories = new List<string>(allCategories), title = new HighChartTitle() { text = "Fecha de Asesoría" } };
            cvm.yAxis = new HighChartAxis { title = new HighChartTitle() { text = "Puntaje" } };
            return Json(cvm, JsonRequestBehavior.AllowGet);
        }

        public ActionResult DrawRankingAsesoria(int top = 0)
        {
            if (top == 0)
                return HttpNotFound();
            else
            {
                var q = db.ExamenUsuario.Where(r => r.Examen.IdTipo == 2 && r.Estado == 2).Select(r => r.IdAster).Distinct();
                List<ExamenUsuario> registros = new List<ExamenUsuario>();

                foreach (ExamenUsuario e in db.ExamenUsuario.Where(r => r.Examen.IdTipo == 2 && r.Estado == 2))
                {
                    if (registros.FirstOrDefault(r => r.IdAster == e.IdAster) == null)
                        registros.Add(e);
                    else
                    {
                        ExamenUsuario current = registros.First(r=>r.IdAster == e.IdAster);
                        if(e.Puntaje > current.Puntaje)
                        {
                            registros.Remove(current);
                            registros.Add(e);
                        }
                    }
                }
                registros = registros.OrderByDescending(e => e.Puntaje).Take(top).ToList();
                return PartialView("ReportRankingAsesoriaPartial", registros);
            }
        }

    }
}
