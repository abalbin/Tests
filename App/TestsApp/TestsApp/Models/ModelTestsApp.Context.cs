﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class TestsAppBDEntities : DbContext
    {
        public TestsAppBDEntities()
            : base("name=TestsAppBDEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Estado> Estado { get; set; }
        public DbSet<Examen> Examen { get; set; }
        public DbSet<ExamenUsuario> ExamenUsuario { get; set; }
        public DbSet<Linea> Linea { get; set; }
        public DbSet<PreguntaUsuario> PreguntaUsuario { get; set; }
        public DbSet<Respuesta> Respuesta { get; set; }
        public DbSet<RespuestaUsuario> RespuestaUsuario { get; set; }
        public DbSet<TipoPregunta> TipoPregunta { get; set; }
        public DbSet<webpages_Roles> webpages_Roles { get; set; }
        public DbSet<UserProfile> UserProfile { get; set; }
        public DbSet<Producto> Producto { get; set; }
        public DbSet<UserMigration> UserMigration { get; set; }
        public DbSet<TipoExamen> TipoExamen { get; set; }
        public DbSet<Pregunta> Pregunta { get; set; }
        public DbSet<PuntajeAsesoria> PuntajeAsesoria { get; set; }
        public DbSet<Documento> Documento { get; set; }
        public DbSet<NombreTabla> NombreTabla { get; set; }
    }
}
