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
    
    public partial class PuntajeAsesoria
    {
        public int Id { get; set; }
        public Nullable<decimal> D { get; set; }
        public Nullable<decimal> A { get; set; }
        public Nullable<decimal> B { get; set; }
        public Nullable<decimal> S { get; set; }
        public Nullable<int> IdExamen { get; set; }
    
        public virtual Examen Examen { get; set; }
    }
}
