//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TestsApp.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Examen
    {
        public Examen()
        {
            this.Titulo = "T�tulo del Examen";
            this.TiempoMaximo = new TimeSpan(0, 30, 0);
            this.PuntajeMaximo = 20;
            this.FechaEjecucion = DateTime.Now;
            this.ExamenUsuario = new HashSet<ExamenUsuario>();
            this.Pregunta = new HashSet<Pregunta>();
        }
    
        public int Id { get; set; }
        public string Titulo { get; set; }
        public System.DateTime FechaCreacion { get; set; }
        public Nullable<System.DateTime> FechaEjecucion { get; set; }
        public Nullable<System.TimeSpan> TiempoMaximo { get; set; }
        public int IdEstado { get; set; }
        public Nullable<int> PuntajeMaximo { get; set; }
        public Nullable<System.TimeSpan> TiempoTranscurrido { get; set; }
        public Nullable<int> IdProducto { get; set; }
        public Nullable<int> IdTipo { get; set; }
    
        public virtual Estado Estado { get; set; }
        public virtual ICollection<ExamenUsuario> ExamenUsuario { get; set; }
        public virtual Producto Producto { get; set; }
        public virtual TipoExamen TipoExamen { get; set; }
        public virtual ICollection<Pregunta> Pregunta { get; set; }
    }
}
