using OfficeOpenXml;
using OfficeOpenXml.Style;
using System;
using System.Collections.Generic;
using System.Drawing;
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
            List<ExamenUsuario> exUsua = new List<ExamenUsuario>();
            exUsua = q.ToList();
            //for (int i = 0; i < 3000; i++)
            //    exUsua.AddRange(q);
            return View(exUsua);
        }

        public ActionResult Examen()
        {
            var q = db.Examen.Where(r=>r.ExamenUsuario.Count > 0).ToList();
            return View(q.ToList());
        }

        public ActionResult DrawChart(int idEjecutivo, int idAster)
        {
            ChartViewModel cvm = new ChartViewModel();
            List<HighChartsSeries> allSeries = new List<HighChartsSeries>();
            List<HighChartsPoint> allPoint = new List<HighChartsPoint>();
            List<string> allCategories = new List<string>();

            var listaAsesorias = db.ExamenUsuario.Where(r => r.IdAster == idAster && r.Examen.IdTipo == 2 && r.Estado == 2).ToList();
            var aster = db.UserProfile.First(r => r.UserId == idAster);

            for (int i = 0; i < listaAsesorias.Count; i++)
            {
                var ejecutivo = db.UserProfile.AsEnumerable().First(r => r.UserId == listaAsesorias[i].IdEjecutivo);
                allCategories.Add(listaAsesorias[i].FechaInicio.ToString());
                allPoint.Add(new HighChartsPoint { x = i, y = Convert.ToDouble(listaAsesorias[i].Puntaje.Value), name = string.Format("{0} {1}", ejecutivo.FirstName, ejecutivo.LastName) });
            }

            allSeries.Add(new HighChartsSeries
            {
                data = new List<HighChartsPoint>(allPoint),
                dataLabels = new HighChartDataLabel()
                {
                    enabled = true
                },
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

        public ActionResult DrawComparativeChart(string[] arrayIds, string sDesde, string sHasta)
        {
            DateTime desde = DateTime.ParseExact(sDesde, "dd/MM/yyyy", null);
            DateTime hasta = DateTime.ParseExact(sHasta, "dd/MM/yyyy", null);
            ChartViewModel cvm = new ChartViewModel();
            List<HighChartsSeries> allSeries = new List<HighChartsSeries>();
            List<HighChartsPoint> allPoint = new List<HighChartsPoint>();
            List<ExamenUsuario> allCategoriesDates = new List<ExamenUsuario>();
            List<string> allCategories = new List<string>();
            List<ExamenUsuario> listaAsesoriasAux = new List<ExamenUsuario>();

            List<HighChartsSeries> allSeriesEmpty = new List<HighChartsSeries>();

            foreach (string s in arrayIds)
            {
                int idExUsua = Convert.ToInt32(s);
                ExamenUsuario ex = db.ExamenUsuario.AsEnumerable().FirstOrDefault(r => r.Id == idExUsua && r.Estado == 2 && r.FechaInicio.Value.Date >= desde.Date && r.FechaInicio.Value.Date <= hasta.Date);
                if (ex != null)
                    if (listaAsesoriasAux.FirstOrDefault(r => r.IdAster == ex.IdAster) == null)
                        listaAsesoriasAux.Add(ex);
            }

            foreach (ExamenUsuario exusua in listaAsesoriasAux)
            {
                var listaAsesorias = db.ExamenUsuario.AsEnumerable().Where(r => r.IdAster == exusua.IdAster && r.Examen.IdTipo == 2 && r.Estado == 2 && r.FechaInicio.Value.Date >= desde.Date && r.FechaInicio.Value.Date <= hasta.Date).ToList();
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
                var listaAsesorias = db.ExamenUsuario.AsEnumerable().Where(r => r.IdAster == exusua.IdAster && r.Examen.IdTipo == 2 && r.Estado == 2 && r.FechaInicio.Value.Date >= desde.Date && r.FechaInicio.Value.Date <= hasta.Date).ToList();
                var aster = db.UserProfile.First(r => r.UserId == exusua.IdAster);

                allPoint = new List<HighChartsPoint>();
                for (int i = 0; i < listaAsesorias.Count; i++)
                {
                    var ejecutivo = db.UserProfile.AsEnumerable().First(r => r.UserId == listaAsesorias[i].IdEjecutivo);
                    int ind = allCategories.IndexOf(listaAsesorias[i].FechaInicio.ToString());
                    allPoint.Add(new HighChartsPoint { x = ind, y = Convert.ToDouble(listaAsesorias[i].Puntaje.Value), name = string.Format("{0} {1}", ejecutivo.FirstName, ejecutivo.LastName) });
                }

                allSeries.Add(new HighChartsSeries
                {
                    data = new List<HighChartsPoint>(allPoint),
                    dataLabels = new HighChartDataLabel()
                    {
                        enabled = true
                    },
                    name = string.Format("{0} {1}", aster.FirstName, aster.LastName),
                    type = "line"
                });
            }

            allSeriesEmpty.Add(new HighChartsSeries
            {
                data = new List<HighChartsPoint>(),
                dataLabels = new HighChartDataLabel()
                {
                    enabled = true
                },
                type = "line",
                name = "No se encontraron datos"
            });

            cvm.allSeries = allSeries.Count > 0 ? allSeries : allSeriesEmpty;
            cvm.title = new HighChartTitle() { text = "Comparativo de Puntajes" };
            cvm.xAxis = new HighChartAxis { categories = new List<string>(allCategories), title = new HighChartTitle() { text = "Fecha de Asesoría" }, min = 4 };
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
                        ExamenUsuario current = registros.First(r => r.IdAster == e.IdAster);
                        if (e.Puntaje > current.Puntaje)
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

        public FileResult ExportResultAsesoria(int id = 0)
        {
            ExamenUsuario ex = db.ExamenUsuario.Find(id);

            if (ex != null)
            {
                string filename = string.Format("Resultado_Asesoria_{0}{1}_{2}.xlsx", ex.UserProfile2.FirstName, ex.UserProfile2.LastName, ex.FechaInicio.Value.ToString("dd-MM-yyyy"));
                filename = filename.Replace(" ", string.Empty);
                string nombreEjecutivo = string.Format("{0} {1}", ex.UserProfile1.FirstName, ex.UserProfile1.LastName);
                using (var xlPackage = new ExcelPackage())
                {
                    xlPackage.Workbook.Properties.Author = nombreEjecutivo;
                    xlPackage.Workbook.Properties.Title = "Resultado Asesoria";
                    xlPackage.Workbook.Properties.Company = "Unimed";
                    var ws = xlPackage.Workbook.Worksheets.Add("Resultado");

                    //Write header
                    StyleSimpleHeaderReport(ws, 2, 2, 7);

                    var pregunta = ws.Cells[2, 2];
                    var sobresaliente = ws.Cells[2, 3];
                    var aceptable = ws.Cells[2, 4];
                    var bueno = ws.Cells[2, 5];
                    var deficiente = ws.Cells[2, 6];
                    var nr = ws.Cells[2, 7];
                    var puntaje = ws.Cells[2, 8];

                    SetRichText(pregunta, "Pregunta");
                    SetRichText(sobresaliente, "S");
                    SetRichText(aceptable, "A");
                    SetRichText(bueno, "B");
                    SetRichText(deficiente, "D");
                    SetRichText(nr, "NR");
                    SetRichText(puntaje, "Puntaje");
                    //-----------------

                    //Write data
                    StyleSimpleDataReport(ws, 2, 3, 7, ex.PreguntaUsuario.Count);

                    int colPregunta = 2;
                    int colS = 3;
                    int colA = 4;
                    int colB = 5;
                    int colD = 6;
                    int colNR = 7;
                    int colPuntaje = 8;

                    List<PreguntaUsuario> listaPreguntas = ex.PreguntaUsuario.ToList();

                    for (int i = 3; i < listaPreguntas.Count + 3; i++)
                    {
                        List<RespuestaUsuario> listaRptas = db.RespuestaUsuario.AsEnumerable().Where(r => r.Respuesta.Pregunta.Id == listaPreguntas[i - 3].IdPregunta).ToList();
                        // Pregunta
                        var preguntaCell = ws.Cells[i, colPregunta];
                        preguntaCell.Value = listaPreguntas[i - 3].Pregunta.Texto;
                        // S
                        var sCell = ws.Cells[i, colS];
                        sCell.Value = listaRptas.First(r => r.Respuesta.Texto == "S").Marcada ? 1 : 0;
                        // A
                        var aCell = ws.Cells[i, colA];
                        aCell.Value = listaRptas.First(r => r.Respuesta.Texto == "A").Marcada ? 1 : 0;
                        // B
                        var bCell = ws.Cells[i, colB];
                        bCell.Value = listaRptas.First(r => r.Respuesta.Texto == "B").Marcada ? 1 : 0;
                        // D
                        var dCell = ws.Cells[i, colD];
                        dCell.Value = listaRptas.First(r => r.Respuesta.Texto == "D").Marcada ? 1 : 0;
                        // NR
                        var nrCell = ws.Cells[i, colNR];
                        nrCell.Value = listaRptas.Where(r => r.Marcada).Count() == 0 ? 1 : 0;
                        // Puntaje
                        var puntajeCell = ws.Cells[i, colPuntaje];
                        puntajeCell.Value = listaPreguntas[i - 3].Puntaje.Value;
                    }
                    //--------------

                    //Write footer
                    int rowFooter = 3 + ex.PreguntaUsuario.Count;
                    StyleSimpleFooterReport(ws, 2, rowFooter, 7);
                    var preguntaF = ws.Cells[rowFooter, 2];
                    var sobresalienteF = ws.Cells[rowFooter, 3];
                    var aceptableF = ws.Cells[rowFooter, 4];
                    var buenoF = ws.Cells[rowFooter, 5];
                    var deficienteF = ws.Cells[rowFooter, 6];
                    var nrF = ws.Cells[rowFooter, 7];
                    var puntajeF = ws.Cells[rowFooter, 8];

                    preguntaF.Value = "TOTALES:";
                    sobresalienteF.Value = ex.RespuestaUsuario.Where(r => r.Marcada && r.Respuesta.Texto == "D").Count();
                    aceptableF.Value = ex.RespuestaUsuario.Where(r => r.Marcada && r.Respuesta.Texto == "A").Count();
                    buenoF.Value = ex.RespuestaUsuario.Where(r => r.Marcada && r.Respuesta.Texto == "B").Count();
                    deficienteF.Value = ex.RespuestaUsuario.Where(r => r.Marcada && r.Respuesta.Texto == "S").Count();
                    nrF.Value = ex.PreguntaUsuario.Count - ex.RespuestaUsuario.Where(r => r.Marcada).Count();
                    puntajeF.Value = ex.Puntaje;
                    //--------------------
                    //Autosize columns
                    for (int i = 2; i <= 8; i++)
                        ws.Column(i).AutoFit();
                    //----------------
                    return File(xlPackage.GetAsByteArray(), "application/excel", filename);
                }
            }
            else
                return null;
        }

        public FileResult ExportReportExamen(int id = 0)
        {
            Examen examen = db.Examen.Find(id);
            if (examen != null)
            {
                string filename = string.Format("Reporte_Examen_{0}_{1}.xlsx", examen.Titulo, DateTime.Now.ToString("dd-MM-yyyy"));
                filename = filename.Replace(" ", string.Empty);
                using (var xlPackage = new ExcelPackage())
                {
                    xlPackage.Workbook.Properties.Title = "Reporte de Examen";
                    xlPackage.Workbook.Properties.Company = "Unimed";
                    var ws = xlPackage.Workbook.Worksheets.Add(examen.Titulo);

                    //Write header
                    StyleSimpleHeaderReport(ws, 2, 2, 4);

                    var SeRealizo = ws.Cells[2, 2];
                    var Nombre = ws.Cells[2, 3];
                    var Linea = ws.Cells[2, 4];
                    var Nota = ws.Cells[2, 5];

                    SetRichText(SeRealizo, "Se realizó");
                    SetRichText(Nombre, "Nombre");
                    SetRichText(Linea, "Línea");
                    SetRichText(Nota, "Nota");

                    //Write data
                    List<ExamenUsuario> listaExamenes = examen.ExamenUsuario.ToList();

                    StyleSimpleDataReport(ws, 2, 3, 4, listaExamenes.Count);

                    int colSeRealizo = 2;
                    int colNombre = 3;
                    int colLinea = 4;
                    int colNota = 5;

                    for (int i = 3; i < listaExamenes.Count + 3; i++)
                    {
                        // Se realizó
                        var seRealizoCell = ws.Cells[i, colSeRealizo];
                        seRealizoCell.Value = listaExamenes[i - 3].FechaInicio == null ? "" : listaExamenes[i - 3].FechaInicio.Value.ToString("dd/MM/yyyy HH:mm");
                        // Nombre
                        var nombreCell = ws.Cells[i, colNombre];
                        nombreCell.Value = string.Format("{0} {1}", listaExamenes[i - 3].UserProfile.FirstName, listaExamenes[i - 3].UserProfile.LastName);
                        // Línea
                        var lineaCell = ws.Cells[i, colLinea];
                        lineaCell.Value = listaExamenes[i - 3].UserProfile.Linea.Nombre;
                        // Nota
                        var notaCell = ws.Cells[i, colNota];
                        notaCell.Value = listaExamenes[i - 3].Puntaje;
                    }
                    //--------------

                    //Autosize columns
                    for (int i = 2; i <= 8; i++)
                        ws.Column(i).AutoFit();
                    //----------------
                    return File(xlPackage.GetAsByteArray(), "application/excel", filename);
                }
            }
            return null;
        }

        public FileResult ExportReportExamenRptaPorPregunta(int id = 0)
        {
            Examen examen = db.Examen.Find(id);
            if (examen != null)
            {
                string filename = string.Format("Reporte_Examen_RespuestaPregunta_{0}_{1}.xlsx", examen.Titulo, DateTime.Now.ToString("dd-MM-yyyy"));
                filename = filename.Replace(" ", string.Empty);
                using (var xlPackage = new ExcelPackage())
                {
                    xlPackage.Workbook.Properties.Title = "Reporte de Examen de Respuesta por Pregunta";
                    xlPackage.Workbook.Properties.Company = "Unimed";
                    var ws = xlPackage.Workbook.Worksheets.Add(string.Format("Reporte {0}", examen.Titulo));

                    //Write header
                    StyleSimpleHeaderReport(ws, 2, 2, 4);

                    var aster = ws.Cells[2, 2];
                    var pregunta = ws.Cells[2, 3];
                    var respuesta = ws.Cells[2, 4];
                    var puntaje = ws.Cells[2, 5];

                    SetRichText(aster, "Nombre de Aster");
                    SetRichText(pregunta, "Pregunta");
                    SetRichText(respuesta, "Respuesta");
                    SetRichText(puntaje, "Puntaje");

                    //Write data      

                    List<RespuestaUsuario> listaRespuestas = db.RespuestaUsuario.Where(r => r.ExamenUsuario.Examen.Id == examen.Id && r.Marcada).ToList();

                    StyleSimpleDataReport(ws, 2, 3, 4, listaRespuestas.Count);

                    int colAster = 2;
                    int colPregunta = 3;
                    int colRespuesta = 4;
                    int colPuntaje = 5;

                    for (int i = 3; i < listaRespuestas.Count + 3; i++)
                    {
                        // Aster
                        var aterCell = ws.Cells[i, colAster];
                        aterCell.Value = string.Format("{0} {1}", listaRespuestas[i - 3].ExamenUsuario.UserProfile.FirstName, listaRespuestas[i - 3].ExamenUsuario.UserProfile.LastName);
                        // Pregunta
                        var preguntaCell = ws.Cells[i, colPregunta];
                        preguntaCell.Value = listaRespuestas[i - 3].Respuesta.Pregunta.Texto;
                        // Respuesta
                        var respuestaCell = ws.Cells[i, colRespuesta];
                        respuestaCell.Value = listaRespuestas[i - 3].Respuesta.Texto;
                        // Puntaje
                        var puntajeCell = ws.Cells[i, colPuntaje];
                        var currentPregunta = listaRespuestas[i - 3].Respuesta.Pregunta;
                        puntajeCell.Value = (listaRespuestas[i - 3].Respuesta.EsCorrecta == 1 ? currentPregunta.Puntaje / currentPregunta.CantidadRespuesta : 0);
                    }
                    //--------------

                    //Autosize columns
                    for (int i = 2; i <= 8; i++)
                        ws.Column(i).AutoFit();
                    //----------------
                    return File(xlPackage.GetAsByteArray(), "application/excel", filename);
                }
            }
            return null;
        }

        private void StyleSimpleFooterReport(ExcelWorksheet ws, int x, int y, int cols)
        {
            for (int i = x; i < x + cols; i++)
            {
                var cell = ws.Cells[y, i];
                var fill = cell.Style.Fill;
                var font = cell.Style.Font;
                font.Bold = true;
                fill.PatternType = ExcelFillStyle.Solid;
                fill.BackgroundColor.SetColor(Color.Yellow);
            }
        }

        private void StyleSimpleDataReport(ExcelWorksheet ws, int x, int y, int cols, int rows)
        {

            for (int i = y; i < y + rows; i++)
            {
                for (int j = x; j < x + cols; j++)
                {
                    var cell = ws.Cells[i, j];
                    var fill = cell.Style.Fill;
                    var border = cell.Style.Border;

                    border.BorderAround(ExcelBorderStyle.Thin, Color.Black);
                }
            }
        }

        private void SetRichText(ExcelRange pregunta, string p)
        {
            pregunta.IsRichText = true;
            ExcelRichText ert = pregunta.RichText.Add(p);
            ert.Bold = true;
            ert.Size = 11;
            ert.Color = Color.White;
        }

        private void StyleSimpleHeaderReport(ExcelWorksheet ws, int x, int y, int cols)
        {
            for (int i = x; i < x + cols; i++)
            {
                var cell = ws.Cells[y, i];
                var fill = cell.Style.Fill;
                var border = cell.Style.Border;

                fill.PatternType = ExcelFillStyle.Solid;
                fill.BackgroundColor.SetColor(Color.Black);
                border.BorderAround(ExcelBorderStyle.Thin, Color.Black);
            }
        }

    }
}
