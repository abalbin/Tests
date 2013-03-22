using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestsApp.Models.ViewModels
{
    using System;
    using System.Collections.Generic;

    public partial class GiveExamenModel
    {
        public GiveExamenModel(Examen examen)
        {
            this.Id = examen.Id;
            this.IdLinea = examen.IdLinea;
            this.Titulo = examen.Titulo;
            this.FechaCreacion = examen.FechaCreacion;
            this.FechaEjecucion = examen.FechaEjecucion;
            this.TiempoMaximo = examen.TiempoMaximo;
            this.IdEstado = examen.IdEstado;
            this.PuntajeMaximo = examen.PuntajeMaximo;
            this.TiempoTranscurrido = examen.TiempoTranscurrido;
            this.IndexCurrentPregunta = 0;
            this.Estado = examen.Estado;
            this.Linea = examen.Linea;
            this.Pregunta = examen.Pregunta;
            this.ExamenUsuario = examen.ExamenUsuario;
        }

        public int Id { get; set; }
        public Nullable<int> IdLinea { get; set; }
        public string Titulo { get; set; }
        public System.DateTime FechaCreacion { get; set; }
        public System.DateTime FechaEjecucion { get; set; }
        public System.TimeSpan TiempoMaximo { get; set; }
        public int IdEstado { get; set; }
        public Nullable<int> PuntajeMaximo { get; set; }
        public Nullable<System.TimeSpan> TiempoTranscurrido { get; set; }
        public int IndexCurrentPregunta { get; set; }

        public virtual Estado Estado { get; set; }
        public virtual Linea Linea { get; set; }
        public virtual ICollection<ExamenUsuario> ExamenUsuario { get; set; }
        public virtual ICollection<Pregunta> Pregunta { get; set; }
    }
}