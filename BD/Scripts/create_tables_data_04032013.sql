USE [TestsAppBD]
GO
/****** Object:  ForeignKey [FK_Examen_Estado]    Script Date: 03/04/2013 17:23:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen] DROP CONSTRAINT [FK_Examen_Estado]
GO
/****** Object:  ForeignKey [FK_Examen_Linea]    Script Date: 03/04/2013 17:23:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_Linea]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen] DROP CONSTRAINT [FK_Examen_Linea]
GO
/****** Object:  ForeignKey [FK_ExamenUsuario_Examen]    Script Date: 03/04/2013 17:23:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] DROP CONSTRAINT [FK_ExamenUsuario_Examen]
GO
/****** Object:  ForeignKey [FK_ExamenUsuario_Usuario]    Script Date: 03/04/2013 17:23:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] DROP CONSTRAINT [FK_ExamenUsuario_Usuario]
GO
/****** Object:  ForeignKey [FK_Pregunta_Examen]    Script Date: 03/04/2013 17:23:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pregunta_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pregunta]'))
ALTER TABLE [dbo].[Pregunta] DROP CONSTRAINT [FK_Pregunta_Examen]
GO
/****** Object:  ForeignKey [FK_Pregunta_TipoPregunta]    Script Date: 03/04/2013 17:23:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pregunta_TipoPregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pregunta]'))
ALTER TABLE [dbo].[Pregunta] DROP CONSTRAINT [FK_Pregunta_TipoPregunta]
GO
/****** Object:  ForeignKey [FK_PreguntaUsuario_Pregunta]    Script Date: 03/04/2013 17:23:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_Pregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario] DROP CONSTRAINT [FK_PreguntaUsuario_Pregunta]
GO
/****** Object:  ForeignKey [FK_PreguntaUsuario_Usuario]    Script Date: 03/04/2013 17:23:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario] DROP CONSTRAINT [FK_PreguntaUsuario_Usuario]
GO
/****** Object:  ForeignKey [FK_Respuesta_Pregunta]    Script Date: 03/04/2013 17:23:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Respuesta_Pregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Respuesta]'))
ALTER TABLE [dbo].[Respuesta] DROP CONSTRAINT [FK_Respuesta_Pregunta]
GO
/****** Object:  ForeignKey [FK_RespuestaUsuario_Respuesta]    Script Date: 03/04/2013 17:23:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_Respuesta]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario] DROP CONSTRAINT [FK_RespuestaUsuario_Respuesta]
GO
/****** Object:  ForeignKey [FK_RespuestaUsuario_Usuario]    Script Date: 03/04/2013 17:23:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario] DROP CONSTRAINT [FK_RespuestaUsuario_Usuario]
GO
/****** Object:  Table [dbo].[RespuestaUsuario]    Script Date: 03/04/2013 17:23:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_Respuesta]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario] DROP CONSTRAINT [FK_RespuestaUsuario_Respuesta]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario] DROP CONSTRAINT [FK_RespuestaUsuario_Usuario]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_RespuestaUsuario_Marcada]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RespuestaUsuario] DROP CONSTRAINT [DF_RespuestaUsuario_Marcada]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]') AND type in (N'U'))
DROP TABLE [dbo].[RespuestaUsuario]
GO
/****** Object:  Table [dbo].[PreguntaUsuario]    Script Date: 03/04/2013 17:23:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_Pregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario] DROP CONSTRAINT [FK_PreguntaUsuario_Pregunta]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario] DROP CONSTRAINT [FK_PreguntaUsuario_Usuario]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]') AND type in (N'U'))
DROP TABLE [dbo].[PreguntaUsuario]
GO
/****** Object:  Table [dbo].[Respuesta]    Script Date: 03/04/2013 17:23:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Respuesta_Pregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Respuesta]'))
ALTER TABLE [dbo].[Respuesta] DROP CONSTRAINT [FK_Respuesta_Pregunta]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Respuesta_Marcada]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Respuesta] DROP CONSTRAINT [DF_Respuesta_Marcada]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Respuesta]') AND type in (N'U'))
DROP TABLE [dbo].[Respuesta]
GO
/****** Object:  Table [dbo].[ExamenUsuario]    Script Date: 03/04/2013 17:23:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] DROP CONSTRAINT [FK_ExamenUsuario_Examen]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] DROP CONSTRAINT [FK_ExamenUsuario_Usuario]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]') AND type in (N'U'))
DROP TABLE [dbo].[ExamenUsuario]
GO
/****** Object:  Table [dbo].[Pregunta]    Script Date: 03/04/2013 17:23:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pregunta_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pregunta]'))
ALTER TABLE [dbo].[Pregunta] DROP CONSTRAINT [FK_Pregunta_Examen]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pregunta_TipoPregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pregunta]'))
ALTER TABLE [dbo].[Pregunta] DROP CONSTRAINT [FK_Pregunta_TipoPregunta]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pregunta]') AND type in (N'U'))
DROP TABLE [dbo].[Pregunta]
GO
/****** Object:  Table [dbo].[Examen]    Script Date: 03/04/2013 17:23:45 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen] DROP CONSTRAINT [FK_Examen_Estado]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_Linea]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen] DROP CONSTRAINT [FK_Examen_Linea]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Examen]') AND type in (N'U'))
DROP TABLE [dbo].[Examen]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 03/04/2013 17:23:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Estado]') AND type in (N'U'))
DROP TABLE [dbo].[Estado]
GO
/****** Object:  Table [dbo].[Linea]    Script Date: 03/04/2013 17:23:45 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Linea]') AND type in (N'U'))
DROP TABLE [dbo].[Linea]
GO
/****** Object:  Table [dbo].[TipoPregunta]    Script Date: 03/04/2013 17:23:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoPregunta]') AND type in (N'U'))
DROP TABLE [dbo].[TipoPregunta]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 03/04/2013 17:23:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuario]') AND type in (N'U'))
DROP TABLE [dbo].[Usuario]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 03/04/2013 17:23:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](100) NULL,
	[Apellidos] [varchar](150) NULL,
	[NombreUsuario] [varchar](20) NULL,
	[Contraseña] [varchar](10) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON
INSERT [dbo].[Usuario] ([Id], [Nombres], [Apellidos], [NombreUsuario], [Contraseña]) VALUES (1, N'Ricardo', N'Chimpén', N'rchimpen', N'123456')
INSERT [dbo].[Usuario] ([Id], [Nombres], [Apellidos], [NombreUsuario], [Contraseña]) VALUES (2, N'Juan', N'Perez', N'jperez', N'123456')
INSERT [dbo].[Usuario] ([Id], [Nombres], [Apellidos], [NombreUsuario], [Contraseña]) VALUES (3, N'Blanca', N'Díaz', N'bdiaz', N'123456')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
/****** Object:  Table [dbo].[TipoPregunta]    Script Date: 03/04/2013 17:23:46 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TipoPregunta] ON
INSERT [dbo].[TipoPregunta] ([Id], [Nombre], [NombreControl]) VALUES (1, N'Opción Múltiple', N'Checkbox')
INSERT [dbo].[TipoPregunta] ([Id], [Nombre], [NombreControl]) VALUES (2, N'Para rellenar', N'Textarea')
SET IDENTITY_INSERT [dbo].[TipoPregunta] OFF
/****** Object:  Table [dbo].[Linea]    Script Date: 03/04/2013 17:23:45 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Linea] ON
INSERT [dbo].[Linea] ([Id], [Nombre]) VALUES (1, N'Línea 1')
INSERT [dbo].[Linea] ([Id], [Nombre]) VALUES (2, N'Línea 2')
INSERT [dbo].[Linea] ([Id], [Nombre]) VALUES (3, N'Línea 3')
INSERT [dbo].[Linea] ([Id], [Nombre]) VALUES (4, N'Línea 4')
SET IDENTITY_INSERT [dbo].[Linea] OFF
/****** Object:  Table [dbo].[Estado]    Script Date: 03/04/2013 17:23:44 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Estado] ON
INSERT [dbo].[Estado] ([Id], [Nombre]) VALUES (1, N'Activo')
INSERT [dbo].[Estado] ([Id], [Nombre]) VALUES (2, N'Inactivo')
INSERT [dbo].[Estado] ([Id], [Nombre]) VALUES (3, N'Listo')
SET IDENTITY_INSERT [dbo].[Estado] OFF
/****** Object:  Table [dbo].[Examen]    Script Date: 03/04/2013 17:23:45 ******/
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
	[IdLinea] [int] NULL,
	[Titulo] [varchar](400) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaEjecucion] [datetime] NOT NULL,
	[TiempoMaximo] [time](7) NOT NULL,
	[IdEstado] [int] NOT NULL,
	[PuntajeMaximo] [int] NULL,
 CONSTRAINT [PK_Examen] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Examen] ON
