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
    
    public partial class ExamenUsuario
    {
        public int Id { get; set; }
        public Nullable<int> IdUsuario { get; set; }
        public Nullable<int> IdExamen { get; set; }
        public Nullable<decimal> Puntaje { get; set; }
    
        public virtual Examen Examen { get; set; }
        public virtual Usuario Usuario { get; set; }
    }
}
