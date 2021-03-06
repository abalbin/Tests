USE [TestsAppBD]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]'))
ALTER TABLE [dbo].[webpages_UsersInRoles] DROP CONSTRAINT [fk_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]'))
ALTER TABLE [dbo].[webpages_UsersInRoles] DROP CONSTRAINT [fk_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserProfile_Linea]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserProfile]'))
ALTER TABLE [dbo].[UserProfile] DROP CONSTRAINT [FK_UserProfile_Linea]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario] DROP CONSTRAINT [FK_RespuestaUsuario_UserProfile]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_Respuesta]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario] DROP CONSTRAINT [FK_RespuestaUsuario_Respuesta]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_ExamenUsuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario] DROP CONSTRAINT [FK_RespuestaUsuario_ExamenUsuario]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Respuesta_Pregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Respuesta]'))
ALTER TABLE [dbo].[Respuesta] DROP CONSTRAINT [FK_Respuesta_Pregunta]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PuntajeAsesoria_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[PuntajeAsesoria]'))
ALTER TABLE [dbo].[PuntajeAsesoria] DROP CONSTRAINT [FK_PuntajeAsesoria_Examen]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_Linea]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto]'))
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Producto_Linea]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario] DROP CONSTRAINT [FK_PreguntaUsuario_UserProfile]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_Pregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario] DROP CONSTRAINT [FK_PreguntaUsuario_Pregunta]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_ExamenUsuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario] DROP CONSTRAINT [FK_PreguntaUsuario_ExamenUsuario]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pregunta_TipoPregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pregunta]'))
ALTER TABLE [dbo].[Pregunta] DROP CONSTRAINT [FK_Pregunta_TipoPregunta]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pregunta_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pregunta]'))
ALTER TABLE [dbo].[Pregunta] DROP CONSTRAINT [FK_Pregunta_Examen]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_UserProfile2]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] DROP CONSTRAINT [FK_ExamenUsuario_UserProfile2]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_UserProfile1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] DROP CONSTRAINT [FK_ExamenUsuario_UserProfile1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] DROP CONSTRAINT [FK_ExamenUsuario_UserProfile]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] DROP CONSTRAINT [FK_ExamenUsuario_Examen]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_TipoExamen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen] DROP CONSTRAINT [FK_Examen_TipoExamen]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen] DROP CONSTRAINT [FK_Examen_Producto]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen] DROP CONSTRAINT [FK_Examen_Estado]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentoLinea_Linea]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentoLinea]'))
ALTER TABLE [dbo].[DocumentoLinea] DROP CONSTRAINT [FK_DocumentoLinea_Linea]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentoLinea_Documento]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentoLinea]'))
ALTER TABLE [dbo].[DocumentoLinea] DROP CONSTRAINT [FK_DocumentoLinea_Documento]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__webpages___Passw__12FDD1B2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[webpages_Membership] DROP CONSTRAINT [DF__webpages___Passw__12FDD1B2]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__webpages___IsCon__1209AD79]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[webpages_Membership] DROP CONSTRAINT [DF__webpages___IsCon__1209AD79]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RespuestaUsuario_Marcada]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RespuestaUsuario] DROP CONSTRAINT [DF_RespuestaUsuario_Marcada]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Respuesta_Marcada]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Respuesta] DROP CONSTRAINT [DF_Respuesta_Marcada]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Pregunta_Habilitada]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Pregunta] DROP CONSTRAINT [DF_Pregunta_Habilitada]
END