INSERT [dbo].[Examen] ([Id], [IdLinea], [Titulo], [FechaCreacion], [FechaEjecucion], [TiempoMaximo], [IdEstado], [PuntajeMaximo]) VALUES (9, 2, N'Examen de Prueba 1', CAST(0x0000A177010599ED AS DateTime), CAST(0x0000A17700000000 AS DateTime), CAST(0x07008C8647000000 AS Time), 1, 20)
SET IDENTITY_INSERT [dbo].[Examen] OFF
/****** Object:  Table [dbo].[Pregunta]    Script Date: 03/04/2013 17:23:45 ******/
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
 CONSTRAINT [PK_Pregunta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Pregunta] ON
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje]) VALUES (13, N'Texto de la Pregunta 1', 1, 9, 2, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje]) VALUES (14, N'Texto de la Pregunta 2', 2, 9, 1, CAST(10 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Pregunta] OFF
/****** Object:  Table [dbo].[ExamenUsuario]    Script Date: 03/04/2013 17:23:45 ******/
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
	[Puntaje] [decimal](18, 2) NULL,
	[Tiempo] [time](7) NULL,
	[FechaEjecucion] [datetime] NULL,
 CONSTRAINT [PK_ExamenUsuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[ExamenUsuario] ON
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [Puntaje], [Tiempo], [FechaEjecucion]) VALUES (3, 3, 9, CAST(5.00 AS Decimal(18, 2)), NULL, CAST(0x0000A1770116A2F9 AS DateTime))
SET IDENTITY_INSERT [dbo].[ExamenUsuario] OFF
/****** Object:  Table [dbo].[Respuesta]    Script Date: 03/04/2013 17:23:46 ******/
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
	[Marcada] [bit] NOT NULL CONSTRAINT [DF_Respuesta_Marcada]  DEFAULT ((0)),
 CONSTRAINT [PK_Respuesta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Respuesta] ON
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada]) VALUES (29, N'rpta 1', NULL, 13, 0, 0)
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada]) VALUES (30, N'rpta 2', NULL, 13, 1, 0)
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada]) VALUES (31, N'rpta 3', NULL, 13, 1, 0)
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada]) VALUES (32, N'rpta 4', NULL, 13, 0, 0)
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada]) VALUES (33, N'rellenar', NULL, 14, 1, 0)
SET IDENTITY_INSERT [dbo].[Respuesta] OFF
/****** Object:  Table [dbo].[PreguntaUsuario]    Script Date: 03/04/2013 17:23:45 ******/
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
	[Puntaje] [decimal](18, 2) NULL,
 CONSTRAINT [PK_PreguntaUsuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[PreguntaUsuario] ON
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [Puntaje]) VALUES (1, 13, 3, CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [Puntaje]) VALUES (2, 14, 3, CAST(0.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[PreguntaUsuario] OFF
/****** Object:  Table [dbo].[RespuestaUsuario]    Script Date: 03/04/2013 17:23:46 ******/
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
	[Texto] [varchar](400) NULL,
	[Marcada] [bit] NOT NULL CONSTRAINT [DF_RespuestaUsuario_Marcada]  DEFAULT ((0)),
 CONSTRAINT [PK_RespuestaUsuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[RespuestaUsuario] ON
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [Texto], [Marcada]) VALUES (1, 29, 3, NULL, 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [Texto], [Marcada]) VALUES (2, 30, 3, NULL, 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [Texto], [Marcada]) VALUES (3, 31, 3, NULL, 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [Texto], [Marcada]) VALUES (4, 32, 3, NULL, 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [Texto], [Marcada]) VALUES (5, 33, 3, N'rellenar', 0)
SET IDENTITY_INSERT [dbo].[RespuestaUsuario] OFF
/****** Object:  ForeignKey [FK_Examen_Estado]    Script Date: 03/04/2013 17:23:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen]  WITH CHECK ADD  CONSTRAINT [FK_Examen_Estado] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen] CHECK CONSTRAINT [FK_Examen_Estado]
GO
/****** Object:  ForeignKey [FK_Examen_Linea]    Script Date: 03/04/2013 17:23:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_Linea]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen]  WITH CHECK ADD  CONSTRAINT [FK_Examen_Linea] FOREIGN KEY([IdLinea])
REFERENCES [dbo].[Linea] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_Linea]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen] CHECK CONSTRAINT [FK_Examen_Linea]
GO
/****** Object:  ForeignKey [FK_ExamenUsuario_Examen]    Script Date: 03/04/2013 17:23:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario]  WITH CHECK ADD  CONSTRAINT [FK_ExamenUsuario_Examen] FOREIGN KEY([IdExamen])
REFERENCES [dbo].[Examen] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] CHECK CONSTRAINT [FK_ExamenUsuario_Examen]
GO
/****** Object:  ForeignKey [FK_ExamenUsuario_Usuario]    Script Date: 03/04/2013 17:23:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario]  WITH CHECK ADD  CONSTRAINT [FK_ExamenUsuario_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] CHECK CONSTRAINT [FK_ExamenUsuario_Usuario]
GO
/****** Object:  ForeignKey [FK_Pregunta_Examen]    Script Date: 03/04/2013 17:23:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pregunta_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pregunta]'))
ALTER TABLE [dbo].[Pregunta]  WITH CHECK ADD  CONSTRAINT [FK_Pregunta_Examen] FOREIGN KEY([IdExamen])
REFERENCES [dbo].[Examen] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pregunta_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pregunta]'))
ALTER TABLE [dbo].[Pregunta] CHECK CONSTRAINT [FK_Pregunta_Examen]
GO
/****** Object:  ForeignKey [FK_Pregunta_TipoPregunta]    Script Date: 03/04/2013 17:23:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pregunta_TipoPregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pregunta]'))
ALTER TABLE [dbo].[Pregunta]  WITH CHECK ADD  CONSTRAINT [FK_Pregunta_TipoPregunta] FOREIGN KEY([IdTipoPregunta])
REFERENCES [dbo].[TipoPregunta] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pregunta_TipoPregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pregunta]'))
ALTER TABLE [dbo].[Pregunta] CHECK CONSTRAINT [FK_Pregunta_TipoPregunta]
GO
/****** Object:  ForeignKey [FK_PreguntaUsuario_Pregunta]    Script Date: 03/04/2013 17:23:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_Pregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario]  WITH CHECK ADD  CONSTRAINT [FK_PreguntaUsuario_Pregunta] FOREIGN KEY([IdPregunta])
REFERENCES [dbo].[Pregunta] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_Pregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario] CHECK CONSTRAINT [FK_PreguntaUsuario_Pregunta]
GO
/****** Object:  ForeignKey [FK_PreguntaUsuario_Usuario]    Script Date: 03/04/2013 17:23:45 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario]  WITH CHECK ADD  CONSTRAINT [FK_PreguntaUsuario_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario] CHECK CONSTRAINT [FK_PreguntaUsuario_Usuario]
GO
/****** Object:  ForeignKey [FK_Respuesta_Pregunta]    Script Date: 03/04/2013 17:23:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Respuesta_Pregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Respuesta]'))
ALTER TABLE [dbo].[Respuesta]  WITH CHECK ADD  CONSTRAINT [FK_Respuesta_Pregunta] FOREIGN KEY([IdPregunta])
REFERENCES [dbo].[Pregunta] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Respuesta_Pregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Respuesta]'))
ALTER TABLE [dbo].[Respuesta] CHECK CONSTRAINT [FK_Respuesta_Pregunta]
GO
/****** Object:  ForeignKey [FK_RespuestaUsuario_Respuesta]    Script Date: 03/04/2013 17:23:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_Respuesta]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario]  WITH CHECK ADD  CONSTRAINT [FK_RespuestaUsuario_Respuesta] FOREIGN KEY([IdRespuesta])
REFERENCES [dbo].[Respuesta] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_Respuesta]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario] CHECK CONSTRAINT [FK_RespuestaUsuario_Respuesta]
GO
/****** Object:  ForeignKey [FK_RespuestaUsuario_Usuario]    Script Date: 03/04/2013 17:23:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario]  WITH CHECK ADD  CONSTRAINT [FK_RespuestaUsuario_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario] CHECK CONSTRAINT [FK_RespuestaUsuario_Usuario]
GO
