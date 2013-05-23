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
    
    public partial class Respuesta
    {
        public Respuesta()
        {
            this.RespuestaUsuario = new HashSet<RespuestaUsuario>();
        }
    
        public int Id { get; set; }
        public string Texto { get; set; }
        public Nullable<int> Orden { get; set; }
        public Nullable<int> IdPregunta { get; set; }
        public Nullable<int> EsCorrecta { get; set; }
        public bool Marcada { get; set; }
        public Nullable<decimal> Puntaje { get; set; }
    
        public virtual Pregunta Pregunta { get; set; }
        public virtual ICollection<RespuestaUsuario> RespuestaUsuario { get; set; }
    }
}
