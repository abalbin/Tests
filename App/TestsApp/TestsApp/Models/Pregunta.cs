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
    
    public partial class Pregunta
    {
        public Pregunta()
        {
            this.PreguntaUsuario = new HashSet<PreguntaUsuario>();
            this.Respuesta = new HashSet<Respuesta>();
        }
    
        public int Id { get; set; }
        public string Texto { get; set; }
        public Nullable<int> IdTipoPregunta { get; set; }
        public Nullable<int> IdExamen { get; set; }
        public Nullable<int> CantidadRespuesta { get; set; }
        public Nullable<decimal> Puntaje { get; set; }
        public Nullable<int> Orden { get; set; }
    
        public virtual Examen Examen { get; set; }
        public virtual TipoPregunta TipoPregunta { get; set; }
        public virtual ICollection<PreguntaUsuario> PreguntaUsuario { get; set; }
        public virtual ICollection<Respuesta> Respuesta { get; set; }
    }
}
