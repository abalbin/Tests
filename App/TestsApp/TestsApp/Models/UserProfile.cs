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
    using System.ComponentModel.DataAnnotations;
    
    public partial class UserProfile
    {
        public UserProfile()
        {
            this.ExamenUsuario = new HashSet<ExamenUsuario>();
            this.PreguntaUsuario = new HashSet<PreguntaUsuario>();
            this.RespuestaUsuario = new HashSet<RespuestaUsuario>();
            this.ExamenUsuario1 = new HashSet<ExamenUsuario>();
            this.ExamenUsuario2 = new HashSet<ExamenUsuario>();
            this.webpages_Roles = new HashSet<webpages_Roles>();
        }

        [Key]
        public int UserId { get; set; }
        [Display(Name = "Usuario")]
        public string UserName { get; set; }
        [Display(Name = "Nombres")]
        public string FirstName { get; set; }
        [Display(Name = "Apellidos")]
        public string LastName { get; set; }
        public string UrlImagen { get; set; }
        public string Mail { get; set; }
        public Nullable<int> IdLinea { get; set; }
    
        public virtual ICollection<ExamenUsuario> ExamenUsuario { get; set; }
        public virtual ICollection<PreguntaUsuario> PreguntaUsuario { get; set; }
        public virtual ICollection<RespuestaUsuario> RespuestaUsuario { get; set; }
        public virtual Linea Linea { get; set; }
        public virtual ICollection<ExamenUsuario> ExamenUsuario1 { get; set; }
        public virtual ICollection<ExamenUsuario> ExamenUsuario2 { get; set; }
        public virtual ICollection<webpages_Roles> webpages_Roles { get; set; }
    }
}