GO
/****** Object:  Index [UQ__webpages__8A2B616018B6AB08]    Script Date: 06/05/2013 02:06:53 a.m. ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[webpages_Roles]') AND name = N'UQ__webpages__8A2B616018B6AB08')
ALTER TABLE [dbo].[webpages_Roles] DROP CONSTRAINT [UQ__webpages__8A2B616018B6AB08]
GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 06/05/2013 02:06:53 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]') AND type in (N'U'))
DROP TABLE [dbo].[webpages_UsersInRoles]
GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 06/05/2013 02:06:53 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_Roles]') AND type in (N'U'))
DROP TABLE [dbo].[webpages_Roles]
GO
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 06/05/2013 02:06:53 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_OAuthMembership]') AND type in (N'U'))
DROP TABLE [dbo].[webpages_OAuthMembership]
GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 06/05/2013 02:06:53 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_Membership]') AND type in (N'U'))
DROP TABLE [dbo].[webpages_Membership]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 06/05/2013 02:06:53 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserProfile]') AND type in (N'U'))
DROP TABLE [dbo].[UserProfile]
GO
/****** Object:  Table [dbo].[UserMigration]    Script Date: 06/05/2013 02:06:53 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserMigration]') AND type in (N'U'))
DROP TABLE [dbo].[UserMigration]
GO
/****** Object:  Table [dbo].[TipoPregunta]    Script Date: 06/05/2013 02:06:53 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoPregunta]') AND type in (N'U'))
DROP TABLE [dbo].[TipoPregunta]
GO
/****** Object:  Table [dbo].[TipoExamen]    Script Date: 06/05/2013 02:06:53 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoExamen]') AND type in (N'U'))
DROP TABLE [dbo].[TipoExamen]
GO
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 06/05/2013 02:06:53 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sysdiagrams]') AND type in (N'U'))
DROP TABLE [dbo].[sysdiagrams]
GO
/****** Object:  Table [dbo].[RespuestaUsuario]    Script Date: 06/05/2013 02:06:53 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]') AND type in (N'U'))
DROP TABLE [dbo].[RespuestaUsuario]
GO
/****** Object:  Table [dbo].[Respuesta]    Script Date: 06/05/2013 02:06:53 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Respuesta]') AND type in (N'U'))
DROP TABLE [dbo].[Respuesta]
GO
/****** Object:  Table [dbo].[PuntajeAsesoria]    Script Date: 06/05/2013 02:06:53 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PuntajeAsesoria]') AND type in (N'U'))
DROP TABLE [dbo].[PuntajeAsesoria]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 06/05/2013 02:06:53 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Producto]') AND type in (N'U'))
DROP TABLE [dbo].[Producto]
GO
/****** Object:  Table [dbo].[PreguntaUsuario]    Script Date: 06/05/2013 02:06:53 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]') AND type in (N'U'))
DROP TABLE [dbo].[PreguntaUsuario]
GO
/****** Object:  Table [dbo].[Pregunta]    Script Date: 06/05/2013 02:06:53 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pregunta]') AND type in (N'U'))
DROP TABLE [dbo].[Pregunta]
GO
/****** Object:  Table [dbo].[NombreTabla]    Script Date: 06/05/2013 02:06:53 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NombreTabla]') AND type in (N'U'))
DROP TABLE [dbo].[NombreTabla]
GO
/****** Object:  Table [dbo].[Linea]    Script Date: 06/05/2013 02:06:53 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Linea]') AND type in (N'U'))
DROP TABLE [dbo].[Linea]
GO
/****** Object:  Table [dbo].[ExamenUsuario]    Script Date: 06/05/2013 02:06:53 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]') AND type in (N'U'))
DROP TABLE [dbo].[ExamenUsuario]
GO
/****** Object:  Table [dbo].[Examen]    Script Date: 06/05/2013 02:06:53 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Examen]') AND type in (N'U'))
DROP TABLE [dbo].[Examen]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 06/05/2013 02:06:53 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Estado]') AND type in (N'U'))
DROP TABLE [dbo].[Estado]
GO
/****** Object:  Table [dbo].[DocumentoLinea]    Script Date: 06/05/2013 02:06:53 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentoLinea]') AND type in (N'U'))
DROP TABLE [dbo].[DocumentoLinea]
GO
/****** Object:  Table [dbo].[Documento]    Script Date: 06/05/2013 02:06:53 a.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Documento]') AND type in (N'U'))
DROP TABLE [dbo].[Documento]
GO
/****** Object:  Table [dbo].[Documento]    Script Date: 06/05/2013 02:06:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Documento]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Documento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Descripcion] [varchar](500) NULL,
	[Ruta] [varchar](100) NULL,
 CONSTRAINT [PK_Documento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocumentoLinea]    Script Date: 06/05/2013 02:06:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentoLinea]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DocumentoLinea](
	[IdDocumento] [int] NOT NULL,
	[IdLinea] [int] NOT NULL,
 CONSTRAINT [PK_DocumentoLinea] PRIMARY KEY CLUSTERED 
(
	[IdDocumento] ASC,
	[IdLinea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 06/05/2013 02:06:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Estado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Estado](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Examen]    Script Date: 06/05/2013 02:06:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Examen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Examen](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProducto] [int] NULL,
	[Titulo] [varchar](400) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaEjecucion] [datetime] NULL,
	[TiempoMaximo] [time](7) NULL,
	[IdEstado] [int] NOT NULL,
	[PuntajeMaximo] [int] NULL,
	[TiempoTranscurrido] [time](7) NULL,
	[IdTipo] [int] NULL,
 CONSTRAINT [PK_Examen] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExamenUsuario]    Script Date: 06/05/2013 02:06:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ExamenUsuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NULL,
	[IdExamen] [int] NULL,
	[IdEjecutivo] [int] NULL,
	[IdAster] [int] NULL,
	[Puntaje] [decimal](18, 2) NULL,
	[Tiempo] [time](7) NULL,
	[FechaTermino] [datetime] NULL,
	[FechaInicio] [datetime] NULL,
	[Estado] [int] NULL,
	[IdPreguntaActual] [int] NULL,
 CONSTRAINT [PK_ExamenUsuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Linea]    Script Date: 06/05/2013 02:06:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Linea]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Linea](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Linea] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NombreTabla]    Script Date: 06/05/2013 02:06:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NombreTabla]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NombreTabla](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tabla] [varchar](200) NULL,
	[NombreMostrar] [varchar](200) NULL,
 CONSTRAINT [PK_NombreTabla] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pregunta]    Script Date: 06/05/2013 02:06:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pregunta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Pregunta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Texto] [varchar](400) NULL,
	[IdTipoPregunta] [int] NULL,
	[IdExamen] [int] NULL,
	[CantidadRespuesta] [int] NULL,
	[Puntaje] [decimal](18, 0) NULL,
	[Orden] [int] NULL,
	[Habilitada] [bit] NULL,
 CONSTRAINT [PK_Pregunta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PreguntaUsuario]    Script Date: 06/05/2013 02:06:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PreguntaUsuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdPregunta] [int] NULL,
	[IdUsuario] [int] NULL,
	[IdExamenUsuario] [int] NULL,
	[Puntaje] [decimal](18, 2) NULL,
 CONSTRAINT [PK_PreguntaUsuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 06/05/2013 02:06:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Producto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Producto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NULL,
	[IdLinea] [int] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PuntajeAsesoria]    Script Date: 06/05/2013 02:06:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PuntajeAsesoria]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PuntajeAsesoria](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[D] [decimal](18, 2) NULL,
	[A] [decimal](18, 2) NULL,
	[B] [decimal](18, 2) NULL,
	[S] [decimal](18, 2) NULL,
	[IdExamen] [int] NULL,
 CONSTRAINT [PK_PuntajeAsesoria] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Respuesta]    Script Date: 06/05/2013 02:06:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Respuesta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Respuesta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Texto] [varchar](400) NULL,
	[Orden] [int] NULL,
	[IdPregunta] [int] NULL,
	[EsCorrecta] [int] NULL,
	[Marcada] [bit] NOT NULL,
	[Puntaje] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Respuesta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RespuestaUsuario]    Script Date: 06/05/2013 02:06:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RespuestaUsuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdRespuesta] [int] NULL,
	[IdUsuario] [int] NULL,
	[IdExamenUsuario] [int] NULL,
	[Texto] [varchar](400) NULL,
	[Marcada] [bit] NOT NULL,
 CONSTRAINT [PK_RespuestaUsuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 06/05/2013 02:06:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sysdiagrams]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sysdiagrams](
	[name] [nvarchar](128) NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] IDENTITY(1,1) NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL,
 CONSTRAINT [PK_sysdiagrams] PRIMARY KEY CLUSTERED 
(
	[diagram_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoExamen]    Script Date: 06/05/2013 02:06:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoExamen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TipoExamen](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
 CONSTRAINT [PK_TipoExamen] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoPregunta]    Script Date: 06/05/2013 02:06:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoPregunta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TipoPregunta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[NombreControl] [varchar](50) NULL,
 CONSTRAINT [PK_TipoPregunta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserMigration]    Script Date: 06/05/2013 02:06:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserMigration]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserMigration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [float] NULL,
	[IdLinea] [float] NULL,
	[Nombres] [nvarchar](255) NULL,
	[Apellidos] [nvarchar](255) NULL,
	[Mail] [nvarchar](255) NULL,
 CONSTRAINT [PK_UserMigration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 06/05/2013 02:06:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserProfile]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserProfile](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Mail] [varchar](100) NULL,
	[IdLinea] [int] NULL,
	[UrlImagen] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.UserProfile] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 06/05/2013 02:06:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_Membership]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[webpages_Membership](
	[UserId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[ConfirmationToken] [nvarchar](128) NULL,
	[IsConfirmed] [bit] NULL,
	[LastPasswordFailureDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[PasswordVerificationToken] [nvarchar](128) NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 06/05/2013 02:06:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_OAuthMembership]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[webpages_OAuthMembership](
	[Provider] [nvarchar](30) NOT NULL,
	[ProviderUserId] [nvarchar](100) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Provider] ASC,
	[ProviderUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 06/05/2013 02:06:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[webpages_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 06/05/2013 02:06:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[webpages_UsersInRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Documento] ON 

GO
INSERT [dbo].[Documento] ([Id], [Nombre], [Descripcion], [Ruta]) VALUES (1, N'Prueba', N'Descripción', N'2M0R152L0W1R0Y6f_T4h5Y4_7Y7e5E0L6U821-3w7y9_0z22.pdf')
GO
SET IDENTITY_INSERT [dbo].[Documento] OFF
GO
INSERT [dbo].[DocumentoLinea] ([IdDocumento], [IdLinea]) VALUES (1, 5)
GO
INSERT [dbo].[DocumentoLinea] ([IdDocumento], [IdLinea]) VALUES (1, 7)
GO
INSERT [dbo].[DocumentoLinea] ([IdDocumento], [IdLinea]) VALUES (1, 8)
GO
SET IDENTITY_INSERT [dbo].[Estado] ON 

GO
INSERT [dbo].[Estado] ([Id], [Nombre]) VALUES (1, N'Activo')
GO
INSERT [dbo].[Estado] ([Id], [Nombre]) VALUES (2, N'Inactivo')
GO
INSERT [dbo].[Estado] ([Id], [Nombre]) VALUES (3, N'Listo')
GO
SET IDENTITY_INSERT [dbo].[Estado] OFF
GO
SET IDENTITY_INSERT [dbo].[Examen] ON 

GO
INSERT [dbo].[Examen] ([Id], [IdProducto], [Titulo], [FechaCreacion], [FechaEjecucion], [TiempoMaximo], [IdEstado], [PuntajeMaximo], [TiempoTranscurrido], [IdTipo]) VALUES (1042, NULL, N'Asesoría en Terreno', CAST(0x0000A1B2002C998D AS DateTime), CAST(0x0000A1B2002C998C AS DateTime), CAST(0x070034E230040000 AS Time), 3, 20, NULL, 2)
GO
INSERT [dbo].[Examen] ([Id], [IdProducto], [Titulo], [FechaCreacion], [FechaEjecucion], [TiempoMaximo], [IdEstado], [PuntajeMaximo], [TiempoTranscurrido], [IdTipo]) VALUES (1046, NULL, N'Asesoría en Terreno 2', CAST(0x0000A1B200409085 AS DateTime), CAST(0x0000A1B200409085 AS DateTime), CAST(0x070034E230040000 AS Time), 1, 20, NULL, 2)
GO
INSERT [dbo].[Examen] ([Id], [IdProducto], [Titulo], [FechaCreacion], [FechaEjecucion], [TiempoMaximo], [IdEstado], [PuntajeMaximo], [TiempoTranscurrido], [IdTipo]) VALUES (1047, NULL, N'Asesoría en Terreno Base', CAST(0x0000A1B20042DFB2 AS DateTime), CAST(0x0000A1B20042DFB2 AS DateTime), CAST(0x070034E230040000 AS Time), 1, 20, NULL, 2)
GO
INSERT [dbo].[Examen] ([Id], [IdProducto], [Titulo], [FechaCreacion], [FechaEjecucion], [TiempoMaximo], [IdEstado], [PuntajeMaximo], [TiempoTranscurrido], [IdTipo]) VALUES (1048, 11, N'Vaxigel', CAST(0x0000A1B5018212E4 AS DateTime), CAST(0x0000A1B800000000 AS DateTime), CAST(0x070034E230040000 AS Time), 3, 20, NULL, 1)
GO
INSERT [dbo].[Examen] ([Id], [IdProducto], [Titulo], [FechaCreacion], [FechaEjecucion], [TiempoMaximo], [IdEstado], [PuntajeMaximo], [TiempoTranscurrido], [IdTipo]) VALUES (1050, 13, N'Vitesol E', CAST(0x0000A1B501843C02 AS DateTime), CAST(0x0000A1B500000000 AS DateTime), CAST(0x070034E230040000 AS Time), 3, 20, NULL, 1)
GO
INSERT [dbo].[Examen] ([Id], [IdProducto], [Titulo], [FechaCreacion], [FechaEjecucion], [TiempoMaximo], [IdEstado], [PuntajeMaximo], [TiempoTranscurrido], [IdTipo]) VALUES (1051, 17, N'Levaler/Alercet D', CAST(0x0000A1B501846571 AS DateTime), CAST(0x0000A1B500000000 AS DateTime), CAST(0x070034E230040000 AS Time), 1, 20, NULL, 1)
GO
INSERT [dbo].[Examen] ([Id], [IdProducto], [Titulo], [FechaCreacion], [FechaEjecucion], [TiempoMaximo], [IdEstado], [PuntajeMaximo], [TiempoTranscurrido], [IdTipo]) VALUES (1052, NULL, N'Evaluación Aster', CAST(0x0000A1B60003D4CF AS DateTime), CAST(0x0000A1B500000000 AS DateTime), CAST(0x070034E230040000 AS Time), 1, 20, NULL, 1)
GO
INSERT [dbo].[Examen] ([Id], [IdProducto], [Titulo], [FechaCreacion], [FechaEjecucion], [TiempoMaximo], [IdEstado], [PuntajeMaximo], [TiempoTranscurrido], [IdTipo]) VALUES (1053, 42, N'Dolantag 2', CAST(0x0000A1B60020F698 AS DateTime), CAST(0x0000A1B600000000 AS DateTime), CAST(0x070034E230040000 AS Time), 1, 20, NULL, 1)
GO
INSERT [dbo].[Examen] ([Id], [IdProducto], [Titulo], [FechaCreacion], [FechaEjecucion], [TiempoMaximo], [IdEstado], [PuntajeMaximo], [TiempoTranscurrido], [IdTipo]) VALUES (1054, 11, N'Vaxigel', CAST(0x0000A1B600210BD1 AS DateTime), CAST(0x0000A1B800000000 AS DateTime), CAST(0x070034E230040000 AS Time), 1, 20, NULL, 1)
GO
INSERT [dbo].[Examen] ([Id], [IdProducto], [Titulo], [FechaCreacion], [FechaEjecucion], [TiempoMaximo], [IdEstado], [PuntajeMaximo], [TiempoTranscurrido], [IdTipo]) VALUES (1055, 11, N'Vaxigel 2', CAST(0x0000A1B600211D5F AS DateTime), CAST(0x0000A1B800000000 AS DateTime), CAST(0x070034E230040000 AS Time), 1, 20, NULL, 1)
GO
INSERT [dbo].[Examen] ([Id], [IdProducto], [Titulo], [FechaCreacion], [FechaEjecucion], [TiempoMaximo], [IdEstado], [PuntajeMaximo], [TiempoTranscurrido], [IdTipo]) VALUES (1057, NULL, N'Asesoría en Terreno Base 2', CAST(0x0000A1B600218F1A AS DateTime), CAST(0x0000A1B600218F19 AS DateTime), CAST(0x070034E230040000 AS Time), 1, 20, NULL, 2)
GO
SET IDENTITY_INSERT [dbo].[Examen] OFF
GO
SET IDENTITY_INSERT [dbo].[ExamenUsuario] ON 

GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1076, NULL, 1042, 10, 215, CAST(4.00 AS Decimal(18, 2)), CAST(0x07000E2707000000 AS Time), CAST(0x0000A1B2002D04E2 AS DateTime), CAST(0x0000A1B2002CF70C AS DateTime), 2, NULL)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1077, NULL, 1042, 10, NULL, NULL, NULL, NULL, CAST(0x0000A1B400EB8D5E AS DateTime), 1, 1056)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1078, 148, 1050, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1079, 214, 1050, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1080, 215, 1050, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1081, 216, 1050, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1082, 217, 1050, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1083, 218, 1050, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1084, 219, 1050, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1085, 220, 1050, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1086, 221, 1050, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1087, 222, 1050, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1088, 223, 1050, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1089, 224, 1050, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1090, 225, 1050, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1091, 226, 1050, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1092, 148, 1048, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1093, 214, 1048, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1094, 215, 1048, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1095, 216, 1048, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1096, 217, 1048, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1097, 218, 1048, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1098, 219, 1048, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1099, 220, 1048, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1100, 221, 1048, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1101, 222, 1048, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1102, 223, 1048, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1103, 224, 1048, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1104, 225, 1048, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1105, 226, 1048, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[ExamenUsuario] OFF
GO
SET IDENTITY_INSERT [dbo].[Linea] ON 

GO
INSERT [dbo].[Linea] ([Id], [Nombre]) VALUES (5, N'Alivio')
GO
INSERT [dbo].[Linea] ([Id], [Nombre]) VALUES (6, N'Salud Mujer')
GO
INSERT [dbo].[Linea] ([Id], [Nombre]) VALUES (7, N'Respiratoria')
GO
INSERT [dbo].[Linea] ([Id], [Nombre]) VALUES (8, N'Salud Digestiva')
GO
INSERT [dbo].[Linea] ([Id], [Nombre]) VALUES (9, N'Corporativo')
GO
INSERT [dbo].[Linea] ([Id], [Nombre]) VALUES (10, N'Acceso')
GO
SET IDENTITY_INSERT [dbo].[Linea] OFF
GO
SET IDENTITY_INSERT [dbo].[NombreTabla] ON 

GO
INSERT [dbo].[NombreTabla] ([Id], [Tabla], [NombreMostrar]) VALUES (1, N'Linea', N'Solución')
GO
INSERT [dbo].[NombreTabla] ([Id], [Tabla], [NombreMostrar]) VALUES (2, N'Aster', N'Aster')
GO
SET IDENTITY_INSERT [dbo].[NombreTabla] OFF
GO
SET IDENTITY_INSERT [dbo].[Pregunta] ON 

GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1055, N'Pregunta Asesoria 11', 9, 1042, 1, CAST(4 AS Decimal(18, 0)), 1, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1056, N'Pregunta Asesoria 22', 9, 1042, 1, CAST(4 AS Decimal(18, 0)), 2, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1060, N'Pregunta Asesoria 1', 9, 1046, 1, CAST(444 AS Decimal(18, 0)), 1, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1061, N'Pregunta Asesoria 2', 9, 1046, 1, CAST(444 AS Decimal(18, 0)), 2, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1062, N'Establece relaciones asertivas', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 1, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1063, N'Segmenta y selecciona sus clientes', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 2, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1064, N'Realiza servicio y seguimiento a compromisos', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 3, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1065, N'Conoce perfil px de Unimed y de la competencia', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 4, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1066, N'Conoce sus productos y  sus aspectos médicos', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 5, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1067, N'Conoce los soportes y herramientas promocionales', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 6, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1068, N'Enfoca posicionamiento', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 7, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1069, N'Enfoca  slogan y  marca', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 8, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1070, N'Maneja promesas básicas según necesidad', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 9, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1071, N'Conoce territorio y su potencial de negocio', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 10, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1072, N'Conoce competidores y sus tácticas y estrategias', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 11, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1073, N'Proporciona educación a los dependientes en su visita', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 12, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1074, N'Indaga stock y rotación de su línea', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 13, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1075, N'Planea objetivo de visita', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 14, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1076, N'Hace Apertura de acuerdo al perfil medico
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 15, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1077, N'Escucha y pregunta con intención (Identificacion de Necesidades)
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 16, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1078, N'Resuelve objeciones y verifica aceptacion
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 17, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1079, N'Adapta el mensaje
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 18, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1080, N'Optimiza los recursos con sus clientes
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 19, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1081, N'Directo en el cierre
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 20, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1082, N'Compromiso
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 21, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1083, N'Implementa continuidad en la visita
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 22, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1084, N'Potencia la relación
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 23, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1085, N'Tiene espíritu ganador
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 24, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1086, N'Trabaja en equipo
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 25, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1087, N'Planes de trabajo ordenados 
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 26, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1088, N'Manejo adecuado de parrilla promocional
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 27, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1089, N'Presentación personal y del automóvil
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 28, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1090, N'Pregunta 1', 1, 1048, 0, CAST(10 AS Decimal(18, 0)), 1, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1091, N'Pregunta 2', 1, 1048, 0, CAST(10 AS Decimal(18, 0)), 2, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1094, N'Pregunta Asesoria 1', 1, 1050, 0, CAST(12 AS Decimal(18, 0)), 1, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1095, N'Prueba Asesoria', 1, 1050, 0, CAST(8 AS Decimal(18, 0)), 2, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1096, N'Pregunta Asesoria 1', 1, 1051, 0, CAST(12 AS Decimal(18, 0)), 1, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1097, N'Pregunta Asesoria 2', 1, 1051, 0, CAST(8 AS Decimal(18, 0)), 2, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1098, N'Pregunta Asesoria 1', 1, 1052, 0, CAST(12 AS Decimal(18, 0)), 1, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1099, N'Pregunta 2', 1, 1052, 0, CAST(2 AS Decimal(18, 0)), 2, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1100, N'Pregunta 3', 1, 1052, 0, CAST(2 AS Decimal(18, 0)), 3, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1101, N'Pregunta 1', 1, 1054, 0, CAST(10 AS Decimal(18, 0)), 1, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1102, N'Pregunta 2', 1, 1054, 1, CAST(10 AS Decimal(18, 0)), 2, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1103, N'Pregunta 1', 1, 1055, 0, CAST(10 AS Decimal(18, 0)), 1, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1104, N'Pregunta 2', 1, 1055, 1, CAST(10 AS Decimal(18, 0)), 2, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1122, N'Establece relaciones asertivas', 9, 1057, 1, CAST(45 AS Decimal(18, 0)), 1, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1123, N'Segmenta y selecciona sus clientes', 9, 1057, 1, CAST(45 AS Decimal(18, 0)), 2, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1124, N'Realiza servicio y seguimiento a compromisos', 9, 1057, 1, CAST(45 AS Decimal(18, 0)), 3, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1125, N'Conoce perfil px de Unimed y de la competencia', 9, 1057, 1, CAST(45 AS Decimal(18, 0)), 4, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1126, N'Conoce sus productos y  sus aspectos médicos', 9, 1057, 1, CAST(45 AS Decimal(18, 0)), 5, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1127, N'Conoce los soportes y herramientas promocionales', 9, 1057, 1, CAST(45 AS Decimal(18, 0)), 6, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1128, N'Enfoca posicionamiento', 9, 1057, 1, CAST(45 AS Decimal(18, 0)), 7, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1129, N'Enfoca  slogan y  marca', 9, 1057, 1, CAST(45 AS Decimal(18, 0)), 8, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1130, N'Maneja promesas básicas según necesidad', 9, 1057, 1, CAST(45 AS Decimal(18, 0)), 9, NULL)
GO
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1131, N'Conoce territorio y su potencial de negocio', 9, 1057, 1, CAST(45 AS Decimal(18, 0)), 10, NULL)
GO
SET IDENTITY_INSERT [dbo].[Pregunta] OFF
GO
SET IDENTITY_INSERT [dbo].[PreguntaUsuario] ON 

GO
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2441, 1055, 10, 1076, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2442, 1056, 10, 1076, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2443, 1055, 10, 1077, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2444, 1056, 10, 1077, CAST(3.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[PreguntaUsuario] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 

GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (1, N'Previne D Geltabs - Previbe D Fort ', 5)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (2, N'Bonese', 5)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (3, N'Flexure - MSM', 5)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (4, N'Betaduo', 5)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (5, N'Dolantag', 5)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (6, N'Meloxx', 5)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (7, N'Tamin', 5)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (8, N'Previne D Geltabs - Previbe D Fort ', 6)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (9, N'Bonese', 6)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (10, N'Albisec', 6)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (11, N'Vaxigel', 6)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (12, N'Gestafer', 6)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (13, N'Vitesol E', 6)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (14, N'Vitesol B6', 6)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (15, N'Lactinese', 6)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (16, N'Tusiclox', 7)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (17, N'Levaler/Alercet D', 7)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (18, N'Xalar', 7)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (19, N'Menistin', 7)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (20, N'Inedol', 7)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (21, N'Bianos', 7)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (22, N'Ezolium', 8)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (23, N'Ifaxim', 8)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (24, N'Alercet', 8)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (25, N'Nytasoft', 8)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (26, N'Muvett/Muvett S', 8)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (27, N'Equiplen', 8)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (28, N'Albisec', 9)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (29, N'Levaler', 9)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (30, N'Nytasoft', 9)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (31, N'Ezolium', 9)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (32, N'Alercet D', 9)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (33, N'Vaxigel', 9)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (34, N'Previne D Geltabs - Fort ', 9)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (35, N'Flexure - MSM', 9)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (36, N'Betaduo', 9)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (37, N'Bianos', 9)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (38, N'Previne D Geltabs - Previbe D Fort ', 10)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (39, N'Bonese', 10)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (40, N'Flexure - MSM', 10)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (41, N'Betaduo', 10)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (42, N'Dolantag', 10)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (43, N'Meloxx', 10)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (44, N'Tamin', 10)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (45, N'Tusiclox', 10)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (46, N'Levaler/Alercet D', 10)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (47, N'Xalar', 10)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (48, N'Menistin', 10)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (49, N'Inedol', 10)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (50, N'Bianos', 10)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (51, N'Ezolium', 10)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (52, N'Ifaxim', 10)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (53, N'Alercet', 10)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (54, N'Nytasoft', 10)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (55, N'Muvett/Muvett S', 10)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (56, N'Equiplen', 10)
GO
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO
SET IDENTITY_INSERT [dbo].[PuntajeAsesoria] ON 

GO
INSERT [dbo].[PuntajeAsesoria] ([Id], [D], [A], [B], [S], [IdExamen]) VALUES (27, CAST(1.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), 1042)
GO
INSERT [dbo].[PuntajeAsesoria] ([Id], [D], [A], [B], [S], [IdExamen]) VALUES (34, CAST(12.00 AS Decimal(18, 2)), CAST(303.00 AS Decimal(18, 2)), CAST(323.00 AS Decimal(18, 2)), CAST(444.00 AS Decimal(18, 2)), 1046)
GO
INSERT [dbo].[PuntajeAsesoria] ([Id], [D], [A], [B], [S], [IdExamen]) VALUES (35, CAST(60.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), CAST(85.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 19)
GO
INSERT [dbo].[PuntajeAsesoria] ([Id], [D], [A], [B], [S], [IdExamen]) VALUES (36, CAST(60.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), CAST(85.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1047)
GO
INSERT [dbo].[PuntajeAsesoria] ([Id], [D], [A], [B], [S], [IdExamen]) VALUES (37, CAST(12.00 AS Decimal(18, 2)), CAST(23.00 AS Decimal(18, 2)), CAST(34.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), 1057)
GO
SET IDENTITY_INSERT [dbo].[PuntajeAsesoria] OFF
GO
SET IDENTITY_INSERT [dbo].[Respuesta] ON 

GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1192, N'D', NULL, 1055, 0, 0, CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1193, N'A', NULL, 1055, 0, 0, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1194, N'B', NULL, 1055, 0, 0, CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1195, N'S', NULL, 1055, 0, 0, CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1196, N'D', NULL, 1056, 0, 0, CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1197, N'A', NULL, 1056, 0, 0, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1198, N'B', NULL, 1056, 0, 0, CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1199, N'S', NULL, 1056, 0, 0, CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1212, N'D', NULL, 1060, 0, 0, CAST(12.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1213, N'A', NULL, 1060, 0, 0, CAST(303.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1214, N'B', NULL, 1060, 0, 0, CAST(323.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1215, N'S', NULL, 1060, 0, 0, CAST(444.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1216, N'D', NULL, 1061, 0, 0, CAST(12.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1217, N'A', NULL, 1061, 0, 0, CAST(303.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1218, N'B', NULL, 1061, 0, 0, CAST(323.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1219, N'S', NULL, 1061, 0, 0, CAST(444.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1220, N'D', NULL, 1062, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1221, N'A', NULL, 1062, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1222, N'B', NULL, 1062, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1223, N'S', NULL, 1062, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1224, N'D', NULL, 1063, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1225, N'A', NULL, 1063, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1226, N'B', NULL, 1063, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1227, N'S', NULL, 1063, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1228, N'D', NULL, 1064, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1229, N'A', NULL, 1064, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1230, N'B', NULL, 1064, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1231, N'S', NULL, 1064, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1232, N'D', NULL, 1065, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1233, N'A', NULL, 1065, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1234, N'B', NULL, 1065, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1235, N'S', NULL, 1065, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1236, N'D', NULL, 1066, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1237, N'A', NULL, 1066, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1238, N'B', NULL, 1066, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1239, N'S', NULL, 1066, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1240, N'D', NULL, 1067, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1241, N'A', NULL, 1067, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1242, N'B', NULL, 1067, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1243, N'S', NULL, 1067, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1244, N'D', NULL, 1068, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1245, N'A', NULL, 1068, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1246, N'B', NULL, 1068, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1247, N'S', NULL, 1068, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1248, N'D', NULL, 1069, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1249, N'A', NULL, 1069, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1250, N'B', NULL, 1069, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1251, N'S', NULL, 1069, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1252, N'D', NULL, 1070, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1253, N'A', NULL, 1070, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1254, N'B', NULL, 1070, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1255, N'S', NULL, 1070, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1256, N'D', NULL, 1071, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1257, N'A', NULL, 1071, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1258, N'B', NULL, 1071, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1259, N'S', NULL, 1071, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1260, N'D', NULL, 1072, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1261, N'A', NULL, 1072, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1262, N'B', NULL, 1072, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1263, N'S', NULL, 1072, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1264, N'D', NULL, 1073, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1265, N'A', NULL, 1073, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1266, N'B', NULL, 1073, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1267, N'S', NULL, 1073, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1268, N'D', NULL, 1074, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1269, N'A', NULL, 1074, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1270, N'B', NULL, 1074, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1271, N'S', NULL, 1074, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1272, N'D', NULL, 1075, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1273, N'A', NULL, 1075, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1274, N'B', NULL, 1075, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1275, N'S', NULL, 1075, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1276, N'D', NULL, 1076, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1277, N'A', NULL, 1076, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1278, N'B', NULL, 1076, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1279, N'S', NULL, 1076, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1280, N'D', NULL, 1077, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1281, N'A', NULL, 1077, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1282, N'B', NULL, 1077, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1283, N'S', NULL, 1077, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1284, N'D', NULL, 1078, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1285, N'A', NULL, 1078, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1286, N'B', NULL, 1078, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1287, N'S', NULL, 1078, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1288, N'D', NULL, 1079, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1289, N'A', NULL, 1079, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1290, N'B', NULL, 1079, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1291, N'S', NULL, 1079, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1292, N'D', NULL, 1080, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1293, N'A', NULL, 1080, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1294, N'B', NULL, 1080, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1295, N'S', NULL, 1080, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1296, N'D', NULL, 1081, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1297, N'A', NULL, 1081, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1298, N'B', NULL, 1081, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1299, N'S', NULL, 1081, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1300, N'D', NULL, 1082, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1301, N'A', NULL, 1082, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1302, N'B', NULL, 1082, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1303, N'S', NULL, 1082, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1304, N'D', NULL, 1083, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1305, N'A', NULL, 1083, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1306, N'B', NULL, 1083, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1307, N'S', NULL, 1083, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1308, N'D', NULL, 1084, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1309, N'A', NULL, 1084, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1310, N'B', NULL, 1084, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1311, N'S', NULL, 1084, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1312, N'D', NULL, 1085, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1313, N'A', NULL, 1085, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1314, N'B', NULL, 1085, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1315, N'S', NULL, 1085, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1316, N'D', NULL, 1086, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1317, N'A', NULL, 1086, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1318, N'B', NULL, 1086, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1319, N'S', NULL, 1086, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1320, N'D', NULL, 1087, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1321, N'A', NULL, 1087, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1322, N'B', NULL, 1087, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1323, N'S', NULL, 1087, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1324, N'D', NULL, 1088, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1325, N'A', NULL, 1088, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1326, N'B', NULL, 1088, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1327, N'S', NULL, 1088, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1328, N'D', NULL, 1089, 0, 0, CAST(60.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1329, N'A', NULL, 1089, 0, 0, CAST(70.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1330, N'B', NULL, 1089, 0, 0, CAST(85.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1331, N'S', NULL, 1089, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1332, N'rpta 1', 1, 1090, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1333, N'rpta 2', 2, 1090, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1334, N'rpta 3', 3, 1090, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1335, N'rpta 4', 4, 1090, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1336, N'rpta 21', 1, 1091, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1337, N'rpta 22', 2, 1091, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1347, N'asdasd', 1, 1094, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1348, N'asdsad', 2, 1094, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1349, N'adasd', 3, 1094, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1350, N'sadasd', 4, 1094, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1351, N'asdsad', 1, 1095, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1352, N'sadasd', 2, 1095, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1353, N'fgdgdf', 3, 1095, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1354, N'hfghfgh', 4, 1095, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1355, N'hgjhgj', 5, 1095, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1356, N'dasd', 1, 1096, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1357, N'sadadas', 2, 1096, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1358, N'gfdgfd', 3, 1096, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1359, N'dfgdfg', 4, 1096, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1360, N'asdasd', 1, 1097, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1361, N'asdasd', 2, 1097, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1362, N'sdfsdf', 3, 1097, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1363, N'fdgfdg', 4, 1097, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1364, N'tttttttt', 1, 1098, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1365, N'uuuuuuuuu', 2, 1098, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1366, N'iiiiiiiiiiii', 1, 1099, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1367, N'asdasdadasd', 1, 1100, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1368, N'rpta 1', 1, 1101, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1369, N'rpta 2', 2, 1101, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1370, N'rpta 3', 3, 1101, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1371, N'rpta 21', 1, 1102, 1, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1372, N'rpta 22', 2, 1102, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1373, N'rpta 1', 1, 1103, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1374, N'rpta 2', 2, 1103, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1375, N'rpta 3', 3, 1103, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1376, N'rpta 21', 1, 1104, 1, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1377, N'rpta 22', 2, 1104, 0, 0, NULL)
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1446, N'D', NULL, 1122, 0, 0, CAST(12.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1447, N'A', NULL, 1122, 0, 0, CAST(23.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1448, N'B', NULL, 1122, 0, 0, CAST(34.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1449, N'S', NULL, 1122, 0, 0, CAST(45.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1450, N'D', NULL, 1123, 0, 0, CAST(12.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1451, N'A', NULL, 1123, 0, 0, CAST(23.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1452, N'B', NULL, 1123, 0, 0, CAST(34.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1453, N'S', NULL, 1123, 0, 0, CAST(45.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1454, N'D', NULL, 1124, 0, 0, CAST(12.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1455, N'A', NULL, 1124, 0, 0, CAST(23.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1456, N'B', NULL, 1124, 0, 0, CAST(34.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1457, N'S', NULL, 1124, 0, 0, CAST(45.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1458, N'D', NULL, 1125, 0, 0, CAST(12.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1459, N'A', NULL, 1125, 0, 0, CAST(23.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1460, N'B', NULL, 1125, 0, 0, CAST(34.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1461, N'S', NULL, 1125, 0, 0, CAST(45.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1462, N'D', NULL, 1126, 0, 0, CAST(12.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1463, N'A', NULL, 1126, 0, 0, CAST(23.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1464, N'B', NULL, 1126, 0, 0, CAST(34.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1465, N'S', NULL, 1126, 0, 0, CAST(45.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1466, N'D', NULL, 1127, 0, 0, CAST(12.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1467, N'A', NULL, 1127, 0, 0, CAST(23.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1468, N'B', NULL, 1127, 0, 0, CAST(34.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1469, N'S', NULL, 1127, 0, 0, CAST(45.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1470, N'D', NULL, 1128, 0, 0, CAST(12.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1471, N'A', NULL, 1128, 0, 0, CAST(23.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1472, N'B', NULL, 1128, 0, 0, CAST(34.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1473, N'S', NULL, 1128, 0, 0, CAST(45.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1474, N'D', NULL, 1129, 0, 0, CAST(12.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1475, N'A', NULL, 1129, 0, 0, CAST(23.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1476, N'B', NULL, 1129, 0, 0, CAST(34.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1477, N'S', NULL, 1129, 0, 0, CAST(45.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1478, N'D', NULL, 1130, 0, 0, CAST(12.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1479, N'A', NULL, 1130, 0, 0, CAST(23.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1480, N'B', NULL, 1130, 0, 0, CAST(34.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1481, N'S', NULL, 1130, 0, 0, CAST(45.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1482, N'D', NULL, 1131, 0, 0, CAST(12.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1483, N'A', NULL, 1131, 0, 0, CAST(23.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1484, N'B', NULL, 1131, 0, 0, CAST(34.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1485, N'S', NULL, 1131, 0, 0, CAST(45.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[Respuesta] OFF
GO
SET IDENTITY_INSERT [dbo].[RespuestaUsuario] ON 

GO
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6702, 1192, 10, 1076, N'D', 0)
GO
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6703, 1193, 10, 1076, N'A', 1)
GO
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6704, 1194, 10, 1076, N'B', 0)
GO
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6705, 1195, 10, 1076, N'S', 0)
GO
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6706, 1196, 10, 1076, N'D', 0)
GO
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6707, 1197, 10, 1076, N'A', 1)
GO
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6708, 1198, 10, 1076, N'B', 0)
GO
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6709, 1199, 10, 1076, N'S', 0)
GO
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6710, 1192, 10, 1077, N'D', 0)
GO
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6711, 1193, 10, 1077, N'A', 1)
GO
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6712, 1194, 10, 1077, N'B', 0)
GO
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6713, 1195, 10, 1077, N'S', 0)
GO
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6714, 1196, 10, 1077, N'D', 0)
GO
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6715, 1197, 10, 1077, N'A', 0)
GO
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6716, 1198, 10, 1077, N'B', 1)
GO
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6717, 1199, 10, 1077, N'S', 0)
GO
SET IDENTITY_INSERT [dbo].[RespuestaUsuario] OFF
GO
SET IDENTITY_INSERT [dbo].[sysdiagrams] ON 

GO
INSERT [dbo].[sysdiagrams] ([name], [principal_id], [diagram_id], [version], [definition]) VALUES (N'Diagrama Sprint 1', 1, 1, 1, 0xD0CF11E0A1B11AE1000000000000000000000000000000003E000300FEFF0900060000000000000000000000010000000100000000000000001000000200000001000000FEFFFFFF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFF22000000FEFFFFFF0400000005000000060000000700000008000000090000000A000000360000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D0000001E0000001F0000002000000021000000FEFFFFFFFEFFFFFF2400000025000000260000002700000028000000290000002A0000002B0000002C0000002D0000002E0000002F000000300000003100000032000000330000003400000035000000FEFFFFFF3700000038000000FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52006F006F007400200045006E00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000500FFFFFFFFFFFFFFFF0200000000000000000000000000000000000000000000000000000000000000F098DA03F848CE0103000000C0140000000000006600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000201FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000006A0F0000000000006F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040002010100000004000000FFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000B0000005A2D000000000000010043006F006D0070004F0062006A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000201FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000003E0000005F000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A0000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D0000001E0000001F000000200000002100000022000000230000002400000025000000260000002700000028000000290000002A0000002B0000002C0000002D0000002E0000002F000000300000003100000032000000330000003400000035000000360000003700000038000000390000003A0000003B0000003C0000003D000000FEFFFFFF3F000000FEFFFFFFFEFFFFFF42000000430000004400000045000000460000004700000048000000490000004A0000004B0000004C0000004D0000004E0000004F0000005000000051000000FEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000434000A1E500C050000803E0000000F00FFFF3C0000003E000000007D00002E6800000C3C0000B7F400006DD600009BD9FFFF5F0E0000DE805B10F195D011B0A000AA00BDCB5C000008003000000000020000030000003C006B0000000900000000000000D9E6B0E91C81D011AD5100A0C90F5739F43B7F847F61C74385352986E1D552F8A0327DB2D86295428D98273C25A2DA2D00002800430000000000000053444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C00002800430000000000000051444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C30000000740E000000B0010000003000A509000007000080010000009E02000000800000060000805363684772696400E69100001860000045737461646F640000003000A509000007000080020000009E02000000800000060000805363684772696400326400009E5200004578616D656E640000006800A5090000070000800300000052000000018000003D000080436F6E74726F6C009C8700003163000052656C6174696F6E736869702027464B5F4578616D656E5F45737461646F27206265747765656E202745737461646F2720616E6420274578616D656E2700008000002800B50100000700008004000000310000005300000002800000436F6E74726F6C00FD870000C162000000003000A50900000700008005000000A2020000008000000800008053636847726964009E070000BC7F000050726567756E746100006C00A50900000700008006000000620000000180000041000080436F6E74726F6C61082B0000C763000052656C6174696F6E736869702027464B5F50726567756E74615F4578616D656E27206265747765656E20274578616D656E2720616E64202750726567756E74612780807F00002800B50100000700008007000000310000005700000002800000436F6E74726F6C611A4C0000D788000000003400A50900000700008009000000A40200000080000009000080536368477269646154D9FFFFA659000052657370756573746100000000007000A5090000070000800A000000620000000180000047000080436F6E74726F6C6103EAFFFFDB73000052656C6174696F6E736869702027464B5F5265737075657374615F50726567756E746127206265747765656E202750726567756E74612720616E642027526573707565737461278000002800B5010000070000800B000000310000005D00000002800000436F6E74726F6C618E0200009A76000000003400A5090000070000800C000000AA020000008000000C00008053636847726964613C0F0000F69F00005469706F50726567756E746100007800A5090000070000800D00000052000000018000004D000080436F6E74726F6C6131180000A393000052656C6174696F6E736869702027464B5F50726567756E74615F5469706F50726567756E746127206265747765656E20275469706F50726567756E74612720616E64202750726567756E74612700000000002800B5010000070000800E000000310000006300000002800000436F6E74726F6C61771A00002C99000000003000A5090000070000800F0000009C0200000080000005000080536368477269646198850000383100004C696E656169646100003800A50900000700008017000000AC020000008000000D000080536368477269646108070000E21D00004578616D656E5573756172696F04000000007400A5090000070000801A00000062000000018000004B000080436F6E74726F6C613D2B00001F28000052656C6174696F6E736869702027464B5F4578616D656E5573756172696F5F4578616D656E27206265747765656E20274578616D656E2720616E6420274578616D656E5573756172696F276100002800B5010000070000801B000000310000006100000002800000436F6E74726F6C61C55D0000F828000000003800A5090000070000801C000000B0020000008000000F0000805363684772696461E83500000A41000050726567756E74615573756172696F0000007C00A5090000070000801D000000620000000180000053000080436F6E74726F6C61C71800002D5F000052656C6174696F6E736869702027464B5F50726567756E74615573756172696F5F50726567756E746127206265747765656E202750726567756E74612720616E64202750726567756E74615573756172696F270000002800B5010000070000801E000000310000006900000002800000436F6E74726F6C610D1B0000647E000000003800A50900000700008021000000B20200000080000010000080536368477269646154D9FFFF762F00005265737075657374615573756172696F00008000A50900000700008022000000520000000180000057000080436F6E74726F6C61E7E9FFFF994D000052656C6174696F6E736869702027464B5F5265737075657374615573756172696F5F52657370756573746127206265747765656E20275265737075657374612720616E6420275265737075657374615573756172696F270000002800B50100000700008023000000310000006D00000002800000436F6E74726F6C612DECFFFF5154000000003400A50900000700008026000000A8020000008000000B0000805363684772696461E83500007CFCFFFF5573657250726F66696C657500008400A5090000070000802700000062000000018000005B000080436F6E74726F6C6103EAFFFFCC11000052656C6174696F6E736869702027464B5F5265737075657374615573756172696F5F5573657250726F66696C6527206265747765656E20275573657250726F66696C652720616E6420275265737075657374615573756172696F270000002800B50100000700008028000000310000007100000002800000436F6E74726F6C611BF8FFFF7B17000000008000A50900000700008029000000620000000180000055000080436F6E74726F6C610F1A0000CC11000052656C6174696F6E736869702027464B5F4578616D656E5573756172696F5F5573657250726F66696C6527206265747765656E20275573657250726F66696C652720616E6420274578616D656E5573756172696F276F270000002800B5010000070000802A000000310000006B00000002800000436F6E74726F6C61211F00009719000000008400A5090000070000802B000000620000000180000059000080436F6E74726F6C6135410000CC11000052656C6174696F6E736869702027464B5F50726567756E74615573756172696F5F5573657250726F66696C6527206265747765656E20275573657250726F66696C652720616E64202750726567756E74615573756172696F276F270000002800B5010000070000802C000000310000006F00000002800000436F6E74726F6C61D03500002428000000003000A5090000070000802D000000A202000000800000080000805363684772696461326400004227000050726F647563746F00006800A5090000070000802E00000052000000018000003F000080436F6E74726F6C6F007B0000A936000052656C6174696F6E736869702027464B5F50726F647563746F5F4C696E656127206265747765656E20274C696E65612720616E64202750726F647563746F278000002800B5010000070000802F000000310000005500000002800000436F6E74726F6C6FB37B00003936000000006C00A50900000700008030000000520000000180000041000080436F6E74726F6C6FC57400007146000052656C6174696F6E736869702027464B5F4578616D656E5F50726F647563746F27206265747765656E202750726F647563746F2720616E6420274578616D656E2775657300002800B50100000700008031000000310000005700000002800000436F6E74726F6C6FD9690000374D000000007000A50900000700008032000000620000000180000045000080436F6E74726F6C6F13430000C811000052656C6174696F6E736869702027464B5F5573657250726F66696C655F4C696E656127206265747765656E20274C696E65612720616E6420275573657250726F66696C652761278000002800B50100000700008033000000310000005B00000002800000436F6E74726F6C6F54750000E318000000003400A50900000700008034000000A6020000008000000A000080536368477269646F0E6A0000528000005469706F4578616D656E657500007000A50900000700008035000000520000000180000045000080436F6E74726F6C6FC57400007974000052656C6174696F6E736869702027464B5F4578616D656E5F5469706F4578616D656E27206265747765656E20275469706F4578616D656E2720616E6420274578616D656E2761278000002800B50100000700008036000000310000005B00000002800000436F6E74726F6C6F0B770000177B000000008800A5090000070000803700000062000000018000005D000080436F6E74726F6C6F3D2B0000C529000052656C6174696F6E736869702027464B5F50726567756E74615573756172696F5F4578616D656E5573756172696F27206265747765656E20274578616D656E5573756172696F2720616E64202750726567756E74615573756172696F2703000000002800B50100000700008038000000310000007300000002800000436F6E74726F6C6FC72E0000703F000000008000A50900000700008039000000620000000180000056000080436F6E74726F6C6F4D180000CC11000052656C6174696F6E736869702027464B5F4578616D656E5573756172696F5F5573657250726F66696C653127206265747765656E20275573657250726F66696C652720616E6420274578616D656E5573756172696F27270000002800B5010000070000803A000000310000006D00000002800000436F6E74726F6C6F011C0000E318000000008000A5090000070000803B000000620000000180000056000080436F6E74726F6C6F8B160000CC11000052656C6174696F6E736869702027464B5F4578616D656E5573756172696F5F5573657250726F66696C653227206265747765656E20275573657250726F66696C652720616E6420274578616D656E5573756172696F27270000002800B5010000070000803C000000310000006D00000002800000436F6E74726F6C6F8B1900002F18000000008800A5090000070000803D00000062000000018000005F000080436F6E74726F6C6FBEFCFFFF2F29000052656C6174696F6E736869702027464B5F5265737075657374615573756172696F5F4578616D656E5573756172696F27206265747765656E20274578616D656E5573756172696F2720616E6420275265737075657374615573756172696F270000002800B5010000070000803E000000310000007500000002800000436F6E74726F6C6F69060000213C0000000000000000000000000000000000000000000000000100FEFF030A0000FFFFFFFF00000000000000000000000000000000170000004D6963726F736F66742044445320466F726D20322E300010000000456D626564646564204F626A6563740000000000F439B271000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000214334120800000015150000B7090000785634120700000014010000450073007400610064006F0000000000000000000000000000000000000000000000000000000000000000000000000000000000E8FECB0500000000D480CA0500000000E080CA0500000000EC80CA0500000000F880CA05000000000481CA05000000001081CA05000000001C81CA05000000002881CA05000000003481CA05000000004081CA05000000004C81CA05000000005881CA05000000006481CA05000000007081CA05000000007C81CA05000000008881CA05000000009481CA05A081CA05A081CA05AC81CA05AC81CA05B881CA05B881CA05C481CA05C481CA05D081CA05D081CA05DC81CA05DC81000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000009624000077140000000000002D010000070000000C000000070000001C010000BC07000054060000EF01000067020000B301000038040000A20300002B020000A2030000A10400002A030000000000000100000015150000B709000000000000020000000200000002000000020000001C010000600900000000000001000000C7110000FF05000000000000010000000100000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F00000007000000450073007400610064006F000000214334120800000096240000962400007856341207000000140100004500780061006D0065006E0000000000020000002E00000006000000020000005000000021000000020000006A0000003700000002000000800000004200000002000000A70000004F00000002000000F1000000A6000000020000000501000072000000020000001A010000FFFFFFFF020000001E0100007A000000020000002D0100008800000002000000510100009900000000000000530100009A000000020000005F010000A20000000200000066010000A4000000020000006B010000A60000000200000091010000BE00000002000000A9010000FFFFFFFF02000000B2010000FFFFFFFF02000000CE01000000000000000000000000000005000000540000002C0000002C0000002C0000003400000000000000000000009624000096240000000000002D010000090000000C000000070000001C010000BC07000054060000EF01000067020000B301000038040000A20300002B020000A2030000A10400002A0300000000000001000000151500009114000000000000070000000700000002000000020000001C010000AB0900000000000001000000C71100001008000000000000020000000200000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000070000004500780061006D0065006E00000002000B00E6910000C8640000C8880000C86400000000000002000000F0F0F00000000000000000000000000000000000010000000400000000000000FD870000C1620000B40A00005801000032000000010000020000B40A000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61100046004B005F004500780061006D0065006E005F00450073007400610064006F00214334120800000096240000A2160000785634120700000014010000500072006500670075006E00740061000000500072006F006700720061006D002000460069006C00650073002000280078003800360029002F004D006900630072006F0073006F00660074002000530051004C0020005300650072007600650072002F003100300030002F0054006F006F006C0073002F00420069006E006E002F00560053005300680065006C006C002F0043006F006D006D006F006E0037002F004900440045002F004D006900630072006F0073006F00660074002E00530071006C005300650072007600650072002E004D0061006E006100670065006D0065006E0074002E00440061007400000000000000000000000000000005000000540000002C0000002C0000002C00000034000000000000000000000096240000A2160000000000002D010000070000000C000000070000001C010000BC07000054060000EF01000067020000B301000038040000A20300002B020000A2030000A10400002A0300000000000001000000151500003A10000000000000050000000500000002000000020000001C010000AB0900000000000001000000C7110000210A000000000000030000000300000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F00000009000000500072006500670075006E0074006100000004000B00326400005E650000165D00005E650000165D0000DE8A0000342C0000DE8A00000000000002000000F0F0F000000000000000000000000000000000000100000007000000000000001A4C0000D7880000F10B00005801000036000000010000020000F10B000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61120046004B005F00500072006500670075006E00740061005F004500780061006D0065006E00214334120800000096240000F01C0000785634120700000014010000520065007300700075006500730074006100000072006F006700720061006D002000460069006C00650073002000280078003800360029002F004D006900630072006F0073006F00660074002000530051004C0020005300650072007600650072002F003100300030002F0054006F006F006C0073002F00420069006E006E002F00560053005300680065006C006C002F0043006F006D006D006F006E0037002F004900440045002F005000750062006C006900630041007300730065006D0062006C006900650073002F0065006E002F004D006900630072006F0073006F00660074002E00530071006C005300000000000000000000000000000005000000540000002C0000002C0000002C00000034000000000000000000000096240000F01C0000000000002D010000070000000C000000070000001C010000BC07000054060000EF01000067020000B301000038040000A20300002B020000A2030000A10400002A0300000000000001000000151500003A10000000000000050000000500000002000000020000001C010000AB0900000000000001000000C71100001008000000000000020000000200000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005C00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000A000000520065007300700075006500730074006100000004000B009C180000BC7F00009C180000A17800007EEBFFFFA17800007EEBFFFF967600000000000002000000F0F0F00000000000000000000000000000000000010000000B000000000000008E0200009A760000680D00005801000037000000010000020000680D000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61150046004B005F005200650073007000750065007300740061005F00500072006500670075006E0074006100214334120800000015150000E30B00007856341207000000140100005400690070006F00500072006500670075006E00740061000000720061006D002000460069006C00650073002000280078003800360029002F004D006900630072006F0073006F00660074002000530051004C0020005300650072007600650072002F003100300030002F0054006F006F006C0073002F00420069006E006E002F00560053005300680065006C006C002F0043006F006D006D006F006E0037002F004900440045002F005000750062006C006900630041007300730065006D0062006C006900650073002F0065006E002F004D006900630072006F0073006F00660074002E00530071006C005300000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000009624000077140000000000002D010000070000000C000000070000001C010000BC07000054060000EF01000067020000B301000038040000A20300002B020000A2030000A10400002A030000000000000100000015150000E30B000000000000030000000300000002000000020000001C010000CB0700000000000001000000C7110000FF05000000000000010000000100000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006200000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000D0000005400690070006F00500072006500670075006E0074006100000002000B00C8190000F69F0000C81900005E9600000000000002000000F0F0F00000000000000000000000000000000000010000000E00000000000000771A00002C990000DF0E00005801000042000000010000020000DF0E000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61180046004B005F00500072006500670075006E00740061005F005400690070006F00500072006500670075006E00740061002143341208000000CD1E0000290E00007856341207000000140100004C0069006E006500610000002E00570069006E0064006F00770073002E0046006F0072006D0073002C002000560065007200730069006F006E003D0032002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000CD1E0000290E0000000000002D0100000D0000000C000000070000001C010000BC07000054060000EF01000067020000B301000038040000A20300002B020000A2030000A10400002A0300000000000001000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000001000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000005400000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000060000004C0069006E00650061000000214334120800000061250000A62800007856341207000000140100004500780061006D0065006E005500730075006100720069006F0000002E0046006F0072006D0073002C002000560065007200730069006F006E003D0032002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002C0000002C0000002C00000034000000000000000000000061250000A6280000000000002D0100000D0000000C000000070000001C010000BC07000054060000EF01000067020000B301000038040000A20300002B020000A2030000A10400002A0300000000000001000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000001000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006400000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000E0000004500780061006D0065006E005500730075006100720069006F00000004000B00326400009C630000165D00009C630000165D00009A290000692C00009A2900000000000002000000F0F0F00000000000000000000000000000000000010000001B00000000000000C55D0000F8280000510F00005801000038000000010000020000510F000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61170046004B005F004500780061006D0065006E005500730075006100720069006F005F004500780061006D0065006E00214334120800000096240000DE200000785634120700000014010000500072006500670075006E00740061005500730075006100720069006F0000006F0072006D0073002C002000560065007200730069006F006E003D0032002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002C0000002C0000002C00000034000000000000000000000096240000DE200000000000002D0100000D0000000C000000070000001C010000BC07000054060000EF01000067020000B301000038040000A20300002B020000A2030000A10400002A0300000000000001000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000001000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006800000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F00000010000000500072006500670075006E00740061005500730075006100720069006F00000004000B005E1A0000BC7F00005E1A0000A178000012480000A178000012480000E86100000000000002000000F0F0F00000000000000000000000000000000000010000001E000000000000000D1B0000647E0000AC1000005801000000000000010000020000AC10000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611B0046004B005F00500072006500670075006E00740061005500730075006100720069006F005F00500072006500670075006E0074006100214334120800000096240000DE2000007856341207000000140100005200650073007000750065007300740061005500730075006100720069006F00000072006D0073002C002000560065007200730069006F006E003D0032002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002C0000002C0000002C00000034000000000000000000000096240000DE200000000000002D0100000D0000000C000000070000001C010000BC07000054060000EF01000067020000B301000038040000A20300002B020000A2030000A10400002A0300000000000001000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000001000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000100000000000000C7110000ED03000000000000000000000000000002000000020000001C010000BC0700000000000000000000072C0000DE20000000000000000000000D00000004000000040000001C010000BC07000024090000A005000078563412040000006A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000110000005200650073007000750065007300740061005500730075006100720069006F00000002000B007EEBFFFFA65900007EEBFFFF545000000000000002000000F0F0F000000000000000000000000000000000000100000023000000000000002DECFFFF515400003F12000058010000320000000100000200003F12000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611D0046004B005F005200650073007000750065007300740061005500730075006100720069006F005F005200650073007000750065007300740061002143341208000000FB140000071800007856341207000000140100005500730065007200500072006F00660069006C0065000000770073002E0046006F0072006D0073002C002000560065007200730069006F006E003D0032002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000FB14000007180000000000002D010000070000000C000000070000001C010000DE0300002A030000EF01000067020000B30100001C020000A20300002B020000A2030000A10400002A0300000000000001000000A4130000B415000000000000050000000500000002000000020000001C010000CA0800000000000001000000440B00003406000000000000010000000100000002000000020000001C010000DE0300000100000000000000440B00000804000000000000000000000000000002000000020000001C010000DE0300000000000000000000B41800006B22000000000000000000000D00000004000000040000001C010000DE03000092040000D002000078563412040000006000000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000C0000005500730065007200500072006F00660069006C006500000004000B00C43B000083140000C43B0000821900007EEBFFFF821900007EEBFFFF762F00000000000002000000F0F0F000000000000000000000000000000000000100000028000000000000001BF8FFFF7B1700005D12000058010000320000000100000200005D12000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611F0046004B005F005200650073007000750065007300740061005500730075006100720069006F005F005500730065007200500072006F00660069006C00650004000B000A410000831400000A4100009E1B00008A1B00009E1B00008A1B0000E21D00000000000002000000F0F0F00000000000000000000000000000000000010000002A00000000000000211F000097190000E61000005801000032000000010000020000E610000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611C0046004B005F004500780061006D0065006E005500730075006100720069006F005F005500730065007200500072006F00660069006C00650004000B00CC42000083140000CC4200009E1B0000124800009E1B0000124800000A4100000000000002000000F0F0F00000000000000000000000000000000000010000002C00000000000000D0350000242800009311000058010000320000000100000200009311000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611E0046004B005F00500072006500670075006E00740061005500730075006100720069006F005F005500730065007200500072006F00660069006C0065002143341208000000FA170000E6210000785634120700000014010000500072006F0064007500630074006F0000006E0064006F00770073002E0046006F0072006D0073002C002000560065007200730069006F006E003D0032002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000FA170000E6210000000000002D0100000D0000000C000000070000001C010000A1040000CF030000EF01000067020000B301000085020000A20300002B020000A2030000A10400002A0300000000000001000000810C00000804000000000000000000000000000002000000020000001C010000A10400000000000001000000810C00000804000000000000000000000000000002000000020000001C010000A10400000100000000000000810C00000804000000000000000000000000000002000000020000001C010000A10400000000000000000000871C0000E621000000000000000000000D00000004000000040000001C010000A1040000820500006603000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F00000009000000500072006F0064007500630074006F00000002000B0098850000403800002C7C0000403800000000000002000000F0F0F00000000000000000000000000000000000010000002F00000000000000B37B0000393600005D0A000058010000320000000100000200005D0A000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61110046004B005F00500072006F0064007500630074006F005F004C0069006E006500610002000B005C760000284900005C7600009E5200000000000002000000F0F0F00000000000000000000000000000000000010000003100000000000000D9690000374D0000D40B00005801000032000000010000020000D40B000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61120046004B005F004500780061006D0065006E005F00500072006F0064007500630074006F0004000B00D494000038310000D4940000EA1A00008E440000EA1A00008E440000831400000000000002000000F0F0F0000000000000000000000000000000000001000000330000000000000054750000E3180000600B00005801000032000000010000020000600B000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61140046004B005F005500730065007200500072006F00660069006C0065005F004C0069006E00650061002143341208000000FA170000E62100007856341207000000140100005400690070006F004500780061006D0065006E0000006F00770073002E0046006F0072006D0073002C002000560065007200730069006F006E003D0032002E0030002E0030002E0030002C002000430075006C0074007500720065003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000FA170000E6210000000000002D0100000D0000000C000000070000001C010000A1040000CF030000EF01000067020000B301000085020000A20300002B020000A2030000A10400002A0300000000000001000000810C00000804000000000000000000000000000002000000020000001C010000A10400000000000001000000810C00000804000000000000000000000000000002000000020000001C010000A10400000100000000000000810C00000804000000000000000000000000000002000000020000001C010000A10400000000000000000000871C0000E621000000000000000000000D00000004000000040000001C010000A1040000820500006603000078563412040000005E00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000B0000005400690070006F004500780061006D0065006E00000002000B005C760000528000005C760000347700000000000002000000F0F0F000000000000000000000000000000000000100000036000000000000000B770000177B0000840D00005801000032000000010000020000840D000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61140046004B005F004500780061006D0065006E005F005400690070006F004500780061006D0065006E0004000B00692C00005C2B0000182E00005C2B0000182E000072510000E8350000725100000000000002000000F0F0F00000000000000000000000000000000000010000003800000000000000C72E0000703F00000D14000058010000320000000100000200000D14000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61200046004B005F00500072006500670075006E00740061005500730075006100720069006F005F004500780061006D0065006E005500730075006100720069006F0004000B00483F000083140000483F0000EA1A0000C8190000EA1A0000C8190000E21D00000000000002000000F0F0F00000000000000000000000000000000000010000003A00000000000000011C0000E31800009311000058010000320000000100000200009311000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D611D0046004B005F004500780061006D0065006E005500730075006100720069006F005F005500730065007200500072006F00660069006C006500310004000B00863D000083140000863D0000361A000006180000361A000006180000E21D00000000000002000000F0F0F00000000000000000000000000000000000010000003C000000000000008B1900002F1800009311000058010000320000000100000200009311000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D611D0046004B005F004500780061006D0065006E005500730075006100720069006F005F005500730065007200500072006F00660069006C006500320004000B0008070000C62A0000BA050000C62A0000BA050000DE3F0000EAFDFFFFDE3F00000000000002000000F0F0F00000000000000000000000000000000000010000003E0000000000000069060000213C0000D7140000580100003C000000010000020000D714000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61210046004B005F005200650073007000750065007300740061005500730075006100720069006F005F004500780061006D0065006E005500730075006100720069006F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300440064007300530074007200650061006D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000160002000300000006000000FFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000023000000182400000000000053006300680065006D00610020005500440056002000440065006600610075006C0074000000000000000000000000000000000000000000000000000000000026000200FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000400000001600000000000000440053005200450046002D0053004300480045004D0041002D0043004F004E00540045004E0054005300000000000000000000000000000000000000000000002C0002010500000007000000FFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000041000000300400000000000053006300680065006D00610020005500440056002000440065006600610075006C007400200050006F007300740020005600360000000000000000000000000036000200FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000005200000012000000000000000C0000009BD9FFFF5F0E00000100260000007300630068005F006C006100620065006C0073005F00760069007300690062006C0065000000010000000B0000001E000000000000000000000000000000000000006400000000000000000000000000000000000000000000000000010000000100000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003400300030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000020000000200000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003400370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000030000000300000000000000320000000100251701000000640062006F00000046004B005F004500780061006D0065006E005F00450073007400610064006F0000000000000000000000C402000000000400000004000000030000000800000001820B0BA0820B0B0000000000000000AD070000000000050000000500000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003400370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000060000000600000000000000360000000100251701000000640062006F00000046004B005F00500072006500670075006E00740061005F004500780061006D0065006E0000000000000000000000C402000000000700000007000000060000000800000001B60217B0B602170000000000000000AD070000000000090000000900000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003400370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C00310034003400300000000A0000000A000000000000003C00000001FF561301000000640062006F00000046004B005F005200650073007000750065007300740061005F00500072006500670075006E007400610000000000000000000000C402000000000B0000000B0000000A0000000800000001B6021770B602170000000000000000AD0700000000000C0000000C00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900390035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C00310034003400300000000D0000000D000000000000004200000001FF357601000000640062006F00000046004B005F00500072006500670075006E00740061005F005400690070006F00500072006500670075006E007400610000000000000000000000C402000000000E0000000E0000000D0000000800000001B6021730B602170000000000000000AD0700000000000F0000000F00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C0031003400340030000000170000001700000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C00310034003400300000001A0000001A000000000000004000000001FF561301000000640062006F00000046004B005F004500780061006D0065006E005500730075006100720069006F005F004500780061006D0065006E0000000000000000000000C402000000001B0000001B0000001A0000000800000001B50217F0B502170000000000000000AD0700000000001C0000001C00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C00310034003400300000001D0000001D00000000000000480000000101357601000000640062006F00000046004B005F00500072006500670075006E00740061005500730075006100720069006F005F00500072006500670075006E007400610000000000000000000000C402000000001E0000001E0000001D0000000800000001B50217B0B502170000000000000000AD070000000000210000002100000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0031003900380030002C0031002C0031003600320030002C0035002C0031003000380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0031003900380030002C00310032002C0032003300340030002C00310031002C00310034003400300000002200000022000000000000004C0000000100561301000000640062006F00000046004B005F005200650073007000750065007300740061005500730075006100720069006F005F0052006500730070007500650073007400610000000000000000000000C402000000002300000023000000220000000800000001B5021770B502170000000000000000AD070000000000260000002600000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003400000034002C0030002C003200380034002C0030002C003900390030002C0031002C003800310030002C0035002C003500340030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200350030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001C00000032002C0030002C003200380034002C0030002C003900390030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001C00000032002C0030002C003200380034002C0030002C003900390030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003A00000034002C0030002C003200380034002C0030002C003900390030002C00310032002C0031003100370030002C00310031002C003700320030000000270000002700000000000000500000000100561301000000640062006F00000046004B005F005200650073007000750065007300740061005500730075006100720069006F005F005500730065007200500072006F00660069006C00650000000000000000000000C402000000002800000028000000270000000800000001B5021730B502170000000000000000AD0700000000002900000029000000000000004A0000000100561301000000640062006F00000046004B005F004500780061006D0065006E005500730075006100720069006F005F005500730065007200500072006F00660069006C00650000000000000000000000C402000000002A0000002A000000290000000800000001B40217F0B402170000000000000000AD0700000000002B0000002B000000000000004E0000000100561301000000640062006F00000046004B005F00500072006500670075006E00740061005500730075006100720069006F005F005500730065007200500072006F00660069006C00650000000000000000000000C402000000002C0000002C0000002B0000000800000001B2021730B202170000000000000000AD0700000000002D0000002D00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003600000034002C0030002C003200380034002C0030002C0031003100380035002C0031002C003900370035002C0035002C003600340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0031003100380035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003100380035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003100380035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003C00000034002C0030002C003200380034002C0030002C0031003100380035002C00310032002C0031003400310030002C00310031002C0038003700300000002E0000002E00000000000000340000000100251701000000640062006F00000046004B005F00500072006F0064007500630074006F005F004C0069006E006500610000000000000000000000C402000000002F0000002F0000002E0000000800000001B2021770B202170000000000000000AD070000000000300000003000000000000000360000000100251701000000640062006F00000046004B005F004500780061006D0065006E005F00500072006F0064007500630074006F0000000000000000000000C402000000003100000031000000300000000800000001B40217B0B402170000000000000000AD0700000000003200000032000000000000003A0000000100561301000000640062006F00000046004B005F005500730065007200500072006F00660069006C0065005F004C0069006E006500610000000000000000000000C402000000003300000033000000320000000800000001B4021770B402170000000000000000AD070000000000340000003400000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003600000034002C0030002C003200380034002C0030002C0031003100380035002C0031002C003900370035002C0035002C003600340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0031003100380035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0031003100380035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0031003100380035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003C00000034002C0030002C003200380034002C0030002C0031003100380035002C00310032002C0031003400310030002C00310031002C0038003700300000003500000035000000000000003A0000000100561301000000640062006F00000046004B005F004500780061006D0065006E005F005400690070006F004500780061006D0065006E0000000000000000000000C402000000003600000036000000350000000800000001B4021730B402170000000000000000AD070000000000370000003700000000000000520000000103437001000000640062006F00000046004B005F00500072006500670075006E00740061005500730075006100720069006F005F004500780061006D0065006E005500730075006100720069006F0000000000000000000000C402000000003800000038000000370000000800000001B70217F0B702170000000000000000AD0F00000100003900000039000000000000004C0000000100561301000000640062006F00000046004B005F004500780061006D0065006E005500730075006100720069006F005F005500730065007200500072006F00660069006C006500310000000000000000000000C402000000003A0000003A000000390000000800000001B9021770B902170000000000000000AD0F00000100003B0000003B000000000000004C0000000100561301000000640062006F00000046004B005F004500780061006D0065006E005500730075006100720069006F005F005500730065007200500072006F00660069006C006500320000000000000000000000C402000000003C0000003C0000003B0000000800000001BA021730BA02170000000000000000AD0F00000100003D0000003D00000000000000540000000103437001000000640062006F00000046004B005F005200650073007000750065007300740061005500730075006100720069006F005F004500780061006D0065006E005500730075006100720069006F0000000000000000000000C402000000003E0000003E0000003D0000000800000001BA0217F0BA02170000000000000000AD0F00000100005A00000003000000010000000200000054000000B70000001A0000000200000017000000B2000000A5000000060000000200000005000000B80000009F0000001D000000050000001C0000003E0000003D0000000A0000000500000009000000380000003D0000002200000009000000210000003C0000003D0000000D0000000C00000005000000220000003D000000320000000F0000002600000032000000310000002E0000000F0000002D0000007C000000890000003D0000001700000021000000A8000000B100000037000000170000001C000000AB000000B00000003B000000260000001700000019000000380000003900000026000000170000001F0000003E000000270000002600000021000000130000003C00000029000000260000001700000025000000440000002B000000260000001C0000002B0000003C000000300000002D000000020000003D0000003C000000350000003400000002000000280000003D0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010003000000000000000C0000000B0000004E61BC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000DBE6B0E91C81D011AD5100A0C90F573900000200E08FD503F848CE010202000010484500000000000000000000000000000000006E0100004400610074006100200053006F0075007200630065003D0052003200440032002D00500043005C0052003200440032003B0049006E0069007400690061006C00200043006100740061006C006F0067003D0054006500730074007300410070007000420044003B0049006E00740065006700720061007400650064002000530065006300750072006900740079003D0054007200750065003B004D0075006C007400690070006C00650041006300740069007600650052006500730075006C00740053006500740073003D00460061006C00730065003B005000610063006B00650074002000530069007A0065003D0034003000390036003B004100700070006C00690063006100740069006F006E0020004E0061006D0065003D0022004D006900630072006F0073006F00660074002000530051004C00200053006500720076006500720020004D0061006E006100670065006D0065006E0074002000530074007500640069006F002200000000800500240000004400690061006700720061006D006100200053007000720069006E00740020003100000000022600160000005400690070006F004500780061006D0065006E00000008000000640062006F0000000002260012000000500072006F0064007500630074006F00000008000000640062006F00000000022600180000005500730065007200500072006F00660069006C006500000008000000640062006F00000000022600220000005200650073007000750065007300740061005500730075006100720069006F00000008000000640062006F0000000002260020000000500072006500670075006E00740061005500730075006100720069006F00000008000000640062006F000000000226001C0000004500780061006D0065006E005500730075006100720069006F00000008000000640062006F000000000226000C0000004C0069006E0065006100000008000000640062006F000000000226001A0000005400690070006F00500072006500670075006E0074006100000008000000640062006F0000000002260014000000520065007300700075006500730074006100000008000000640062006F0000000002260012000000500072006500670075006E0074006100000008000000640062006F000000000226000E0000004500780061006D0065006E00000008000000640062006F000000000224000E000000450073007400610064006F00000008000000640062006F00000001000000D68509B3BB6BF2459AB8371664F0327008004E0000007B00310036003300340043004400440037002D0030003800380038002D0034003200450033002D0039004600410032002D004200360044003300320035003600330042003900310044007D00000000000000000000000000000000000000010003000000000000000C0000000B00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062885214)
GO
INSERT [dbo].[sysdiagrams] ([name], [principal_id], [diagram_id], [version], [definition]) VALUES (N'Diagrama Sprint 2', 1, 2, 1, 0xD0CF11E0A1B11AE1000000000000000000000000000000003E000300FEFF0900060000000000000000000000010000000100000000000000001000000200000001000000FEFFFFFF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFF17000000FEFFFFFF0400000005000000060000000700000008000000240000000A0000000B0000000C0000000D0000000E0000000F00000010000000110000001200000013000000140000001500000016000000FEFFFFFFFEFFFFFF190000001A0000001B0000001C0000001D0000001E0000001F00000020000000210000002200000023000000FEFFFFFF25000000FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52006F006F007400200045006E00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000500FFFFFFFFFFFFFFFF020000000000000000000000000000000000000000000000000000000000000020B3E7AA6339CE0103000000400F0000000000006600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000201FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000AA0A0000000000006F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040002010100000004000000FFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000009000000EA1B000000000000010043006F006D0070004F0062006A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000201FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000002B0000005F000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A0000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D0000001E0000001F000000200000002100000022000000230000002400000025000000260000002700000028000000290000002A000000FEFFFFFF2C000000FEFFFFFFFEFFFFFF2F000000300000003100000032000000330000003400000035000000360000003700000038000000390000003A0000003B000000FEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000434000A1E500C050000801F0000000F00FFFF460000001F000000007D00002E6800000C3C0000BBC40000B593000049EEFFFFF6280000DE805B10F195D011B0A000AA00BDCB5C000008003000000000020000030000003C006B0000000900000000000000D9E6B0E91C81D011AD5100A0C90F5739F43B7F847F61C74385352986E1D552F8A0327DB2D86295428D98273C25A2DA2D00002800430000000000000053444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C00002800430000000000000051444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C1F000000B4090000009F010000003800A50900000700008001000000AC020000008000000D0000805363684772696400AC260000000000004578616D656E5573756172696F08000000003800A50900000700008002000000B0020000008000000F0000805363684772696400AE600000302A000050726567756E74615573756172696F0000003800A50900000700008003000000B2020000008000001000008053636847726964007A0D0000302A00005265737075657374615573756172696F00003400A50900000700008004000000A8020000008000000B000080536368477269640074400000302A00005573657250726F66696C657500008400A50900000700008005000000520000000180000059000080436F6E74726F6C0089560000BB33000052656C6174696F6E736869702027464B5F50726567756E74615573756172696F5F5573657250726F66696C6527206265747765656E20275573657250726F66696C652720616E64202750726567756E74615573756172696F2700000000002800B50100000700008006000000310000006F00000002800000436F6E74726F6C00665300004B33000000008400A5090000070000800700000052000000018000005B000080436F6E74726F6C00F5350000BB33000052656C6174696F6E736869702027464B5F5265737075657374615573756172696F5F5573657250726F66696C6527206265747765656E20275573657250726F66696C652720616E6420275265737075657374615573756172696F270000002800B50100000700008008000000310000007100000002800000436F6E74726F6C009B3200004B33000000008000A50900000700008009000000620000000180000055000080436F6E74726F6C00DF3A0000EE1D000052656C6174696F6E736869702027464B5F4578616D656E5573756172696F5F5573657250726F66696C6527206265747765656E20275573657250726F66696C652720616E6420274578616D656E5573756172696F2700000000002800B5010000070000800A000000310000006B00000002800000436F6E74726F6C00713200000B27000000008000A5090000070000800B000000620000000180000056000080436F6E74726F6C005B370000EE1D000052656C6174696F6E736869702027464B5F4578616D656E5573756172696F5F5573657250726F66696C653127206265747765656E20275573657250726F66696C652720616E6420274578616D656E5573756172696F27000000002800B5010000070000800C000000310000006D00000002800000436F6E74726F6C00AB3F0000BD25000000008000A5090000070000800D000000620000000180000056000080436F6E74726F6C001D390000EE1D000052656C6174696F6E736869702027464B5F4578616D656E5573756172696F5F5573657250726F66696C653227206265747765656E20275573657250726F66696C652720616E6420274578616D656E5573756172696F27000000002800B5010000070000800E000000310000006D00000002800000436F6E74726F6C00214200000925000000008800A5090000070000800F00000062000000018000005D000080436F6E74726F6C00473E0000F21D000052656C6174696F6E736869702027464B5F50726567756E74615573756172696F5F4578616D656E5573756172696F27206265747765656E20274578616D656E5573756172696F2720616E64202750726567756E74615573756172696F2703000000002800B50100000700008010000000310000007300000002800000436F6E74726F6C0088460000A325000000008800A5090000070000801100000062000000018000005F000080436F6E74726F6C0017210000F21D000052656C6174696F6E736869702027464B5F5265737075657374615573756172696F5F4578616D656E5573756172696F27206265747765656E20274578616D656E5573756172696F2720616E6420275265737075657374615573756172696F270000002800B50100000700008012000000310000007500000002800000436F6E74726F6C00A6190000BD25000000003000A509000007000080130000009E02000000800000060000805363684772696400DC5000006A4A00004578616D656E640000007400A5090000070000801400000062000000018000004B000080436F6E74726F6C00A13C0000EE1D000052656C6174696F6E736869702027464B5F4578616D656E5573756172696F5F4578616D656E27206265747765656E20274578616D656E2720616E6420274578616D656E5573756172696F270000002800B50100000700008015000000310000006100000002800000436F6E74726F6C00435D00004A24000000003000A50900000700008016000000A2020000008000000800008053636847726964002A120000584D000050726567756E746100006C00A50900000700008017000000520000000180000041000080436F6E74726F6C61A53A0000574C000052656C6174696F6E736869702027464B5F50726567756E74615F4578616D656E27206265747765656E20274578616D656E2720616E64202750726567756E74612700000000002800B50100000700008018000000310000005700000002800000436F6E74726F6C615E4000009D4E000000007C00A50900000700008019000000620000000180000053000080436F6E74726F6C61E11C0000323E000052656C6174696F6E736869702027464B5F50726567756E74615573756172696F5F50726567756E746127206265747765656E202750726567756E74612720616E64202750726567756E74615573756172696F276900002800B5010000070000801A000000310000006900000002800000436F6E74726F6C61C6460000CA43000000003400A5090000070000801B000000A402000000800000090000805363684772696461AAECFFFF302A00005265737075657374616C657500007000A5090000070000801C000000620000000180000047000080436F6E74726F6C61E7F6FFFF4D3E000052656C6174696F6E736869702027464B5F5265737075657374615F50726567756E746127206265747765656E202750726567756E74612720616E642027526573707565737461271C00002800B5010000070000801D000000310000005D00000002800000436F6E74726F6C61541A00001441000000008000A5090000070000801E000000520000000180000057000080436F6E74726F6C61BF020000BB33000052656C6174696F6E736869702027464B5F5265737075657374615573756172696F5F52657370756573746127206265747765656E20275265737075657374612720616E6420275265737075657374615573756172696F270000002800B5010000070000801F000000310000006D00000002800000436F6E74726F6C614B0000004B330000000000000000000000000000000000000000000000000100FEFF030A0000FFFFFFFF00000000000000000000000000000000170000004D6963726F736F66742044445320466F726D20322E300010000000456D626564646564204F626A6563740000000000F439B271000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010003000000000000000C0000000B0000004E61BC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000DBE6B0E91C81D011AD5100A0C90F573900000200401FE3AA6339CE010202000010484500000000000000000000000000000000006E0100004400610074006100200053006F0075007200630065003D0052003200440032002D00500043005C0052003200440032003B0049006E0069007400690061006C0020004300610074002143341208000000A7290000A92000007856341207000000140100004500780061006D0065006E005500730075006100720069006F0000005C004D006900630072006F0073006F00660074002000530051004C0020005300650072007600650072005C003100310030005C0054006F006F006C0073005C00420069006E006E005C004D0061006E006100670065006D0065006E007400530074007500640069006F005C0054006F006F006C0073005C005600440054003B003B0063003A005C00500072006F006700720061006D002000460069006C00650073002000280078003800360029005C004D006900630072006F0073006F00660074002000560069007300750061006C002000000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000A7290000A9200000000000002D0100000A0000000C000000070000001C010000F70800005307000049020000D0020000FE010000DD04000047040000850200004704000064050000B10300000000000001000000411700005319000000000000080000000800000002000000020000001C010000E60A00000000000001000000F2130000DA0A000000000000030000000300000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000006400000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000E0000004500780061006D0065006E005500730075006100720069006F0000002143341208000000A7290000BD160000785634120700000014010000500072006500670075006E00740061005500730075006100720069006F000000009A53150500000000000000030000000000000000000000000100000001000000000000A8514A6984644A6948B68969A8514A6984644A6948B68969F400F500F600F700F800F900FA00FB00FC00FD00FE00FF00600070006000700060004000700070003000300060003000B0007000700070007000400050004000700060009000500060005000800070008000800060006000800090003000400070006000B000900090007000900070006000700080007000B000700070007000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000A7290000BD160000000000002D010000070000000C000000070000001C010000F70800005307000049020000D0020000FE010000DD04000047040000850200004704000064050000B1030000000000000100000041170000670F000000000000040000000400000002000000020000001C010000E60A00000000000001000000F2130000DA0A000000000000030000000300000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000006800000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F00000010000000500072006500670075006E00740061005500730075006100720069006F0000002143341208000000A7290000BD1600007856341207000000140100005200650073007000750065007300740061005500730075006100720069006F00000072005C003100300030005C0054006F006F006C0073005C00420069006E006E005C003B0063003A005C00500072006F006700720061006D002000460069006C00650073005C004D006900630072006F0073006F00660074002000530051004C0020005300650072007600650072005C003100300030005C0054006F006F006C0073005C00420069006E006E005C003B0063003A005C00500072006F006700720061006D002000460069006C00650073002000280078003800360029005C004D006900630072006F0073006F00000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000A7290000BD160000000000002D010000070000000C000000070000001C010000F70800005307000049020000D0020000FE010000DD04000047040000850200004704000064050000B1030000000000000100000041170000E211000000000000050000000500000002000000020000001C010000E60A00000000000001000000F2130000DA0A000000000000030000000300000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000006A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000110000005200650073007000750065007300740061005500730075006100720069006F000000214334120800000041170000D81600007856341207000000140100005500730065007200500072006F00660069006C0065000000A7A6A63E000000000000000000000000A9A8283E000000000000000000000000D1D0503D0000000000000000000000008180003C000000000000000000000000000000003D006E00650075007400720061006C002C0020005000750062006C00690063004B006500790054006F006B0065006E003D00620037003700610035006300350036003100390033003400650030003800390000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A7290000C51A0000000000002D010000090000000C000000070000001C010000F70800005307000049020000D0020000FE010000DD04000047040000850200004704000064050000B1030000000000000100000041170000D816000000000000070000000700000002000000020000001C0100009B0A00000000000001000000F21300009408000000000000020000000200000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000006000000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000C0000005500730065007200500072006F00660069006C006500000002000B00B557000052350000AE600000523500000000000002000000F0F0F00000000000000000000000000000000000010000000600000000000000665300004B3300009311000058010000320000000100000200009311000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611E0046004B005F00500072006500670075006E00740061005500730075006100720069006F005F005500730065007200500072006F00660069006C00650002000B00744000005235000021370000523500000000000002000000F0F0F000000000000000000000000000000000000100000008000000000000009B3200004B3300005D12000058010000320000000100000200005D12000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611F0046004B005F005200650073007000750065007300740061005500730075006100720069006F005F005500730065007200500072006F00660069006C00650004000B00584D0000302A0000584D00005C2600005A3C00005C2600005A3C0000A92000000000000002000000F0F0F00000000000000000000000000000000000010000000A00000000000000713200000B270000E61000005801000032000000010000020000E610000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611C0046004B005F004500780061006D0065006E005500730075006100720069006F005F005500730065007200500072006F00660069006C00650004000B00D4490000302A0000D4490000C4270000D6380000C4270000D6380000A92000000000000002000000F0F0F00000000000000000000000000000000000010000000C00000000000000AB3F0000BD2500009311000058010000320000000100000200009311000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611D0046004B005F004500780061006D0065006E005500730075006100720069006F005F005500730065007200500072006F00660069006C006500310004000B00964B0000302A0000964B000010270000983A000010270000983A0000A92000000000000002000000F0F0F00000000000000000000000000000000000010000000E0000000000000021420000092500009311000058010000320000000100000200009311000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D611D0046004B005F004500780061006D0065006E005500730075006100720069006F005F005500730065007200500072006F00660069006C006500320004000B00DE3F0000A9200000DE3F0000F4240000C6750000F4240000C6750000302A00000000000002000000F0F0F0000000000000000000000000000000000001000000100000000000000088460000A32500000D14000058010000320000000100000200000D14000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61200046004B005F00500072006500670075006E00740061005500730075006100720069006F005F004500780061006D0065006E005500730075006100720069006F0004000B0014370000A920000014370000C427000092220000C427000092220000302A00000000000002000000F0F0F00000000000000000000000000000000000010000001200000000000000A6190000BD250000D71400005801000032000000010000020000D714000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61210046004B005F005200650073007000750065007300740061005500730075006100720069006F005F004500780061006D0065006E005500730075006100720069006F00214334120800000041170000491E00007856341207000000140100004500780061006D0065006E0000009DDF0115D1118C7A00C04FC297EB01000000C6B5C4C269CC63458DD1A5144E8AEF0604000000020000000000106600000001000020000000ABC998D765899886C0FDA78FCC252E7C4A27EBA19F83560825973A83535D4119000000000E8000000002000020000000DF0B28CA548850D6617B62C2D8BD22312FF774B4CAEFC7137BC28025855E2C7360000000AAFD7A920EBCC3D127FEFF600244F58CA49E3462D606D9575B52E7DDC2C042B14AC0CB47B0FE2B084DCE954BB2EF6B06E0DA73475C7BA95B397C267F5304093542128107D40A845E2BF10E14D1C444316AC5BC65000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A729000097210000000000002D0100000C0000000C000000070000001C010000F70800005307000049020000D0020000FE010000DD04000047040000850200004704000064050000B1030000000000000100000041170000491E0000000000000A0000000A00000002000000020000001C0100009B0A00000000000001000000F2130000200D000000000000040000000400000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000005600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000070000004500780061006D0065006E00000004000B00945C00006A4A0000945C0000A82500001C3E0000A82500001C3E0000A92000000000000002000000F0F0F00000000000000000000000000000000000010000001500000000000000435D00004A240000510F00005801000032000000010000020000510F000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61170046004B005F004500780061006D0065006E005500730075006100720069006F005F004500780061006D0065006E002143341208000000A72900004D1F0000785634120700000014010000500072006500670075006E0074006100000000400000000000000040150000004A050000F75E236E220000802B01000049050000140000002600000046050000480500000000000010000000070000004B050000270000001C0000001B0000004B0500000000000000000840000000000000F03F100000000700000054050000270000001C0000001B000000540500000000000000000040000000000000004010000000275E236E55050080360100002400000027000000550500000200000002000000000000000000804100000000000080411000000007000000560500002B00000010000000070000005705000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000A72900004D1F0000000000002D010000090000000C000000070000001C010000F70800005307000049020000D0020000FE010000DD04000047040000850200004704000064050000B10300000000000001000000541700006A1E000000000000070000000700000002000000020000001C010000AA0A00000000000001000000F2130000DA0A000000000000030000000300000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F00000009000000500072006500670075006E0074006100000002000B00DC500000EE4D0000D13B0000EE4D00000000000002000000F0F0F000000000000000000000000000000000000100000018000000000000005E4000009D4E0000F10B00005801000032000000010000020000F10B000058010000020000000000050000800800008001000000150001000000900144420100065461686F6D61120046004B005F00500072006500670075006E00740061005F004500780061006D0065006E0004000B00781E0000584D0000781E00001B430000C67500001B430000C6750000ED4000000000000002000000F0F0F00000000000000000000000000000000000010000001A00000000000000C6460000CA430000AC1000005801000032000000010000020000AC10000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D611B0046004B005F00500072006500670075006E00740061005500730075006100720069006F005F00500072006500670075006E0074006100214334120800000041170000D816000078563412070000001401000052006500730070007500650073007400610000000000000001000000270048004F004800570048000300260052004F0058005000000000410000C040000040400000C040000080400000C04000004040000000410000E040000040400000E040000030411000000007000000640500002A000000580000003900000064050000C000EC020000000000000000145E236E000000808E01236E000000808A01524000000000000014400000000000001C40000000000000204001000000000000000100000051000000E040000048000000180000006205000038000000100000005100000000000000000028401000000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A7290000C51A0000000000002D010000090000000C000000070000001C010000F70800005307000049020000D0020000FE010000DD04000047040000850200004704000064050000B1030000000000000100000041170000D816000000000000070000000700000002000000020000001C010000AA0A00000000000001000000F21300009408000000000000020000000200000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000005C00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000A000000520065007300700075006500730074006100000004000B00983A0000584D0000983A00001B43000062F8FFFF1B43000062F8FFFF084100000000000002000000F0F0F00000000000000000000000000000000000010000001D00000000000000541A000014410000680D00005801000037000000010000020000680D000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61150046004B005F005200650073007000750065007300740061005F00500072006500670075006E007400610002000B00EB030000523500007A0D0000523500000000000002000000F0F0F00000000000000000000000000000000000010000001F000000000000004B0000004B3300003F120000580100002A0000000100000200003F12000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D611D0046004B005F005200650073007000750065007300740061005500730075006100720069006F005F00520065007300700075006500730074006100000000000000000000000000000000000000000000000300440064007300530074007200650061006D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000160002000300000006000000FFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000180000007A1600000000000053006300680065006D00610020005500440056002000440065006600610075006C0074000000000000000000000000000000000000000000000000000000000026000200FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000002D0000001600000000000000440053005200450046002D0053004300480045004D0041002D0043004F004E00540045004E0054005300000000000000000000000000000000000000000000002C0002010500000007000000FFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000002E000000700300000000000053006300680065006D00610020005500440056002000440065006600610075006C007400200050006F007300740020005600360000000000000000000000000036000200FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000003C00000012000000000000000C00000049EEFFFFF62800000100260000007300630068005F006C006100620065006C0073005F00760069007300690062006C0065000000010000000B0000001E000000000000000000000000000000000000006400000000000000000000000000000000000000000000000000010000000100000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003700390030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000020000000200000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003700390030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000030000000300000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003700390030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000040000000400000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003700310035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C00310036003600350000000500000005000000000000004E00000001FF6C1C01000000640062006F00000046004B005F00500072006500670075006E00740061005500730075006100720069006F005F005500730065007200500072006F00660069006C00650000000000000000000000C4020000000006000000060000000500000008000000015A1316305A13160000000000000000AD0700000000000700000007000000000000005000000001FF6C1C01000000640062006F00000046004B005F005200650073007000750065007300740061005500730075006100720069006F005F005500730065007200500072006F00660069006C00650000000000000000000000C402000000000800000008000000070000000800000001591316F05913160000000000000000AD0700000000000900000009000000000000004A00000001016C1C01000000640062006F00000046004B005F004500780061006D0065006E005500730075006100720069006F005F005500730065007200500072006F00660069006C00650000000000000000000000C402000000000A0000000A000000090000000800000001591316B05913160000000000000000AD0700000000000B0000000B000000000000004C00000001016C1C01000000640062006F00000046004B005F004500780061006D0065006E005500730075006100720069006F005F005500730065007200500072006F00660069006C006500310000000000000000000000C402000000000C0000000C0000000B0000000800000001591316705913160000000000000000AD0700000000000D0000000D000000000000004C00000001016C1C01000000640062006F00000046004B005F004500780061006D0065006E005500730075006100720069006F005F005500730065007200500072006F00660069006C006500320000000000000000000000C402000000000E0000000E0000000D0000000800000001591316305913160000000000000000AD0700000000000F0000000F00000000000000520000000103000001000000640062006F00000046004B005F00500072006500670075006E00740061005500730075006100720069006F005F004500780061006D0065006E005500730075006100720069006F0000000000000000000000C4020000000010000000100000000F0000000800000001581316F05813160000000000000000AD070000000000110000001100000000000000540000000103000001000000640062006F00000046004B005F005200650073007000750065007300740061005500730075006100720069006F005F004500780061006D0065006E005500730075006100720069006F0000000000000000000000C402000000001200000012000000110000000800000001581316B05813160000000000000000AD070000000000130000001300000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003700310035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C00310036003600350000001400000014000000000000004000000001016C1C01000000640062006F00000046004B005F004500780061006D0065006E005500730075006100720069006F005F004500780061006D0065006E0000000000000000000000C402000000001500000015000000140000000800000001551316F05513160000000000000000AD070000000000160000001600000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003700330030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000170000001700000000000000360000000101171601000000640062006F00000046004B005F00500072006500670075006E00740061005F004500780061006D0065006E0000000000000000000000C402000000001800000018000000170000000800000001581316705813160000000000000000AD0700000000001900000019000000000000004800000001009C7501000000640062006F00000046004B005F00500072006500670075006E00740061005500730075006100720069006F005F00500072006500670075006E007400610000000000000000000000C402000000001A0000001A000000190000000800000001581316305813160000000000000000AD0700000000001B0000001B00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003700330030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C00310036003600350000001C0000001C000000000000003C00000001046C1C01000000640062006F00000046004B005F005200650073007000750065007300740061005F00500072006500670075006E007400610000000000000000000000C402000000001D0000001D0000001C0000000800000001571316F05713160000000000000000AD0700000000001E0000001E000000000000004C00000001016C1C01000000640062006F00000046004B005F005200650073007000750065007300740061005500730075006100720069006F005F0052006500730070007500650073007400610000000000000000000000C402000000001F0000001F0000001E0000000800000001571316B05713160000000000000000AD0700000000003C0000000F00000001000000020000005500000046000000110000000100000003000000370000004600000005000000040000000200000071000000B000000007000000040000000300000070000000B10000000900000004000000010000002A000000490000000B00000004000000010000001E0000003D0000000D00000004000000010000002400000043000000140000001300000001000000260000004F000000170000001300000016000000560000008D00000019000000160000000200000028000000470000001C000000160000001B00000088000000270000001E0000001B0000000300000071000000B000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000061006C006F0067003D0054006500730074007300410070007000420044003B0049006E00740065006700720061007400650064002000530065006300750072006900740079003D0054007200750065003B004D0075006C007400690070006C00650041006300740069007600650052006500730075006C00740053006500740073003D00460061006C00730065003B005000610063006B00650074002000530069007A0065003D0034003000390036003B004100700070006C00690063006100740069006F006E0020004E0061006D0065003D0022004D006900630072006F0073006F00660074002000530051004C00200053006500720076006500720020004D0061006E006100670065006D0065006E0074002000530074007500640069006F002200000000800500240000004400690061006700720061006D006100200053007000720069006E0074002000320000000002260014000000520065007300700075006500730074006100000008000000640062006F0000000002260012000000500072006500670075006E0074006100000008000000640062006F000000000226000E0000004500780061006D0065006E00000008000000640062006F00000000022600180000005500730065007200500072006F00660069006C006500000008000000640062006F00000000022600220000005200650073007000750065007300740061005500730075006100720069006F00000008000000640062006F0000000002260020000000500072006500670075006E00740061005500730075006100720069006F00000008000000640062006F000000000224001C0000004500780061006D0065006E005500730075006100720069006F00000008000000640062006F00000001000000D68509B3BB6BF2459AB8371664F0327008004E0000007B00310036003300340043004400440037002D0030003800380038002D0034003200450033002D0039004600410032002D004200360044003300320035003600330042003900310044007D00000000000000000000000000000000000000010003000000000000000C0000000B0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062885214)
GO
INSERT [dbo].[sysdiagrams] ([name], [principal_id], [diagram_id], [version], [definition]) VALUES (N'Diagrama Cierre', 1, 1002, 1, 0xD0CF11E0A1B11AE1000000000000000000000000000000003E000300FEFF0900060000000000000000000000010000000100000000000000001000000200000001000000FEFFFFFF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFF09000000FEFFFFFF04000000050000000600000007000000080000000A000000FEFFFFFF0B0000000C0000000D0000000E0000000F000000FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52006F006F007400200045006E00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000500FFFFFFFFFFFFFFFF020000000000000000000000000000000000000000000000000000000000000000E7A8EBF748CE010300000040160000000000006600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000201FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000046020000000000006F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040002010100000004000000FFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000A000000AD08000000000000010043006F006D0070004F0062006A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000201FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000002D0000005F00000000000000010000000200000003000000040000000500000006000000070000000800000009000000FEFFFFFF0B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D0000001E0000001F000000200000002100000022000000230000002400000025000000260000002700000028000000290000002A0000002B0000002C000000FEFFFFFF2E000000FEFFFFFF300000003100000032000000330000003400000035000000360000003700000038000000390000003A0000003B0000003C0000003D0000003E0000003F000000400000004100000042000000430000004400000045000000460000004700000048000000490000004A0000004B000000FEFFFFFFFEFFFFFF4E0000004F0000005000000051000000520000005300000054000000550000005600000057000000FEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000430000A1E100C05000080050000000F00FFFF05000000007D00002E6800000C3C0000F47900007B9B000000000000A94D0000DE805B10F195D011B0A000AA00BDCB5C000008003000000000020000030000003C006B0000000900000000000000D9E6B0E91C81D011AD5100A0C90F5739F43B7F847F61C74385352986E1D552F8A0327DB2D86295428D98273C25A2DA2D00002800430000000000000053444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C00002800430000000000000051444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C05000000540100000085010000003000A509000007000080010000009E0200000080000006000080536368477269640060090000225600004578616D656E640000003800A50900000700008002000000B0020000008000000F0000805363684772696400000000009033000050756E74616A65417365736F7269610000007800A5090000070000800300000052000000018000004F000080436F6E74726F6C00811300000D4A000052656C6174696F6E736869702027464B5F50756E74616A65417365736F7269615F4578616D656E27206265747765656E20274578616D656E2720616E64202750756E74616A65417365736F726961270000002800B50100000700008004000000310000006500000002800000436F6E74726F6C00C7150000C950000000003400A50900000700008005000000A8020000008000000B000080536368477269640000000000000000004E6F6D6272655461626C616F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000214334120800000041170000491E00007856341207000000140100004500780061006D0065006E0000000000000000000000000000808F4000000000000010400100000000000000000000000E000000050000001801000000000000000000000000000000000000F800000000000000050000000000000000000000020000000000000000808F4000000000000000000000000000808F400000000000000040040000002000000030000000000000000000000000708F4000000000000010400000000000000040000000000000004000000000000000000100000000000000050000000000000040000000010000000000000000000040000000000000104004000000200000002000000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A729000097210000000000002D0100000C0000000C000000070000001C010000F708000053070000390300000B040000D0020000DD04000018060000A203000018060000BC07000046050000000000000100000041170000491E0000000000000A0000000A00000002000000020000001C010000E60A00000000000001000000F2130000200D000000000000040000000400000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000005600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000070000004500780061006D0065006E0000002143341208000000A729000038190000785634120700000014010000500075006E00740061006A00650041007300650073006F00720069006100000088BA24150500000000000000030000000000000000000000000100000001000000000000A851AA6D8464AA6D48B6E96DA851AA6D8464AA6D48B6E96D8464AA6D48B6E96DA851AA6D6050AA6DA0BF1F5BB0BF1F5BB0BF1F5BC0BF1F5BC0BF1F5BD0BF1F5BD0BF1F5BE0BF1F5BE0BF1F5BF0BF1F5BF0BF1F5B00C01F5B00C01F5B10C01F5B10C01F5B20C01F5B20C01F5B30C01F5B30C01F5B40C01F5B40C01F5B50C01F5B50C01F5B64C01F5B64C01F5B74C01F5B74C01F5B84C01F5B84C01F5B94C01F5B94C01F5BA4C01F5BA4C0000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000A729000038190000000000002D010000080000000C000000070000001C010000F708000053070000390300000B040000D0020000DD04000018060000A203000018060000BC070000460500000000000001000000411700005D14000000000000060000000600000002000000020000001C010000E60A00000000000001000000F21300004E06000000000000010000000100000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000006800000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F00000010000000500075006E00740061006A00650041007300650073006F00720069006100000002000B00181500002256000018150000C84C00000000000002000000F0F0F00001000000000000000000000000000000010000000400000000000000C7150000C9500000C50F00005801000032000000010000020000C50F000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61190046004B005F00500075006E00740061006A00650041007300650073006F007200690061005F004500780061006D0065006E002143341208000000A7290000DD2300007856341207000000140100004E006F006D006200720065005400610062006C0061000000440000000200000001000000C800000000000000D800000003000000010000000001000000000000446174615F5053004D756C7469706C7952616469616C4772616469656E7443656E74657265645F5053315F436F6E7374616E745461626C6500666C48616C66546578656C53697A654E6F726D616C697A656400AB000003000100010001000000000000007D00000098000000050000000100010001000100A80000004C000000B0000000050000000100010001000100C00000004D756C7469706C7952616469616C4772616469656E7443656E74000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000A7290000DD230000000000002D0100000D0000000C000000070000001C010000F708000053070000390300000B040000D0020000DD04000018060000A203000018060000BC070000460500000000000001000000F21300000804000000000000000000000000000002000000020000001C010000F70800000000000001000000F21300000804000000000000000000000000000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000006000000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000C0000004E006F006D006200720065005400610062006C0061000000000000000000000000000000000000000000000100FEFF030A0000FFFFFFFF00000000000000000000000000000000170000004D6963726F736F66742044445320466F726D20322E300010000000456D626564646564204F626A6563740000000000F439B2710000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C00000000000000A94D00000100260000007300630068005F006C006100620065006C0073005F00760069007300690062006C0065000000010000000B0000000300440064007300530074007200650061006D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000160002000300000006000000FFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000002F0000003F0700000000000053006300680065006D00610020005500440056002000440065006600610075006C0074000000000000000000000000000000000000000000000000000000000026000200FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000004C0000001600000000000000440053005200450046002D0053004300480045004D0041002D0043004F004E00540045004E0054005300000000000000000000000000000000000000000000002C0002010500000007000000FFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000004D000000B80200000000000053006300680065006D00610020005500440056002000440065006600610075006C007400200050006F007300740020005600360000000000000000000000000036000200FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000005800000012000000000000001E000000000000000000000000000000000000006400000000000000000000000000000000000000000000000000010000000100000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003700390030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000020000000200000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003700390030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000030000000300000000000000440000000101357601000000640062006F00000046004B005F00500075006E00740061006A00650041007300650073006F007200690061005F004500780061006D0065006E0000000000000000000000C4020000000004000000040000000300000008000000019B260B609B260B0000000000000000AD070000000000050000000500000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C003100360036003500000005000000030000000100000002000000260000004700000000010003000000000000000C0000000B0000004E61BC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000DBE6B0E91C81D011AD5100A0C90F573900000200803DA5EBF748CE010202000010484500000000000000000000000000000000006E0100004400610074006100200053006F0075007200630065003D0052003200440032002D00500043005C0052003200440032003B0049006E0069007400690061006C00200043006100740061006C006F0067003D0054006500730074007300410070007000420044003B0049006E00740065006700720061007400650064002000530065006300750072006900740079003D0054007200750065003B004D0075006C007400690070006C00650041006300740069007600650052006500730075006C00740053006500740073003D00460061006C00730065003B005000610063006B00650074002000530069007A0065003D0034003000390036003B004100700070006C00690063006100740069006F006E0020004E0061006D0065003D0022004D006900630072006F0073006F00660074002000530051004C00200053006500720076006500720020004D0061006E006100670065006D0065006E0074002000530074007500640069006F002200000000800500200000004400690061006700720061006D006100200043006900650072007200650000000002260020000000500075006E00740061006A00650041007300650073006F00720069006100000008000000640062006F000000000226000E0000004500780061006D0065006E00000008000000640062006F00000000022400180000004E006F006D006200720065005400610062006C006100000008000000640062006F00000001000000D68509B3BB6BF2459AB8371664F0327008004E0000007B00310036003300340043004400440037002D0030003800380038002D0034003200450033002D0039004600410032002D004200360044003300320035003600330042003900310044007D0000000000000000000000010003000000000000000C0000000B000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062885214)
GO
INSERT [dbo].[sysdiagrams] ([name], [principal_id], [diagram_id], [version], [definition]) VALUES (N'Diagrama Documentos', 1, 1003, 1, 0xD0CF11E0A1B11AE1000000000000000000000000000000003E000300FEFF0900060000000000000000000000010000000100000000000000001000000200000001000000FEFFFFFF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFF0A000000FEFFFFFF0400000005000000060000000700000008000000090000000B000000FEFFFFFF0C0000000D0000000E0000000F00000010000000FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52006F006F007400200045006E00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000500FFFFFFFFFFFFFFFF0200000000000000000000000000000000000000000000000000000000000000F0BB7A84F048CE010300000040180000000000006600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000201FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000EA020000000000006F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040002010100000004000000FFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000C0000006409000000000000010043006F006D0070004F0062006A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000201FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000320000005F000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A0000000B000000FEFFFFFF0D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D0000001E0000001F000000200000002100000022000000230000002400000025000000260000002700000028000000290000002A0000002B0000002C0000002D0000002E0000002F0000003000000031000000FEFFFFFF33000000FEFFFFFF35000000360000003700000038000000390000003A0000003B0000003C0000003D0000003E0000003F000000400000004100000042000000430000004400000045000000460000004700000048000000490000004A0000004B0000004C0000004D0000004E0000004F00000050000000510000005200000053000000FEFFFFFFFEFFFFFF560000005700000058000000590000005A0000005B0000005C0000005D0000005E0000005F000000FEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000428000A0E100C050000800B0000000F00FFFF0B000000007D00002E6800000C3C000018740000E44A0000DE805B10F195D011B0A000AA00BDCB5C0000080030000000000200000300000038002B00000009000000D9E6B0E91C81D011AD5100A0C90F5739F43B7F847F61C74385352986E1D552F8A0327DB2D86295428D98273C25A2DA2D00002C0043200000000000000000000053444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C00002C0043200000000000000000000051444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C07000000FC0100000087010000003400A50900000700008001000000A402000000800000090000805363684772696400C62A0000AE150000446F63756D656E746F00000000003000A509000007000080020000009C02000000800000050000805363684772696400DC050000181500004C696E656169640000003800A50900000700008003000000AE020000008000000E000080536368477269640056130000EE020000446F63756D656E746F4C696E6561000000007C00A509000007000080080000005A0000000180000053000080436F6E74726F6C0043220000990F000052656C6174696F6E736869702027464B5F446F63756D656E746F4C696E65615F446F63756D656E746F27206265747765656E2027446F63756D656E746F2720616E642027446F63756D656E746F4C696E6561270000002800B50100000700008009000000310000006900000002800000436F6E74726F6C00A71E00003D14000000007400A5090000070000800A00000052000000018000004B000080436F6E74726F6C0017140000990F000052656C6174696F6E736869702027464B5F446F63756D656E746F4C696E65615F4C696E656127206265747765656E20274C696E65612720616E642027446F63756D656E746F4C696E6561270000002800B5010000070000800B000000310000006100000002800000436F6E74726F6C005D1600000A13000000000000000000000000000000000000000000000000214334120800000041170000670F000078563412070000001401000044006F00630075006D0065006E0074006F0000000000000000808F4000000000000010400100000000000000000000000E000000050000001801000000000000000000000000000000000000F800000000000000050000000000000000000000020000000000000000808F4000000000000000000000000000808F400000000000000040040000002000000030000000000000000000000000708F4000000000000010400000000000000040000000000000004000000000000000000100000000000000050000000000000040000000010000000000000000000040000000000000104004000000200000002000000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A729000039160000000000002D010000070000000C000000070000001C010000F708000053070000390300000B040000D0020000DD04000018060000A203000018060000BC07000046050000000000000100000041170000670F000000000000040000000400000002000000020000001C010000E60A00000000000001000000F21300004E06000000000000010000000100000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000005C00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000A00000044006F00630075006D0065006E0074006F000000214334120800000041170000710A00007856341207000000140100004C0069006E0065006100000090C315170800000030DA15170000000030DA151770C315170500000000000000030000000000000000000000000100000001000000000000A851A4688464A46848B6E36858020000F21300005802000000000000EE020000F2130000EE0200000000000084030000F213000084030000000000001A040000F21300001A04000000000000B0040000F2130000B00400000000000046050000F21300004605000000000000DC050000F2130000DC0500000000000072060000F2130000720600000000000008070000F213000008070000000000009E070000F21300009E0700000000000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A729000039160000000000002D010000070000000C000000070000001C010000F708000053070000390300000B040000D0020000DD04000018060000A203000018060000BC07000046050000000000000100000041170000710A000000000000020000000200000002000000020000001C010000E60A00000000000001000000F21300004E06000000000000010000000100000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000005400000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000060000004C0069006E006500610000002143341208000000A7290000660F000078563412070000001401000044006F00630075006D0065006E0074006F004C0069006E00650061000000000092AA21D1988E0242B238FB94AA6FAEB004000000020000000000106600000001000020000000D3864D165C2275BD8B889E5F2C0C00113FF169D93719B7F832FF9FC05432E01F000000000E8000000002000020000000731FFDC2E102D5C97A88C55023B18474D2E525302980F276E74FBA1C129FD265600000006217B410AAD55840A80EA4067275344212C5D990D89781A9DA0B399F3A62E783FC3ADA6A246377D28BFD10DD7FC580742A2A94503B27DA1F73A7E2FA6753A42F133FF5C4A439332F7BF0DEE869717A211EF55181000000000000000000000000000005000000540000002C0000002C0000002C000000340000000000000000000000A7290000660F0000000000002D0100000D0000000C000000070000001C010000F708000053070000390300000B040000D0020000DD04000018060000A203000018060000BC070000460500000000000001000000F21300000804000000000000000000000000000002000000020000001C010000F70800000000000001000000F21300000804000000000000000000000000000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000006600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000F00000044006F00630075006D0065006E0074006F004C0069006E0065006100000003000B00C62A000044160000BE23000044160000BE230000541200000000000002000000F0F0F00000000000000000000000000000000000010000000900000000000000A71E00003D140000AF110000580100001F000000010000020000AF11000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D611B0046004B005F0044006F00630075006D0065006E0074006F004C0069006E00650061005F0044006F00630075006D0065006E0074006F0002000B00AE15000018150000AE150000541200000000000002000000F0F0F00000000000000000000000000000000000010000000B000000000000005D1600000A1300006B0E000058010000320000000100000200006B0E000058010000020000000000FFFFFF000800008001000000150001000000900144420100065461686F6D61170046004B005F0044006F00630075006D0065006E0074006F004C0069006E00650061005F004C0069006E0065006100000000000000000000000000000000000000000000000000000000000100FEFF030A0000FFFFFFFF00000000000000000000000000000000170000004D6963726F736F66742044445320466F726D20322E300010000000456D626564646564204F626A6563740000000000F439B2710000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C00000000000000000000000100260000007300630068005F006C006100620065006C0073005F00760069007300690062006C0065000000010000000B0000001E000000000000000000000000000000000000006400000000000000000000000000000000000000000000000000010000000100000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C00320038000300440064007300530074007200650061006D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000160002000300000006000000FFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000034000000DC0700000000000053006300680065006D00610020005500440056002000440065006600610075006C0074000000000000000000000000000000000000000000000000000000000026000200FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000540000001600000000000000440053005200450046002D0053004300480045004D0041002D0043004F004E00540045004E0054005300000000000000000000000000000000000000000000002C0002010500000007000000FFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000055000000B80200000000000053006300680065006D00610020005500440056002000440065006600610075006C007400200050006F007300740020005600360000000000000000000000000036000200FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000060000000120000000000000034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003700390030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000020000000200000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003700390030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000030000000300000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000030000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000080000000800000000000000480000000100270001000000640062006F00000046004B005F0044006F00630075006D0065006E0074006F004C0069006E00650061005F0044006F00630075006D0065006E0074006F0000000000000000000000C402000000000900000009000000080000000800000001F50A17C8F50A170000000000000000AD0F00000100000A0000000A00000000000000400000000100561301000000640062006F00000046004B005F0044006F00630075006D0065006E0074006F004C0069006E00650061005F004C0069006E006500610000000000000000000000C402000000000B0000000B0000000A0000000800000001F40A17C8F40A170000000000000000AD0F00000100000A0000000800000001000000030000004C000000370000000A00000002000000030000003400000007000000000000000000000000000000000000000000000000000000000000000000000000000000010003000000000000000C0000000B0000004E61BC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000DBE6B0E91C81D011AD5100A0C90F573900000200D06D7A84F048CE010202000010484500000000000000000000000000000000006E0100004400610074006100200053006F0075007200630065003D0052003200440032002D00500043005C0052003200440032003B0049006E0069007400690061006C00200043006100740061006C006F0067003D0054006500730074007300410070007000420044003B0049006E00740065006700720061007400650064002000530065006300750072006900740079003D0054007200750065003B004D0075006C007400690070006C00650041006300740069007600650052006500730075006C00740053006500740073003D00460061006C00730065003B005000610063006B00650074002000530069007A0065003D0034003000390036003B004100700070006C00690063006100740069006F006E0020004E0061006D0065003D0022004D006900630072006F0073006F00660074002000530051004C00200053006500720076006500720020004D0061006E006100670065006D0065006E0074002000530074007500640069006F002200000000800500280000004400690061006700720061006D006100200044006F00630075006D0065006E0074006F0073000000000226001400000044006F00630075006D0065006E0074006F00000008000000640062006F000000000226000C0000004C0069006E0065006100000008000000640062006F000000000224001E00000044006F00630075006D0065006E0074006F004C0069006E0065006100000008000000640062006F00000001000000D68509B3BB6BF2459AB8371664F0327008004E0000007B00310036003300340043004400440037002D0030003800380038002D0034003200450033002D0039004600410032002D004200360044003300320035003600330042003900310044007D0000000000000000000000010003000000000000000C0000000B000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062885214)
GO
SET IDENTITY_INSERT [dbo].[sysdiagrams] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoExamen] ON 

GO
INSERT [dbo].[TipoExamen] ([Id], [Nombre]) VALUES (1, N'Evaluación Aster')
GO
INSERT [dbo].[TipoExamen] ([Id], [Nombre]) VALUES (2, N'Asesoría en Terreno')
GO
SET IDENTITY_INSERT [dbo].[TipoExamen] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoPregunta] ON 

GO
INSERT [dbo].[TipoPregunta] ([Id], [Nombre], [NombreControl]) VALUES (1, N'Opción Múltiple', N'Checkbox')
GO
INSERT [dbo].[TipoPregunta] ([Id], [Nombre], [NombreControl]) VALUES (2, N'Para rellenar', N'Textarea')
GO
INSERT [dbo].[TipoPregunta] ([Id], [Nombre], [NombreControl]) VALUES (9, N'Asesoría', N'Asesoria')
GO
SET IDENTITY_INSERT [dbo].[TipoPregunta] OFF
GO
SET IDENTITY_INSERT [dbo].[UserMigration] ON 

GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (1, 2, 10, N'Ana', N'Rocha Malqui', N'arocha@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (2, 2, 10, N'Patricia', N'Del Castillo Alcedo', N'ddelcastillo@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (3, 2, 10, N'Rennier', N'Yañez Farfan', N'ryanez@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (4, 2, 10, N'Juan', N'Olivera Guerra', N'jolivera@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (5, 2, 10, N'Encarnita', N'Zegarra Ruíz', N'ezegarra@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (6, 4, 10, N'Juan Carlos', N'Guajardo Mendez', N'jguajardo@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (7, 3, 5, N'Sandro', N'Salazar Sanez', N'ssalazar@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (8, 5, 5, N'Guillermo', N'Cubas Giudice', N'gcubas@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (9, 2, 5, N'Diana', N'Mostacero Rodríguez', N'dmostacero@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (10, 2, 5, N'Lis Faride', N'Augusto Vega', N'laugusto@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (11, 2, 5, N'Zoila', N'Sánchez Collantes', N'zsanchez@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (12, 2, 5, N'Maria Isabel', N'Tocto Geraldo', N'mtocto@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (13, 2, 5, N'José', N'Freyre Morales', N'jfreyre@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (14, 2, 5, N'Delia', N'Zapata Coral', N'dzapata@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (15, 2, 5, N'Maribel', N'Pisconte Guerreros', N'mpisconte@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (16, 2, 5, N'Cristina', N'Cier Guzmán', N'icier@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (17, 2, 5, N'Jandira', N'Paredes Dueñas', N'jparedes@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (18, 2, 5, N'Jesús', N'Gonzáles Peralta', N'jgonzales@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (19, 2, 5, N'Roxana', N'Sosa Angulo', N'rsosa@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (20, 2, 5, N'Yasmine', N'Garrido Vargas', N'ygarrido@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (21, 2, 5, N'Cintia Kateryn', N'Sanchez Campos', N'csanchezc@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (22, 3, 9, N'Henry', N'Ross Accame', N'hross@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (23, 2, 9, N'Carmen Luz', N'Tiburcio Alguiar', N'ctiburcio@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (24, 2, 9, N'Tadeo', N'Eduardo Meyer', N'tmeyer@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (25, 2, 9, N'Karín', N'Noriega Najar', N'knoriega@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (26, 2, 9, N'Davis', N'Gutiérrez Orgeda', N'dgutierrez@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (27, 2, 9, N'Marisol', N'Chacón Montañez', N'mchacon@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (28, 2, 9, N'Alejandra', N'Cribillero Muchotrigo', N'ecribillero@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (29, 2, 9, N'Jonathan', N'Suarez Salas', N'jsuarez@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (30, 3, 6, N'Calixto', N'Castro Sipan', N'ccastro@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (31, 6, 9, N'Eliza Virginia', N'Falla Huambo', N'vfalla@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (32, 6, 9, N'Maria Magdalena', N'Oré Gonzales', N'more@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (33, 6, 9, N'Patricia', N'Vernal Sirvas', N'pvernal@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (34, 6, 9, N'Ana Patricia', N'Alcazar Seijas', N'aalcazar@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (35, 6, 9, N'Ana Angella', N'Alvarado Guzman', N'aalvarado@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (36, 6, 9, N'Margareth Sabella', N'Reyes Becerra', N'sreyes@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (37, 6, 9, N'Verónica Carmen', N'Vidal Valladares', N'vvidal@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (38, 6, 9, N'Karol', N'Caruajulca', NULL)
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (39, 6, 9, N'Dina', N'Armas', NULL)
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (40, 6, 9, N'Rosa', N'Skrinjaric', NULL)
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (41, 6, 9, N'María', N'Delgado', NULL)
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (42, 6, 9, N'Eva', N'Ascencio', NULL)
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (43, 6, 9, N'Erika Yanina', N'Ramirez Zevallos', N'eramirez@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (44, 7, 9, N'Hector', N'Alvarez Garcia', N'halvarez@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (45, 8, 9, N'Williams', N'Romero  Cáceres', N'wromero@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (46, 3, 9, N'Víctor', N'Vásquez Claudet', N'vvasquez@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (47, 3, 9, N'Fredy', N'Murillo Begazo', N'fmurillo@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (48, 9, 9, N'Antonio', N'Ríos Noriega', N'arios@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (49, 9, 9, N'Rosario', N'Cabrera Sirlupu', N'rcabrera@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (50, 10, 9, N'Elke', N'Gutiérrez Merino', N'egutierrez@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (51, 10, 9, N'Yanina Sarita', N'Vilela Céspedes', N'yvilela@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (52, 10, 9, N'Ursula', N'Martínez Guevara', N'umartinez@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (53, 10, 9, N'Gina', N'Gonzáles Nuñez', N'ggonzales@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (54, 10, 9, N'Inés', N'Camargo Salazar', N'icamargo@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (55, 10, 9, N'María', N'Chi Raa', N'mchi@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (56, 11, 9, N'Gisella', N'Ramirez Barrionuevo', N'gramirez@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (57, 11, 9, N'Maritza', N'Navarro Price', N'mnavarro@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (58, 10, 9, N'Ivette', N'Rodriguez Mendoza', N'irodriguez@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (59, 10, 9, N'Laura', N'Saldaña Leyton', N'lsaldana@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (60, 10, 9, N'Lizeth ', N'Ramírez Herrea', NULL)
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (61, 10, 9, N'Lili', N'Perez', NULL)
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (62, 10, 9, N'Carla', N'Torres Rondón', NULL)
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (63, 10, 9, N'Juliet', N'Espíritu Muñoz', NULL)
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (64, 10, 9, N'Neri', N'Sabogal Martinez', N'nsabogal@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (65, 10, 9, N'Gilda Karina', N'Sanchez Barrera ', N'gsanchez@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (66, 10, 9, N'Gustavo Alonso', N'Hinostroza Aguilar', N'ghinostroza@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (67, 2, 7, N'José Luis', N'Tello Melendez', N'jtello@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (68, 2, 7, N'Rosa', N'Gonzales García', N'smorote@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (69, 2, 7, N'Melisa', N'Sime Burga', N'msime@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (70, 2, 7, N'Andrea', N'Tejada', N'atejada@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (71, 2, 7, N'Aldo', N'Suarez Mosaurieta', N'asuarez@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (72, 2, 7, N'Keti', N'Almirón Domínguez', N'kalmiron@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (73, 2, 7, N'Doris', N'Quintos Silva', N'dquintos@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (74, 2, 7, N'Fredi', N'Sanchez Trujillo', N'fsanchez@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (75, 2, 7, N'Yovanna', N'Puchuri Martínez', N'ypuchuri@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (76, 2, 7, N'Cynthia ', N'Dioses Herrera', N'cdioses@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (77, 2, 7, N'Giannina', N'Toro Saavedra', N'etoro@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (78, 2, 7, N'Eduardo', N'Cabezudo Tovar', N'ecabezudo@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (79, 2, 7, N'Manuel', N'Guerrero Guardia', N'mguerrerro@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (80, 12, 7, N'Daniel', N'Vasquez Alvarado', N'dvasquez@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (81, 2, 8, N'Mariana', N'Leon Medina', N'mleon@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (82, 2, 8, N'América ', N'Ávila Román', N'aavila@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (83, 2, 8, N'Manuela', N'Esquen Vasquez', N'mesquen@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (84, 2, 8, N'César', N'Manzaneda Luna', N'cmanzaneda@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (85, 2, 8, N'Rocío', N'Egusquiza Peña', N'regusquiza@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (86, 2, 8, N'Karina', N'Chavez Guevara', N'kchavez@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (87, 2, 8, N'Vanessa', N'Rodriguez Castillo', N'vrodriguez@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (88, 2, 8, N'María del Carmen', N'Cherre Espejo', N'mcherre@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (89, 2, 8, N'Daniela', N'Surca Vilchez', N'csurca@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (90, 2, 8, N'Mabel', N'Succar Medina', N'msuccar@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (91, 2, 8, N'Ana', N'Vallejos Mendoza', N'avallejos@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (92, 2, 8, N'Vilma', N'Infante Gomez', N'vinfante@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (93, 2, 8, N'Francy', N'Vera Fort', N'fvera@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (94, 12, 8, N'Philippe', N'Lafosse Masías', N'plafosse@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (95, 3, 8, N'Julio César', N'Reyer Gonzales', N'jreyes@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (96, 2, 6, N'Luz', N'Belen Reto', N'lreto@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (97, 2, 6, N'Claudia', N'Benavente Riega', N'cbenavente@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (98, 2, 6, N'Lila', N'Apolo Arrieta', N'lapolo@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (99, 2, 6, N'Gisela', N'Calderón Alcalde', N'gcalderon@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (100, 2, 6, N'Brenda', N'Calderón Soria', N'bcalderon@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (101, 2, 6, N'Kony', N'Cuellar De La Cruz', N'kcuellar@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (102, 2, 6, N'Lucy', N'Onofre Escurra', N'lonofre@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (103, 2, 6, N'José', N'Priano Gervasi', N'jpriano@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (104, 2, 6, N'Maria Luzmila', N'Campos Urbina', N'mcampos@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (105, 2, 6, N'Stefany', N'Franco Reyna', N'sfranco@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (106, 2, 6, N'Verónica', N'Estacio Naveda', N'vestacio@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (107, 2, 6, N'Gloria', N'Cuadra Bianchi', N'gcuadra@unimed.com.pe')
GO
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (108, 12, 6, N'Marisol', N'Rubio Estrada', N'mrubio@unimed.com.pe')
GO
SET IDENTITY_INSERT [dbo].[UserMigration] OFF
GO
SET IDENTITY_INSERT [dbo].[UserProfile] ON 

GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (10, N'abalbin', N'Arturo', N'Balbin Rojas', N'r2d2klapa@gmail.com', 10, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (119, N'arocha', N'Ana', N'Rocha Malqui', N'r2d2klapa@gmail.com', 10, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (120, N'ddelcastillo', N'Patricia', N'Del Castillo Alcedo', N'r2d2klapa@gmail.com', 10, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (121, N'ryanez', N'Rennier', N'Yañez Farfan', N'r2d2klapa@gmail.com', 10, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (122, N'jolivera', N'Juan', N'Olivera Guerra', N'r2d2klapa@gmail.com', 10, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (123, N'ezegarra', N'Encarnita', N'Zegarra Ruíz', N'r2d2klapa@gmail.com', 10, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (124, N'jguajardo', N'Juan Carlos', N'Guajardo Mendez', N'r2d2klapa@gmail.com', 10, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (125, N'ssalazar', N'Sandro', N'Salazar Sanez', N'r2d2klapa@gmail.com', 5, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (126, N'gcubas', N'Guillermo', N'Cubas Giudice', N'r2d2klapa@gmail.com', 5, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (127, N'dmostacero', N'Diana', N'Mostacero Rodríguez', N'r2d2klapa@gmail.com', 5, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (128, N'laugusto', N'Lis Faride', N'Augusto Vega', N'r2d2klapa@gmail.com', 5, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (129, N'zsanchez', N'Zoila', N'Sánchez Collantes', N'r2d2klapa@gmail.com', 5, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (130, N'mtocto', N'Maria Isabel', N'Tocto Geraldo', N'r2d2klapa@gmail.com', 5, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (131, N'jfreyre', N'José', N'Freyre Morales', N'r2d2klapa@gmail.com', 5, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (132, N'dzapata', N'Delia', N'Zapata Coral', N'r2d2klapa@gmail.com', 5, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (133, N'mpisconte', N'Maribel', N'Pisconte Guerreros', N'r2d2klapa@gmail.com', 5, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (134, N'icier', N'Cristina', N'Cier Guzmán', N'r2d2klapa@gmail.com', 5, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (135, N'jparedes', N'Jandira', N'Paredes Dueñas', N'r2d2klapa@gmail.com', 5, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (136, N'jgonzales', N'Jesús', N'Gonzáles Peralta', N'r2d2klapa@gmail.com', 5, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (137, N'rsosa', N'Roxana', N'Sosa Angulo', N'r2d2klapa@gmail.com', 5, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (138, N'ygarrido', N'Yasmine', N'Garrido Vargas', N'r2d2klapa@gmail.com', 5, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (139, N'csanchezc', N'Cintia Kateryn', N'Sanchez Campos', N'r2d2klapa@gmail.com', 5, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (140, N'hross', N'Henry', N'Ross Accame', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (141, N'ctiburcio', N'Carmen Luz', N'Tiburcio Alguiar', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (142, N'tmeyer', N'Tadeo', N'Eduardo Meyer', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (143, N'knoriega', N'Karín', N'Noriega Najar', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (144, N'dgutierrez', N'Davis', N'Gutiérrez Orgeda', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (145, N'mchacon', N'Marisol', N'Chacón Montañez', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (146, N'ecribillero', N'Alejandra', N'Cribillero Muchotrigo', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (147, N'jsuarez', N'Jonathan', N'Suarez Salas', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (148, N'ccastro', N'Calixto', N'Castro Sipan', N'r2d2klapa@gmail.com', 6, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (149, N'vfalla', N'Eliza Virginia', N'Falla Huambo', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (150, N'more', N'Maria Magdalena', N'Oré Gonzales', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (151, N'pvernal', N'Patricia', N'Vernal Sirvas', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (152, N'aalcazar', N'Ana Patricia', N'Alcazar Seijas', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (153, N'aalvarado', N'Ana Angella', N'Alvarado Guzman', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (154, N'sreyes', N'Margareth Sabella', N'Reyes Becerra', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (155, N'vvidal', N'Verónica Carmen', N'Vidal Valladares', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (156, N'kCaruajulca', N'Karol', N'Caruajulca', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (157, N'dArmas', N'Dina', N'Armas', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (158, N'rSkrinjaric', N'Rosa', N'Skrinjaric', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (159, N'mDelgado', N'María', N'Delgado', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (160, N'eAscencio', N'Eva', N'Ascencio', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (161, N'eramirez', N'Erika Yanina', N'Ramirez Zevallos', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (162, N'halvarez', N'Hector', N'Alvarez Garcia', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (163, N'wromero', N'Williams', N'Romero  Cáceres', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (164, N'vvasquez', N'Víctor', N'Vásquez Claudet', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (165, N'fmurillo', N'Fredy', N'Murillo Begazo', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (166, N'arios', N'Antonio', N'Ríos Noriega', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (167, N'rcabrera', N'Rosario', N'Cabrera Sirlupu', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (168, N'egutierrez', N'Elke', N'Gutiérrez Merino', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (169, N'yvilela', N'Yanina Sarita', N'Vilela Céspedes', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (170, N'umartinez', N'Ursula', N'Martínez Guevara', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (171, N'ggonzales', N'Gina', N'Gonzáles Nuñez', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (172, N'icamargo', N'Inés', N'Camargo Salazar', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (173, N'mchi', N'María', N'Chi Raa', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (174, N'gramirez', N'Gisella', N'Ramirez Barrionuevo', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (175, N'mnavarro', N'Maritza', N'Navarro Price', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (176, N'irodriguez', N'Ivette', N'Rodriguez Mendoza', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (177, N'lsaldana', N'Laura', N'Saldaña Leyton', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (178, N'lRamírez', N'Lizeth ', N'Ramírez Herrea', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (179, N'lPerez', N'Lili', N'Perez', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (180, N'cTorres', N'Carla', N'Torres Rondón', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (181, N'jEspíritu', N'Juliet', N'Espíritu Muñoz', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (182, N'nsabogal', N'Neri', N'Sabogal Martinez', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (183, N'gsanchez', N'Gilda Karina', N'Sanchez Barrera ', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (184, N'ghinostroza', N'Gustavo Alonso', N'Hinostroza Aguilar', N'r2d2klapa@gmail.com', 9, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (185, N'jtello', N'José Luis', N'Tello Melendez', N'r2d2klapa@gmail.com', 7, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (186, N'smorote', N'Rosa', N'Gonzales García', N'r2d2klapa@gmail.com', 7, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (187, N'msime', N'Melisa', N'Sime Burga', N'r2d2klapa@gmail.com', 7, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (188, N'atejada', N'Andrea', N'Tejada', N'r2d2klapa@gmail.com', 7, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (189, N'asuarez', N'Aldo', N'Suarez Mosaurieta', N'r2d2klapa@gmail.com', 7, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (190, N'kalmiron', N'Keti', N'Almirón Domínguez', N'r2d2klapa@gmail.com', 7, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (191, N'dquintos', N'Doris', N'Quintos Silva', N'r2d2klapa@gmail.com', 7, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (192, N'fsanchez', N'Fredi', N'Sanchez Trujillo', N'r2d2klapa@gmail.com', 7, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (193, N'ypuchuri', N'Yovanna', N'Puchuri Martínez', N'r2d2klapa@gmail.com', 7, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (194, N'cdioses', N'Cynthia ', N'Dioses Herrera', N'r2d2klapa@gmail.com', 7, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (195, N'etoro', N'Giannina', N'Toro Saavedra', N'r2d2klapa@gmail.com', 7, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (196, N'ecabezudo', N'Eduardo', N'Cabezudo Tovar', N'r2d2klapa@gmail.com', 7, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (197, N'mguerrerro', N'Manuel', N'Guerrero Guardia', N'r2d2klapa@gmail.com', 7, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (198, N'dvasquez', N'Daniel', N'Vasquez Alvarado', N'r2d2klapa@gmail.com', 7, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (199, N'mleon', N'Mariana', N'Leon Medina', N'r2d2klapa@gmail.com', 8, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (200, N'aavila', N'América ', N'Ávila Román', N'r2d2klapa@gmail.com', 8, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (201, N'mesquen', N'Manuela', N'Esquen Vasquez', N'r2d2klapa@gmail.com', 8, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (202, N'cmanzaneda', N'César', N'Manzaneda Luna', N'r2d2klapa@gmail.com', 8, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (203, N'regusquiza', N'Rocío', N'Egusquiza Peña', N'r2d2klapa@gmail.com', 8, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (204, N'kchavez', N'Karina', N'Chavez Guevara', N'r2d2klapa@gmail.com', 8, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (205, N'vrodriguez', N'Vanessa', N'Rodriguez Castillo', N'r2d2klapa@gmail.com', 8, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (206, N'mcherre', N'María del Carmen', N'Cherre Espejo', N'r2d2klapa@gmail.com', 8, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (207, N'csurca', N'Daniela', N'Surca Vilchez', N'r2d2klapa@gmail.com', 8, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (208, N'msuccar', N'Mabel', N'Succar Medina', N'r2d2klapa@gmail.com', 8, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (209, N'avallejos', N'Ana', N'Vallejos Mendoza', N'r2d2klapa@gmail.com', 8, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (210, N'vinfante', N'Vilma', N'Infante Gomez', N'r2d2klapa@gmail.com', 8, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (211, N'fvera', N'Francy', N'Vera Fort', N'r2d2klapa@gmail.com', 8, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (212, N'plafosse', N'Philippe', N'Lafosse Masías', N'r2d2klapa@gmail.com', 8, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (213, N'jreyes', N'Julio César', N'Reyer Gonzales', N'r2d2klapa@gmail.com', 8, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (214, N'lreto', N'Luz', N'Belen Reto', N'r2d2klapa@gmail.com', 6, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (215, N'cbenavente', N'Claudia', N'Benavente Riega', N'r2d2klapa@gmail.com', 6, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (216, N'lapolo', N'Lila', N'Apolo Arrieta', N'r2d2klapa@gmail.com', 6, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (217, N'gcalderon', N'Gisela', N'Calderón Alcalde', N'r2d2klapa@gmail.com', 6, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (218, N'bcalderon', N'Brenda', N'Calderón Soria', N'r2d2klapa@gmail.com', 6, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (219, N'kcuellar', N'Kony', N'Cuellar De La Cruz', N'r2d2klapa@gmail.com', 6, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (220, N'lonofre', N'Lucy', N'Onofre Escurra', N'r2d2klapa@gmail.com', 6, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (221, N'jpriano', N'José', N'Priano Gervasi', N'r2d2klapa@gmail.com', 6, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (222, N'mcampos', N'Maria Luzmila', N'Campos Urbina', N'r2d2klapa@gmail.com', 6, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (223, N'sfranco', N'Stefany', N'Franco Reyna', N'r2d2klapa@gmail.com', 6, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (224, N'vestacio', N'Verónica', N'Estacio Naveda', N'r2d2klapa@gmail.com', 6, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (225, N'gcuadra', N'Gloria', N'Cuadra Bianchi', N'r2d2klapa@gmail.com', 6, NULL)
GO
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (226, N'mrubio', N'Marisol', N'Rubio Estrada', N'r2d2klapa@gmail.com', 6, NULL)
GO
SET IDENTITY_INSERT [dbo].[UserProfile] OFF
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1, CAST(0x0000A17A01522858 AS DateTime), NULL, 1, NULL, 0, N'AMxL1C4Dnzy5b64vn9oAnVIEpDzkotlb7zBZ6ue+hhCfEJ1MJHFSyOXQNh/soaWiUQ==', CAST(0x0000A17A01522858 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (2, CAST(0x0000A17A0152F947 AS DateTime), NULL, 1, NULL, 0, N'AD5r+GKqkI05MGl7uQJDH9+4d+2qTyuqAR+KA1NuGKazwTKxOQlMs1mFvbdFon9jPg==', CAST(0x0000A17A0152F947 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (3, CAST(0x0000A17B0106164D AS DateTime), NULL, 1, NULL, 0, N'ABSeFKrDurYDLQEQDxQ5ZUOIhilKq72LLhd6CRbYLFBWgAzt+D0aud83ONBX5XP2fQ==', CAST(0x0000A17B0106164D AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (4, CAST(0x0000A17B0107FD23 AS DateTime), NULL, 1, NULL, 0, N'ADVTpzphAiRPGPRyAk926RTS1vnGBd+mo3iFknXWbWzDh7zOqkJ0Jbz1V+9lq4ne4g==', CAST(0x0000A17B0107FD23 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (5, CAST(0x0000A17B010B53FF AS DateTime), NULL, 1, NULL, 0, N'ADezSppSI8a25ESr9APJxBXjfDJCRjSSaKIVcdzffwB2vxSMSC8SnpZQncryPxsHHw==', CAST(0x0000A17B010B53FF AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (6, CAST(0x0000A17B0111CA3E AS DateTime), NULL, 1, NULL, 0, N'ALDWI1rj3BFAb80sJvaaihWwIawifq6Da0eBcdqyLupY8+OKXu2OcyDpAIIVQRxjDA==', CAST(0x0000A17B0111CA3E AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (7, CAST(0x0000A17B01126337 AS DateTime), NULL, 1, NULL, 0, N'AHEk+yAqBEsoaLUISJ5bKcqqRDmz8GcozO/5HHi3fj9KBuuNYfMIxxlTKq2w4Kq9pA==', CAST(0x0000A17B01126337 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (8, CAST(0x0000A18000032F6A AS DateTime), NULL, 1, NULL, 0, N'ABlQ1G1rcHOA0vzOVSa8rTO7U7S5tFzhRNfLo9RkxhS0W2jJ0IX+N0sg7Mbe0iChDA==', CAST(0x0000A18000032F6A AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (9, CAST(0x0000A1800003E0C4 AS DateTime), NULL, 1, NULL, 0, N'AMJhMym8GuRqhJa9y8c61ZtTwY7ZiYpTgqr4p84Zyryz/ZM/CrO7Hm9tWtBqfkVxww==', CAST(0x0000A1800003E0C4 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (10, CAST(0x0000A19401088306 AS DateTime), NULL, 1, CAST(0x0000A1B401246F1E AS DateTime), 0, N'ANuOqFHjFBMBcU9sYe2ZCxPGNbpH1NhwHNOohsjqkR2GHK2RcNxrQWxxs+LprrgDsw==', CAST(0x0000A1B40123BB1F AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (119, CAST(0x0000A1A1003241B2 AS DateTime), NULL, 1, CAST(0x0000A1B401340A53 AS DateTime), 0, N'APCIbIGzj/I+aPAxhNmXtGv0v3hg3l/G4MhdRf/dMloPvtOr5z9tKMIbUT60F/qO8Q==', CAST(0x0000A1B40124DC2A AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (120, CAST(0x0000A1A100324374 AS DateTime), NULL, 1, NULL, 0, N'ALKOXokMzPSve7GGAt4o4HsiB841L2ktQlCbQkwfXyB1AJeLszUy0jr3FvWIAndjYg==', CAST(0x0000A1A100324374 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (121, CAST(0x0000A1A10032438B AS DateTime), NULL, 1, NULL, 0, N'AJ2gV4nfLeg2m8iKCxURO+XySGRptFczV/S62tpjVUdS0TOfRUPL5gAmkbltmNt0wQ==', CAST(0x0000A1A10032438B AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (122, CAST(0x0000A1A100324394 AS DateTime), NULL, 1, NULL, 0, N'AC8SdXIc8p70jiq3ih5AhhOvNCQYL9pcBIZt8JgW9+pzy6wqX/q30jDGh3ahONhiHA==', CAST(0x0000A1A100324394 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (123, CAST(0x0000A1A10032439C AS DateTime), NULL, 1, NULL, 0, N'APwY98XPg2uVvaP6HPTKvgUnl+rWq6XnTq7GtTyuGWVuFFo9HJdIDNdtbJQIvGCy2Q==', CAST(0x0000A1A10032439C AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (124, CAST(0x0000A1A1003243A4 AS DateTime), NULL, 1, NULL, 0, N'AKY6L2TJnaOvdzpO+rBqX8MQ7S7RWiX4rsU6lOTfKr5KuLcMmdyDiWo2kecp+bMLKQ==', CAST(0x0000A1A1003243A4 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (125, CAST(0x0000A1A1003243CB AS DateTime), NULL, 1, NULL, 0, N'AMxcx94ijEzd8D+/5ms+xNBa2cP4WYR3NuhvMVtE34Ki9AKalOZDcCLR2+h6Kx7jxQ==', CAST(0x0000A1A1003243CB AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (126, CAST(0x0000A1A1003243D4 AS DateTime), NULL, 1, NULL, 0, N'AJZDVMoGyaDwvkpnAGef4iHoZudv8oErxXA/vkArGULHkUfNeRqYgNEmVEMjs0+U6g==', CAST(0x0000A1A1003243D4 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (127, CAST(0x0000A1A1003243EE AS DateTime), NULL, 1, NULL, 0, N'AOPFuLrQFi18XMVr8AmuFhlLd4acUIT7FIeJoRj7X2RGm+RP7VJmsySd+/awkjdJ8Q==', CAST(0x0000A1A1003243EE AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (128, CAST(0x0000A1A1003243F7 AS DateTime), NULL, 1, NULL, 0, N'AGHiq/sdi8DyT2i7JSJRUm34sue36gv0QthsWRPfXnnT4hZCU3NUEmS2RAL7/BPn7Q==', CAST(0x0000A1A1003243F7 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (129, CAST(0x0000A1A1003243FD AS DateTime), NULL, 1, NULL, 0, N'ANwPwws9Gcx20apCLaWUeksdQF4Rs8HnNRYiFktVcIBM/EmIvFoFAkYHWgP6CUX8gQ==', CAST(0x0000A1A1003243FD AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (130, CAST(0x0000A1A100324404 AS DateTime), NULL, 1, NULL, 0, N'AEHK15quipzBZq70WfGF38bqXTY6eRsxMedvjvItlv7JzpTi/I2BW965C47IsMT8JA==', CAST(0x0000A1A100324404 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (131, CAST(0x0000A1A100324410 AS DateTime), NULL, 1, NULL, 0, N'AOSyJ9AVZf8tnJB3pbnySJPr1tQrmQOEQt0AKjyTMXez7XOkbGuFkmAYdS/uzKOGZA==', CAST(0x0000A1A100324410 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (132, CAST(0x0000A1A10032443F AS DateTime), NULL, 1, NULL, 0, N'AE7lJ670quoJp88jUPG0m0TPHsA1d0ujBOKxr4u4IO89tmI22P7uEVsLqPC1fFgXeg==', CAST(0x0000A1A10032443F AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (133, CAST(0x0000A1A100324447 AS DateTime), NULL, 1, NULL, 0, N'AA3uo7r6Aj/H+GwRH99QkcyYccMswYwI6p+W8qVdXacDRYADGBGcopGs4m6MYAmSWA==', CAST(0x0000A1A100324447 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (134, CAST(0x0000A1A100324453 AS DateTime), NULL, 1, NULL, 0, N'ALxF7gcxNbRC1sNMuEhp44UjzZwiRZdfd0vZravPCdOaw3VRy3KoPwM3yVDB57vk1Q==', CAST(0x0000A1A100324453 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (135, CAST(0x0000A1A10032445A AS DateTime), NULL, 1, NULL, 0, N'AFMhZHFnRab9oNZ2yaijc8cDb4puWn/IKxW4FexpwQYB8OdOi6K0vXbug7Qg7KAL+w==', CAST(0x0000A1A10032445A AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (136, CAST(0x0000A1A100324460 AS DateTime), NULL, 1, NULL, 0, N'AGYDh0uoiVZrJ09r9CUQ2oyiu7SOc1DPR/52yfKrYBDndVyk8KdE5OKT2MkMnfSVtg==', CAST(0x0000A1A100324460 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (137, CAST(0x0000A1A10032446D AS DateTime), NULL, 1, NULL, 0, N'AD7hG/FJkk8tdT8IyzrkyY8mR2h/m63NVc9O9TsnmXuVElJgTaxlSmbge/4BZYe6rw==', CAST(0x0000A1A10032446D AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (138, CAST(0x0000A1A100324474 AS DateTime), NULL, 1, NULL, 0, N'AFh5B/GeQ5sV+fha6Km5kZqlN1BMgzqEw4JweoUtXfRiGwWsSnQzTO5dY4/YLe+O3w==', CAST(0x0000A1A100324474 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (139, CAST(0x0000A1A10032447E AS DateTime), NULL, 1, NULL, 0, N'AF/E7zkWm5o6bJoolrUgAJSIZWWhjd/rLr+FTE1SvNB5uJAYlxkYMMmLmZkq28h0aw==', CAST(0x0000A1A10032447E AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (140, CAST(0x0000A1A100324484 AS DateTime), NULL, 1, NULL, 0, N'AAOotueUBpebDQJaiICBdDLgSYq0xsgtszHeDRfSPmjUPgwTRVqpSziAj6bZYjkb2Q==', CAST(0x0000A1A100324484 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (141, CAST(0x0000A1A10032448B AS DateTime), NULL, 1, NULL, 0, N'ALYfqjlrbeymZVh9gKDRKxLqCck0fDeHEwqgvV8hoF1hYqZwx61QZtNb9kzy6HZQOw==', CAST(0x0000A1A10032448B AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (142, CAST(0x0000A1A100324491 AS DateTime), NULL, 1, NULL, 0, N'AFTWbCzRkpEksIG+XhrEnFZHLMXPymsbHzY0Gdo5EBudJH0CGgWqjjt4DqpVhluo+Q==', CAST(0x0000A1A100324491 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (143, CAST(0x0000A1A100324497 AS DateTime), NULL, 1, NULL, 0, N'AJOG9JZJmKJFITq5RXKkr+m5+uCya4uI76x8TVUz0av35Fp4/LM3HoIRL1tLGy//9w==', CAST(0x0000A1A100324497 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (144, CAST(0x0000A1A10032449D AS DateTime), NULL, 1, NULL, 0, N'APnwJAt43J1n+TmJ+vS4Lz1bYStykOqo8RrSdssA4jTXxRPc4+w5xbIAhpwOt9bjRw==', CAST(0x0000A1A10032449D AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (145, CAST(0x0000A1A1003244A3 AS DateTime), NULL, 1, NULL, 0, N'AL5PEIVoWeJKNEWN/rZxW2DUBCJXpwCiVAUT3/+fvp9uckY02d8MGAKcGSVdxe7QtQ==', CAST(0x0000A1A1003244A3 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (146, CAST(0x0000A1A1003244AA AS DateTime), NULL, 1, NULL, 0, N'AFwYGTgzk0UW4yc3Xxl4nB0AbiV7I3lzeCMYFZODw91IFrsIIOX8A1laojUbH6THgA==', CAST(0x0000A1A1003244AA AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (147, CAST(0x0000A1A1003244B1 AS DateTime), NULL, 1, NULL, 0, N'AHwQ0ekSEQBt3FNtyBdSJo8F+jldJ1cNepCceyIW0cc4dFyKwEUqcj5AUISljEUu+A==', CAST(0x0000A1A1003244B1 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (148, CAST(0x0000A1A1003244B7 AS DateTime), NULL, 1, NULL, 0, N'ANfMhr9dbyhdThPN25rt9EYWUi3tpMRX0w+ibbpxD84bmqTZMupG+2UfGyauemZwaw==', CAST(0x0000A1A1003244B7 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (149, CAST(0x0000A1A1003244C6 AS DateTime), NULL, 1, NULL, 0, N'AMkFAeds/rQr79qAoCbpnTswW6WMDxUbkxRfzRYYnPzwBGTMq9G1VibGomlTyhgT4Q==', CAST(0x0000A1A1003244C6 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (150, CAST(0x0000A1A1003244CF AS DateTime), NULL, 1, NULL, 0, N'ACfqkJszJAJxG5pjGtfYT3UhnC40r0dERtgyWTNkuPqVzE7wXCkZfwCwwDtXE3RPgA==', CAST(0x0000A1A1003244CF AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (151, CAST(0x0000A1A1003244DD AS DateTime), NULL, 1, NULL, 0, N'AEOoG44BLBDfjtLnTjrk028dtXTmsoQQXPlhuF+xN9+UyJzwWQWmrv702t2zw0JDPQ==', CAST(0x0000A1A1003244DD AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (152, CAST(0x0000A1A1003244ED AS DateTime), NULL, 1, NULL, 0, N'AHEreESQVYtnFfZOCxRHJOm7U1GQTEJO8vdKTzssYgtCELQpmb/rvFG7WXdfLHZDNg==', CAST(0x0000A1A1003244ED AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (153, CAST(0x0000A1A1003244FE AS DateTime), NULL, 1, NULL, 0, N'AGJpLlC1H45fJ0/X5cvmKMfbrexFz9LJdNamfsiIi5XDDZztYl5jHZDQSLjTNbWB6g==', CAST(0x0000A1A1003244FE AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (154, CAST(0x0000A1A100324506 AS DateTime), NULL, 1, NULL, 0, N'ANRIhZXJh0iZgY1snunSr86IYmTNsuGnQb11WVKdZ20sk8B4kQK6gNlTLP81MWx5GQ==', CAST(0x0000A1A100324506 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (155, CAST(0x0000A1A10032450D AS DateTime), NULL, 1, NULL, 0, N'ADyICDfOHpR9xQZ1RcyHGEU/jro1z54YxI5Mw4NLdeImCCkmRQGgd3YsTd/iLQ0mhQ==', CAST(0x0000A1A10032450D AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (156, CAST(0x0000A1A100324514 AS DateTime), NULL, 1, NULL, 0, N'AB5MI+9OjVwTtHMNxSi2fg6FkRsltsBuCzVQF+cL1jR+5HR4bm2xmpbAQeO7CHJBiw==', CAST(0x0000A1A100324514 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (157, CAST(0x0000A1A10032451B AS DateTime), NULL, 1, NULL, 0, N'AAVGgq6dzvDKrk4ogHa7bkNurdYQVceGBz8wbfyzPBnJoul6GuNwcq9QlC3A+FOXmg==', CAST(0x0000A1A10032451B AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (158, CAST(0x0000A1A100324522 AS DateTime), NULL, 1, NULL, 0, N'AChS/H74ak3F1B4f8GG8XLxLHTspBn7P5iVOFN9I9K4vnyrwu/rsbHw1yQgDID1l7g==', CAST(0x0000A1A100324522 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (159, CAST(0x0000A1A100324529 AS DateTime), NULL, 1, NULL, 0, N'AFmrWiMT0wCg66AKVmCz8go1/fmXJDn2xmhA4/ybra+mSd9CKh3Ee8c+8cAn4z22Ow==', CAST(0x0000A1A100324529 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (160, CAST(0x0000A1A10032452F AS DateTime), NULL, 1, NULL, 0, N'ALBxbYiYmYg/m31T7zJcG8mmURYlrs6URTLUM38/xsyr0R+rH2eJLmShs2z3g+tj+A==', CAST(0x0000A1A10032452F AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (161, CAST(0x0000A1A100324536 AS DateTime), NULL, 1, NULL, 0, N'ABTJr1UVuPP+IdHqx74iir1evwdAVtA3QXaN9PKyGwOnp0PiRe6p0phKVW13Wsr9FA==', CAST(0x0000A1A100324536 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (162, CAST(0x0000A1A10032453C AS DateTime), NULL, 1, NULL, 0, N'ALCJ6CDB/JOLVRfLoRmj+F7SoI9Tb9Ga1ZLjRj3zYsm1QLai5n+JF9qG2WT/D006vA==', CAST(0x0000A1A10032453C AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (163, CAST(0x0000A1A100324544 AS DateTime), NULL, 1, NULL, 0, N'ACpFANYT62gc9bBakH/8U/O2FrJz7gGqpwRFl0++G+QnrNcL8vgTGGC7jtUDHCiToQ==', CAST(0x0000A1A100324544 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (164, CAST(0x0000A1A10032454C AS DateTime), NULL, 1, NULL, 0, N'ALpxv3YnqpfGVBwy6lBG0oiPgWoQHY3MKDbmDtrjlx20AgSUAAntfAtKLHycBrZuKA==', CAST(0x0000A1A10032454C AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (165, CAST(0x0000A1A100324552 AS DateTime), NULL, 1, NULL, 0, N'ACBgYgaMzxj8s1q6UmEwZ2ZG0WIf3JudLbBF7Q6QCe9yH/VU58/9lP9FWLObt2CvRw==', CAST(0x0000A1A100324552 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (166, CAST(0x0000A1A100324559 AS DateTime), NULL, 1, NULL, 0, N'AJCV8GVnv4R078TrEV750Epa+CiwkwokvMaAKBUODqHpd1keThsuPMO8q2HSo5aMcw==', CAST(0x0000A1A100324559 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (167, CAST(0x0000A1A100324561 AS DateTime), NULL, 1, NULL, 0, N'ADLjiyh/SSb+Ew24Qu7W0aVXVZ80BLdK78W1z362/WZ82oO+IwPPPLcoT0dddrSx3A==', CAST(0x0000A1A100324561 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (168, CAST(0x0000A1A100324569 AS DateTime), NULL, 1, NULL, 0, N'ABkMgFo3fgow7o3Ll7ZklEoslsXILIO3z1D1dHnSGoTkuKpJBtgCPAvV32e26HoGWA==', CAST(0x0000A1A100324569 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (169, CAST(0x0000A1A100324571 AS DateTime), NULL, 1, NULL, 0, N'AAgEkUKZ6CjkZH7hQnqoft5cQ/jEZLVZwh0e7KCZ2KNXwVe8lOr0XUaxRNC0+AFmDg==', CAST(0x0000A1A100324571 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (170, CAST(0x0000A1A10032457F AS DateTime), NULL, 1, NULL, 0, N'ACkzuZY7vlKb4jjichlmkxO57EHpYGc+yXh5dXcd2pwe3xSLx8uCQ3uAqqe6js2mYw==', CAST(0x0000A1A10032457F AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (171, CAST(0x0000A1A10032458C AS DateTime), NULL, 1, NULL, 0, N'ALTN2wSNx7q1ZZcEZhjWcnK33nhpP+OE4ufHS096FNKn192QvIiBDVx2OSH6S7XfDQ==', CAST(0x0000A1A10032458C AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (172, CAST(0x0000A1A100324593 AS DateTime), NULL, 1, NULL, 0, N'AKkK1WXtNIUmT1u5gUqAQAYuJ8QB8PbcAVVXkdVhTlJCCutbsxBOKx37TOyIk4ra0g==', CAST(0x0000A1A100324593 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (173, CAST(0x0000A1A10032459B AS DateTime), NULL, 1, NULL, 0, N'AM3NyKgXAXCIE08E7rURY6fMKeM1CKA0oNIrVut0B5ZWfiPLuOsY5ep+Ch6oPVIr0A==', CAST(0x0000A1A10032459B AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (174, CAST(0x0000A1A1003245A3 AS DateTime), NULL, 1, NULL, 0, N'AGIJxZ8WgqdRjbyim/GnZXRGocIJ5o3LCp/qJKKEJyWzVYs+bSR5SHcGQZougdv6Og==', CAST(0x0000A1A1003245A3 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (175, CAST(0x0000A1A1003245AA AS DateTime), NULL, 1, NULL, 0, N'ANsG0MkEzAr8XSEiIjzAIXmIbs8mih7QUpdJDTKNipWEyXT1uRxQIKOxwvOAK9hB4Q==', CAST(0x0000A1A1003245AA AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (176, CAST(0x0000A1A1003245B0 AS DateTime), NULL, 1, NULL, 0, N'ACqqHwKXx/IPGNlxmj95oh5AM8a+Y8e/sCmefWi6cVM3mtPGO1p6JQSnodgqbhzxaA==', CAST(0x0000A1A1003245B0 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (177, CAST(0x0000A1A1003245B7 AS DateTime), NULL, 1, NULL, 0, N'AEbBdL8CUDtjTt7zZEAP1J/Zc+Ts15W8bbjhj3ALilKENwQXlluf1dNujocM/Qy0bA==', CAST(0x0000A1A1003245B7 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (178, CAST(0x0000A1A1003245BD AS DateTime), NULL, 1, NULL, 0, N'ABnzoar7D27aG2r26PRmBSW/AoiC69j8oUyHOrr0nKIxaaAMYQwnbUpuReyv6dHDsg==', CAST(0x0000A1A1003245BD AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (179, CAST(0x0000A1A1003245D4 AS DateTime), NULL, 1, NULL, 0, N'AIsg+J3njQjsZ/eBoqitq3gi+yv2PD3thGUGiHMSrXBzRN1yqPkj0X1VKtI6WnFe9Q==', CAST(0x0000A1A1003245D4 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (180, CAST(0x0000A1A1003245DF AS DateTime), NULL, 1, NULL, 0, N'APtQfu7Bkfe0Yi5tTz/GWuDXTwrZmCijgz7WDufewnj8/Iy4Bp6Tcpj20D0hcUWKRw==', CAST(0x0000A1A1003245DF AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (181, CAST(0x0000A1A1003245E5 AS DateTime), NULL, 1, NULL, 0, N'AIBst7K257uqHBbUHiRBAvkTYVW2YWGefO7vIaG7NjpzBMU8xHUTn4NYijrlyBod4w==', CAST(0x0000A1A1003245E5 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (182, CAST(0x0000A1A1003245F5 AS DateTime), NULL, 1, NULL, 0, N'AJ5IJXlBkesG7JVZgJ7bNvFY1OPKBQhFfz62zePZfPv74+T5KO2wZz3pNU3Xu6051A==', CAST(0x0000A1A1003245F5 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (183, CAST(0x0000A1A1003245FC AS DateTime), NULL, 1, NULL, 0, N'AAz+ZX3g3smdeU9YPyqDEnyxbB5jKhB8weIRwgDypxt1Pf10BRjCh1q33wIY9XhTpA==', CAST(0x0000A1A1003245FC AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (184, CAST(0x0000A1A100324619 AS DateTime), NULL, 1, NULL, 0, N'ANuSP8x6BDOBc8OMJ2irEwAOhoJxuaQJblM/cPARa0RMgND8uJk8/VRBgFeRqu7h5Q==', CAST(0x0000A1A100324619 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (185, CAST(0x0000A1A100324622 AS DateTime), NULL, 1, NULL, 0, N'AGd2gYi26PB18zkIkVI6DdNjg5ZRTbqgTr1GnMJFCHfwkV7aJy8HvjXmxzLfrDPxPA==', CAST(0x0000A1A100324622 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (186, CAST(0x0000A1A100324629 AS DateTime), NULL, 1, NULL, 0, N'AC/wZievKKEiecNJ1Z/TwBHsM09PmW1IjGnc39r4/OleuVY8rOEdAZni6+L4Bjy41g==', CAST(0x0000A1A100324629 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (187, CAST(0x0000A1A10032462F AS DateTime), NULL, 1, NULL, 0, N'ABieBGvkn59qhU4olSUAfPTKEOoF3TrTvJX6N2oEeXB0urzaxKCFJrwgHXEz7giNmQ==', CAST(0x0000A1A10032462F AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (188, CAST(0x0000A1A100324636 AS DateTime), NULL, 1, NULL, 0, N'AB/P4VXL3E+cQQGfBmZWj4sEMfs8gxPLUu/ni/5ZuGk0/CYrmRIitFmGDddYJrn9UQ==', CAST(0x0000A1A100324636 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (189, CAST(0x0000A1A10032463D AS DateTime), NULL, 1, NULL, 0, N'AHlKClgIgVR4TjydCW225L39GvhDHI3L7rLGDFXhTVkVWrCjL9d0wkK4KQxIbd4iSQ==', CAST(0x0000A1A10032463D AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (190, CAST(0x0000A1A100324643 AS DateTime), NULL, 1, NULL, 0, N'ANccML7QcVzdgK57uB5lVgR95vIirEMWfvBA1dnj6bGphGQ3/MUIbwsq8uR5gBwcnA==', CAST(0x0000A1A100324643 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (191, CAST(0x0000A1A100324649 AS DateTime), NULL, 1, NULL, 0, N'AO9Lq21QBH5jkf7va5l1OMtFCy83bprKmOqA+tuTCJkT7KPg3kylG5Fwuz2Sz52rAg==', CAST(0x0000A1A100324649 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (192, CAST(0x0000A1A100324653 AS DateTime), NULL, 1, NULL, 0, N'AHHaacquMOyBrzrVKhvn9BdwMO1wcmUoGcYAbpvuf8YRyH0sW/Fd/Z7mRw8f9IrdpQ==', CAST(0x0000A1A100324653 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (193, CAST(0x0000A1A100324659 AS DateTime), NULL, 1, NULL, 0, N'APNNndGOIRwmRSgV6Wvhjf5M7gPbjVHc0Lbo0VkVz4fQQuWkSt4312j2BqTToPm/nQ==', CAST(0x0000A1A100324659 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (194, CAST(0x0000A1A100324660 AS DateTime), NULL, 1, NULL, 0, N'AJgzcd0kiJgma/5/De0jccPsGj8D5KW2WXn8+jj55IjbHV4JT9P4CsdGCLwXoNC2IQ==', CAST(0x0000A1A100324660 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (195, CAST(0x0000A1A100324666 AS DateTime), NULL, 1, NULL, 0, N'AG2k8lgqhX0vahutxUZEtZyurtWQvSR/SobL3wEZCCY427H+giJxckyjUGdHe3Ne/g==', CAST(0x0000A1A100324666 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (196, CAST(0x0000A1A10032466D AS DateTime), NULL, 1, NULL, 0, N'AKCz309apWq6PaxIHBsCjXb0/Bc2omiv4pj1YRKRPbtUrI7RBDZuo97Z83E5AgqH1Q==', CAST(0x0000A1A10032466D AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (197, CAST(0x0000A1A100324673 AS DateTime), NULL, 1, NULL, 0, N'AOqr8213T5DgWFlORIXoZXUSkwl+NCDDdxPCxuOaplWgQPxXsZEm4YYZ/HT2C5RKxg==', CAST(0x0000A1A100324673 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (198, CAST(0x0000A1A100324679 AS DateTime), NULL, 1, NULL, 0, N'AFupxW+FLKnmJM5NqE64p6nHq6GdJTPNRHhd97DkMsZvXL0v0Hqj8/qSlbIkpcKqNg==', CAST(0x0000A1A100324679 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (199, CAST(0x0000A1A100324680 AS DateTime), NULL, 1, NULL, 0, N'AO2ktTSwwitoO3afHq2Mid3kH5l2Zziwl3PGW4jEoUgQefZHdRJXpCI7mquFsc2Sjw==', CAST(0x0000A1A100324680 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (200, CAST(0x0000A1A100324686 AS DateTime), NULL, 1, NULL, 0, N'AP+WTn9HcNfdClqkQRYisknx402P8N9DMUPDBKjCzQFWg5DJflFLK5tSdp7rOy3foA==', CAST(0x0000A1A100324686 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (201, CAST(0x0000A1A10032468D AS DateTime), NULL, 1, NULL, 0, N'ABkg7BVDZ9Spyg6d+Dmw8cTxB65aVzeg4Ibyot81zmP0U53E5/F3mJJSq2pd91aQVA==', CAST(0x0000A1A10032468D AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (202, CAST(0x0000A1A100324694 AS DateTime), NULL, 1, NULL, 0, N'AGvCzfci0f1fI9uDyn0y8u9RKhX073w+P0SxXBRB7pzlF3HHbdOcYoT8CC86dsV+hQ==', CAST(0x0000A1A100324694 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (203, CAST(0x0000A1A10032469A AS DateTime), NULL, 1, NULL, 0, N'ANT+o3FDi/DoGknzJlGSvdxzMl1pY13j1JUxvUnp1mHGr7VpnB5zcjrRJ4lpzcPhGw==', CAST(0x0000A1A10032469A AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (204, CAST(0x0000A1A1003246A0 AS DateTime), NULL, 1, NULL, 0, N'APMJE0+rBwVHHEDN/U4AgZtLFOM0/FBX8dcEpAWOE0wvln7ezqsACZ0+chUpY04ZZw==', CAST(0x0000A1A1003246A0 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (205, CAST(0x0000A1A1003246A7 AS DateTime), NULL, 1, NULL, 0, N'AKDVowyFZ0+NAUllnTj/CKzm7O4vw9Ar+G9k/d1u7B7XQGUtCwyrG6+AwCGuYl5YUQ==', CAST(0x0000A1A1003246A7 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (206, CAST(0x0000A1A1003246AE AS DateTime), NULL, 1, NULL, 0, N'AKFrJpub7tgksXNUkgyqmhruij92iQfYH2svOWszVhmfCMHq1nrn6fGET9Eh+Ku4rA==', CAST(0x0000A1A1003246AE AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (207, CAST(0x0000A1A1003246B5 AS DateTime), NULL, 1, NULL, 0, N'AIcVIgnWIMoKyTRQvJ7+pZNEM6NFYySui6gB2FfmAuhSysLnUpTIni4Vo7gaxUtgZQ==', CAST(0x0000A1A1003246B5 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (208, CAST(0x0000A1A1003246BC AS DateTime), NULL, 1, NULL, 0, N'AFOOh3/OUgDdZ9CgH49lCn/8JRoWHidZR7F1pLCSuYQrdLrbuDG/dtImFdOOxePYvw==', CAST(0x0000A1A1003246BC AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (209, CAST(0x0000A1A1003246C2 AS DateTime), NULL, 1, NULL, 0, N'AB/gQ90MAoLWwztHwGTk8QbrHA9dRkz/+9cBGX5PbSwblDZ9smSp2GXfU3DYjxQ1Mw==', CAST(0x0000A1A1003246C2 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (210, CAST(0x0000A1A1003246C9 AS DateTime), NULL, 1, NULL, 0, N'AGf81kkLSh5Z6FxnZmV5+wojXEXxDsEPvU5+ReG0LIj0hJhgtyhwcnTvOLrJQHuFcQ==', CAST(0x0000A1A1003246C9 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (211, CAST(0x0000A1A1003246E6 AS DateTime), NULL, 1, NULL, 0, N'AF5fE+v2rK/nqN1Zt/c2dfsR+LE31Vpt8CX7kIzLTGM8tx0HI6rWBo/NRKGcwd2iSA==', CAST(0x0000A1A1003246E6 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (212, CAST(0x0000A1A1003246F4 AS DateTime), NULL, 1, NULL, 0, N'ANS2INX8gD7/IJgtnXtpMQq/D93ubAs8eEE126mR7XBMlny/5nPpV1s1Kf9T/sVzEw==', CAST(0x0000A1A1003246F4 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (213, CAST(0x0000A1A1003246FC AS DateTime), NULL, 1, NULL, 0, N'AKtdCnkuVVvCQlKEiwuJR1P0Ib2imd3BOYEYYCuRWsWcQkLw6a1MQUWPPOsiuUhKkQ==', CAST(0x0000A1A1003246FC AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (214, CAST(0x0000A1A100324703 AS DateTime), NULL, 1, NULL, 0, N'AHV4J7th8lPIDbRbZ7GyjP8r7T0UCyQVWLzypWertUWcSPdlPB9YHSH70DCTCSEU6w==', CAST(0x0000A1A100324703 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (215, CAST(0x0000A1A10032470A AS DateTime), NULL, 1, NULL, 0, N'ANof9qoofHk9EAphqA9cOt/bwIvC7pLILcMeQ1NGhOosHsSYRq7sXDERqBIwX2u3jg==', CAST(0x0000A1A10032470A AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (216, CAST(0x0000A1A100324711 AS DateTime), NULL, 1, NULL, 0, N'ABk7F0RLNKOsmqv4rPk+WbKS3rFvDmzd0+k8mw+MjmSWsWp3Ny8CX0hoT9oAKTcRGw==', CAST(0x0000A1A100324711 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (217, CAST(0x0000A1A100324718 AS DateTime), NULL, 1, NULL, 0, N'AAMIAmBMtnUlA/JIkfcuB71AoLd5i0SgTr26hDeUbSTGyFr3/PYbIuhVg/MuP8/cnA==', CAST(0x0000A1A100324718 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (218, CAST(0x0000A1A10032471E AS DateTime), NULL, 1, NULL, 0, N'ACFe1jWvl7jdqrD/oh66IjPniteOWEMn8lvHAIZNJNpWURp4gjZSCL9mt5gRydTJ9g==', CAST(0x0000A1A10032471E AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (219, CAST(0x0000A1A100324725 AS DateTime), NULL, 1, NULL, 0, N'AEN+7QuAxaM41Kc6Sa0lUcWZqziqwTmYqfCeR+0r9YxaqZKdfNLj2XZC4Wj/hFi8lA==', CAST(0x0000A1A100324725 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (220, CAST(0x0000A1A10032472C AS DateTime), NULL, 1, NULL, 0, N'AI5MGH74tRqF6xK1IuguC+Q7lssLTUa7SYA7w/z69Wh/PGwp06nuHmH2K8oZIgepGA==', CAST(0x0000A1A10032472C AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (221, CAST(0x0000A1A100324733 AS DateTime), NULL, 1, NULL, 0, N'AD1HulFAVSaQZ0TQSuOjJXVnTwla/Ifr4c2XRs6keuYxnhxLr/51Kp+4shlFUI0gAA==', CAST(0x0000A1A100324733 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (222, CAST(0x0000A1A100324739 AS DateTime), NULL, 1, NULL, 0, N'AMy6GGXJIm2/SEbHPtdHkriYE1+p2/FB9NplcY+0dlGXAp+08o+E51XyBAVx50ByAA==', CAST(0x0000A1A100324739 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (223, CAST(0x0000A1A100324740 AS DateTime), NULL, 1, NULL, 0, N'AJUZJi39VB1KlFRC5p/tFwE7mkjUQajWGMZWwIsKVkyGIuLhz4jUnwg+ukg5L+93mg==', CAST(0x0000A1A100324740 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (224, CAST(0x0000A1A100324747 AS DateTime), NULL, 1, NULL, 0, N'AOZvWhS3QXiWt5hEYwnRI7MxSxta4nRmtBhQ4AmYK9uIB5eCzPj8jqky96H4Txd78w==', CAST(0x0000A1A100324747 AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (225, CAST(0x0000A1A10032474E AS DateTime), NULL, 1, NULL, 0, N'ABCQelkfGiTQYFVmg60vwKDXXQVULEOCVcOtwi836y1AbFQ5qizXYLB3oN3N4TxRYg==', CAST(0x0000A1A10032474E AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (226, CAST(0x0000A1A100324755 AS DateTime), NULL, 1, NULL, 0, N'AIfLoZfaBEOO0TpnnXsiGNijma/2BNDOdrskd1YHhSNjbpC9LOlUb14sG2CbSI24Vw==', CAST(0x0000A1A100324755 AS DateTime), N'', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[webpages_Roles] ON 

GO
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (1, N'Administrador')
GO
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (2, N'Aster')
GO
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (6, N'EAP')
GO
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (4, N'Gerente Acceso')
GO
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (7, N'Gerente Cial y Prom.Md.')
GO
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (8, N'Gerente de Etto')
GO
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (12, N'Gerente de Línea')
GO
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (3, N'Gerente Regional')
GO
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (5, N'Gerente ST')
GO
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (9, N'Key Account Manager')
GO
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (10, N'Líder Comercial')
GO
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (11, N'Líder Comercial  (CAD.)')
GO
SET IDENTITY_INSERT [dbo].[webpages_Roles] OFF
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (10, 1)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (119, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (120, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (121, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (122, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (123, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (124, 4)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (125, 3)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (126, 5)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (127, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (128, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (129, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (130, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (131, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (132, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (133, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (134, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (135, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (136, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (137, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (138, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (139, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (140, 3)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (141, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (142, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (143, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (144, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (145, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (146, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (147, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (148, 3)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (149, 6)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (150, 6)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (151, 6)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (152, 6)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (153, 6)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (154, 6)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (155, 6)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (156, 6)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (157, 6)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (158, 6)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (159, 6)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (160, 6)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (161, 6)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (162, 7)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (163, 8)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (164, 3)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (165, 3)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (166, 9)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (167, 9)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (168, 10)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (169, 10)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (170, 10)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (171, 10)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (172, 10)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (173, 10)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (174, 11)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (175, 11)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (176, 10)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (177, 10)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (178, 10)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (179, 10)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (180, 10)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (181, 10)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (182, 10)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (183, 10)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (184, 10)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (185, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (186, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (187, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (188, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (189, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (190, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (191, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (192, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (193, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (194, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (195, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (196, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (197, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (198, 12)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (199, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (200, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (201, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (202, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (203, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (204, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (205, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (206, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (207, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (208, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (209, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (210, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (211, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (212, 12)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (213, 3)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (214, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (215, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (216, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (217, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (218, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (219, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (220, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (221, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (222, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (223, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (224, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (225, 2)
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (226, 12)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__webpages__8A2B616018B6AB08]    Script Date: 06/05/2013 02:06:53 a.m. ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[webpages_Roles]') AND name = N'UQ__webpages__8A2B616018B6AB08')
ALTER TABLE [dbo].[webpages_Roles] ADD UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Pregunta_Habilitada]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Pregunta] ADD  CONSTRAINT [DF_Pregunta_Habilitada]  DEFAULT ((1)) FOR [Habilitada]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Respuesta_Marcada]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Respuesta] ADD  CONSTRAINT [DF_Respuesta_Marcada]  DEFAULT ((0)) FOR [Marcada]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RespuestaUsuario_Marcada]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RespuestaUsuario] ADD  CONSTRAINT [DF_RespuestaUsuario_Marcada]  DEFAULT ((0)) FOR [Marcada]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__webpages___IsCon__1209AD79]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [IsConfirmed]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__webpages___Passw__12FDD1B2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [PasswordFailuresSinceLastSuccess]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentoLinea_Documento]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentoLinea]'))
ALTER TABLE [dbo].[DocumentoLinea]  WITH CHECK ADD  CONSTRAINT [FK_DocumentoLinea_Documento] FOREIGN KEY([IdDocumento])
REFERENCES [dbo].[Documento] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentoLinea_Documento]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentoLinea]'))
ALTER TABLE [dbo].[DocumentoLinea] CHECK CONSTRAINT [FK_DocumentoLinea_Documento]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentoLinea_Linea]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentoLinea]'))
ALTER TABLE [dbo].[DocumentoLinea]  WITH CHECK ADD  CONSTRAINT [FK_DocumentoLinea_Linea] FOREIGN KEY([IdLinea])
REFERENCES [dbo].[Linea] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentoLinea_Linea]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentoLinea]'))
ALTER TABLE [dbo].[DocumentoLinea] CHECK CONSTRAINT [FK_DocumentoLinea_Linea]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen]  WITH CHECK ADD  CONSTRAINT [FK_Examen_Estado] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen] CHECK CONSTRAINT [FK_Examen_Estado]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen]  WITH CHECK ADD  CONSTRAINT [FK_Examen_Producto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Producto] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen] CHECK CONSTRAINT [FK_Examen_Producto]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_TipoExamen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen]  WITH CHECK ADD  CONSTRAINT [FK_Examen_TipoExamen] FOREIGN KEY([IdTipo])
REFERENCES [dbo].[TipoExamen] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_TipoExamen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen] CHECK CONSTRAINT [FK_Examen_TipoExamen]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario]  WITH CHECK ADD  CONSTRAINT [FK_ExamenUsuario_Examen] FOREIGN KEY([IdExamen])
REFERENCES [dbo].[Examen] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] CHECK CONSTRAINT [FK_ExamenUsuario_Examen]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario]  WITH CHECK ADD  CONSTRAINT [FK_ExamenUsuario_UserProfile] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] CHECK CONSTRAINT [FK_ExamenUsuario_UserProfile]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_UserProfile1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario]  WITH CHECK ADD  CONSTRAINT [FK_ExamenUsuario_UserProfile1] FOREIGN KEY([IdEjecutivo])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_UserProfile1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] CHECK CONSTRAINT [FK_ExamenUsuario_UserProfile1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_UserProfile2]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario]  WITH CHECK ADD  CONSTRAINT [FK_ExamenUsuario_UserProfile2] FOREIGN KEY([IdAster])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_UserProfile2]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] CHECK CONSTRAINT [FK_ExamenUsuario_UserProfile2]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pregunta_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pregunta]'))
ALTER TABLE [dbo].[Pregunta]  WITH CHECK ADD  CONSTRAINT [FK_Pregunta_Examen] FOREIGN KEY([IdExamen])
REFERENCES [dbo].[Examen] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pregunta_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pregunta]'))
ALTER TABLE [dbo].[Pregunta] CHECK CONSTRAINT [FK_Pregunta_Examen]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pregunta_TipoPregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pregunta]'))
ALTER TABLE [dbo].[Pregunta]  WITH CHECK ADD  CONSTRAINT [FK_Pregunta_TipoPregunta] FOREIGN KEY([IdTipoPregunta])
REFERENCES [dbo].[TipoPregunta] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pregunta_TipoPregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pregunta]'))
ALTER TABLE [dbo].[Pregunta] CHECK CONSTRAINT [FK_Pregunta_TipoPregunta]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_ExamenUsuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario]  WITH CHECK ADD  CONSTRAINT [FK_PreguntaUsuario_ExamenUsuario] FOREIGN KEY([IdExamenUsuario])
REFERENCES [dbo].[ExamenUsuario] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_ExamenUsuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario] CHECK CONSTRAINT [FK_PreguntaUsuario_ExamenUsuario]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_Pregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario]  WITH CHECK ADD  CONSTRAINT [FK_PreguntaUsuario_Pregunta] FOREIGN KEY([IdPregunta])
REFERENCES [dbo].[Pregunta] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_Pregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario] CHECK CONSTRAINT [FK_PreguntaUsuario_Pregunta]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario]  WITH CHECK ADD  CONSTRAINT [FK_PreguntaUsuario_UserProfile] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario] CHECK CONSTRAINT [FK_PreguntaUsuario_UserProfile]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_Linea]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto]'))
ALTER TABLE [dbo].[Producto]  WITH NOCHECK ADD  CONSTRAINT [FK_Producto_Linea] FOREIGN KEY([IdLinea])
REFERENCES [dbo].[Linea] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_Linea]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto]'))
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Linea]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PuntajeAsesoria_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[PuntajeAsesoria]'))
ALTER TABLE [dbo].[PuntajeAsesoria]  WITH NOCHECK ADD  CONSTRAINT [FK_PuntajeAsesoria_Examen] FOREIGN KEY([IdExamen])
REFERENCES [dbo].[Examen] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PuntajeAsesoria_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[PuntajeAsesoria]'))
ALTER TABLE [dbo].[PuntajeAsesoria] NOCHECK CONSTRAINT [FK_PuntajeAsesoria_Examen]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Respuesta_Pregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Respuesta]'))
ALTER TABLE [dbo].[Respuesta]  WITH CHECK ADD  CONSTRAINT [FK_Respuesta_Pregunta] FOREIGN KEY([IdPregunta])
REFERENCES [dbo].[Pregunta] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Respuesta_Pregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Respuesta]'))
ALTER TABLE [dbo].[Respuesta] CHECK CONSTRAINT [FK_Respuesta_Pregunta]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_ExamenUsuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario]  WITH CHECK ADD  CONSTRAINT [FK_RespuestaUsuario_ExamenUsuario] FOREIGN KEY([IdExamenUsuario])
REFERENCES [dbo].[ExamenUsuario] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_ExamenUsuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario] CHECK CONSTRAINT [FK_RespuestaUsuario_ExamenUsuario]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_Respuesta]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario]  WITH CHECK ADD  CONSTRAINT [FK_RespuestaUsuario_Respuesta] FOREIGN KEY([IdRespuesta])
REFERENCES [dbo].[Respuesta] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_Respuesta]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario] CHECK CONSTRAINT [FK_RespuestaUsuario_Respuesta]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario]  WITH CHECK ADD  CONSTRAINT [FK_RespuestaUsuario_UserProfile] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario] CHECK CONSTRAINT [FK_RespuestaUsuario_UserProfile]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserProfile_Linea]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserProfile]'))
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD  CONSTRAINT [FK_UserProfile_Linea] FOREIGN KEY([IdLinea])
REFERENCES [dbo].[Linea] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserProfile_Linea]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserProfile]'))
ALTER TABLE [dbo].[UserProfile] CHECK CONSTRAINT [FK_UserProfile_Linea]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]'))
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]'))
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]'))
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]'))
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO
