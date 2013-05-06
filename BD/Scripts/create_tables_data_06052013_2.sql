
/****** Object:  ForeignKey [FK_DocumentoLinea_Documento]    Script Date: 05/06/2013 17:52:01 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentoLinea_Documento]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentoLinea]'))
ALTER TABLE [dbo].[DocumentoLinea] DROP CONSTRAINT [FK_DocumentoLinea_Documento]
GO
/****** Object:  ForeignKey [FK_DocumentoLinea_Linea]    Script Date: 05/06/2013 17:52:01 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentoLinea_Linea]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentoLinea]'))
ALTER TABLE [dbo].[DocumentoLinea] DROP CONSTRAINT [FK_DocumentoLinea_Linea]
GO
/****** Object:  ForeignKey [FK_Examen_Estado]    Script Date: 05/06/2013 17:52:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen] DROP CONSTRAINT [FK_Examen_Estado]
GO
/****** Object:  ForeignKey [FK_Examen_Producto]    Script Date: 05/06/2013 17:52:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen] DROP CONSTRAINT [FK_Examen_Producto]
GO
/****** Object:  ForeignKey [FK_Examen_TipoExamen]    Script Date: 05/06/2013 17:52:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_TipoExamen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen] DROP CONSTRAINT [FK_Examen_TipoExamen]
GO
/****** Object:  ForeignKey [FK_ExamenUsuario_Examen]    Script Date: 05/06/2013 17:52:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] DROP CONSTRAINT [FK_ExamenUsuario_Examen]
GO
/****** Object:  ForeignKey [FK_ExamenUsuario_UserProfile]    Script Date: 05/06/2013 17:52:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] DROP CONSTRAINT [FK_ExamenUsuario_UserProfile]
GO
/****** Object:  ForeignKey [FK_ExamenUsuario_UserProfile1]    Script Date: 05/06/2013 17:52:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_UserProfile1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] DROP CONSTRAINT [FK_ExamenUsuario_UserProfile1]
GO
/****** Object:  ForeignKey [FK_ExamenUsuario_UserProfile2]    Script Date: 05/06/2013 17:52:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_UserProfile2]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] DROP CONSTRAINT [FK_ExamenUsuario_UserProfile2]
GO
/****** Object:  ForeignKey [FK_Pregunta_Examen]    Script Date: 05/06/2013 17:52:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pregunta_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pregunta]'))
ALTER TABLE [dbo].[Pregunta] DROP CONSTRAINT [FK_Pregunta_Examen]
GO
/****** Object:  ForeignKey [FK_Pregunta_TipoPregunta]    Script Date: 05/06/2013 17:52:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pregunta_TipoPregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pregunta]'))
ALTER TABLE [dbo].[Pregunta] DROP CONSTRAINT [FK_Pregunta_TipoPregunta]
GO
/****** Object:  ForeignKey [FK_PreguntaUsuario_ExamenUsuario]    Script Date: 05/06/2013 17:52:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_ExamenUsuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario] DROP CONSTRAINT [FK_PreguntaUsuario_ExamenUsuario]
GO
/****** Object:  ForeignKey [FK_PreguntaUsuario_Pregunta]    Script Date: 05/06/2013 17:52:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_Pregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario] DROP CONSTRAINT [FK_PreguntaUsuario_Pregunta]
GO
/****** Object:  ForeignKey [FK_PreguntaUsuario_UserProfile]    Script Date: 05/06/2013 17:52:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario] DROP CONSTRAINT [FK_PreguntaUsuario_UserProfile]
GO
/****** Object:  ForeignKey [FK_ProductoLinea_Linea]    Script Date: 05/06/2013 17:52:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductoLinea_Linea]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductoLinea]'))
ALTER TABLE [dbo].[ProductoLinea] DROP CONSTRAINT [FK_ProductoLinea_Linea]
GO
/****** Object:  ForeignKey [FK_ProductoLinea_Producto]    Script Date: 05/06/2013 17:52:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductoLinea_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductoLinea]'))
ALTER TABLE [dbo].[ProductoLinea] DROP CONSTRAINT [FK_ProductoLinea_Producto]
GO
/****** Object:  ForeignKey [FK_PuntajeAsesoria_Examen]    Script Date: 05/06/2013 17:52:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PuntajeAsesoria_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[PuntajeAsesoria]'))
ALTER TABLE [dbo].[PuntajeAsesoria] DROP CONSTRAINT [FK_PuntajeAsesoria_Examen]
GO
/****** Object:  ForeignKey [FK_Respuesta_Pregunta]    Script Date: 05/06/2013 17:52:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Respuesta_Pregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Respuesta]'))
ALTER TABLE [dbo].[Respuesta] DROP CONSTRAINT [FK_Respuesta_Pregunta]
GO
/****** Object:  ForeignKey [FK_RespuestaUsuario_ExamenUsuario]    Script Date: 05/06/2013 17:52:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_ExamenUsuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario] DROP CONSTRAINT [FK_RespuestaUsuario_ExamenUsuario]
GO
/****** Object:  ForeignKey [FK_RespuestaUsuario_Respuesta]    Script Date: 05/06/2013 17:52:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_Respuesta]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario] DROP CONSTRAINT [FK_RespuestaUsuario_Respuesta]
GO
/****** Object:  ForeignKey [FK_RespuestaUsuario_UserProfile]    Script Date: 05/06/2013 17:52:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario] DROP CONSTRAINT [FK_RespuestaUsuario_UserProfile]
GO
/****** Object:  ForeignKey [FK_UserProfile_Linea]    Script Date: 05/06/2013 17:52:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserProfile_Linea]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserProfile]'))
ALTER TABLE [dbo].[UserProfile] DROP CONSTRAINT [FK_UserProfile_Linea]
GO
/****** Object:  ForeignKey [fk_RoleId]    Script Date: 05/06/2013 17:52:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]'))
ALTER TABLE [dbo].[webpages_UsersInRoles] DROP CONSTRAINT [fk_RoleId]
GO
/****** Object:  ForeignKey [fk_UserId]    Script Date: 05/06/2013 17:52:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]'))
ALTER TABLE [dbo].[webpages_UsersInRoles] DROP CONSTRAINT [fk_UserId]
GO
/****** Object:  Table [dbo].[RespuestaUsuario]    Script Date: 05/06/2013 17:52:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_ExamenUsuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario] DROP CONSTRAINT [FK_RespuestaUsuario_ExamenUsuario]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_Respuesta]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario] DROP CONSTRAINT [FK_RespuestaUsuario_Respuesta]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario] DROP CONSTRAINT [FK_RespuestaUsuario_UserProfile]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_RespuestaUsuario_Marcada]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RespuestaUsuario] DROP CONSTRAINT [DF_RespuestaUsuario_Marcada]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]') AND type in (N'U'))
DROP TABLE [dbo].[RespuestaUsuario]
GO
/****** Object:  Table [dbo].[Respuesta]    Script Date: 05/06/2013 17:52:03 ******/
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
/****** Object:  Table [dbo].[PreguntaUsuario]    Script Date: 05/06/2013 17:52:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_ExamenUsuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario] DROP CONSTRAINT [FK_PreguntaUsuario_ExamenUsuario]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_Pregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario] DROP CONSTRAINT [FK_PreguntaUsuario_Pregunta]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario] DROP CONSTRAINT [FK_PreguntaUsuario_UserProfile]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]') AND type in (N'U'))
DROP TABLE [dbo].[PreguntaUsuario]
GO
/****** Object:  Table [dbo].[Pregunta]    Script Date: 05/06/2013 17:52:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pregunta_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pregunta]'))
ALTER TABLE [dbo].[Pregunta] DROP CONSTRAINT [FK_Pregunta_Examen]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pregunta_TipoPregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pregunta]'))
ALTER TABLE [dbo].[Pregunta] DROP CONSTRAINT [FK_Pregunta_TipoPregunta]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Pregunta_Habilitada]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Pregunta] DROP CONSTRAINT [DF_Pregunta_Habilitada]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pregunta]') AND type in (N'U'))
DROP TABLE [dbo].[Pregunta]
GO
/****** Object:  Table [dbo].[PuntajeAsesoria]    Script Date: 05/06/2013 17:52:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PuntajeAsesoria_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[PuntajeAsesoria]'))
ALTER TABLE [dbo].[PuntajeAsesoria] DROP CONSTRAINT [FK_PuntajeAsesoria_Examen]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PuntajeAsesoria]') AND type in (N'U'))
DROP TABLE [dbo].[PuntajeAsesoria]
GO
/****** Object:  Table [dbo].[ExamenUsuario]    Script Date: 05/06/2013 17:52:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] DROP CONSTRAINT [FK_ExamenUsuario_Examen]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] DROP CONSTRAINT [FK_ExamenUsuario_UserProfile]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_UserProfile1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] DROP CONSTRAINT [FK_ExamenUsuario_UserProfile1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_UserProfile2]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] DROP CONSTRAINT [FK_ExamenUsuario_UserProfile2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]') AND type in (N'U'))
DROP TABLE [dbo].[ExamenUsuario]
GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 05/06/2013 17:52:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]'))
ALTER TABLE [dbo].[webpages_UsersInRoles] DROP CONSTRAINT [fk_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]'))
ALTER TABLE [dbo].[webpages_UsersInRoles] DROP CONSTRAINT [fk_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]') AND type in (N'U'))
DROP TABLE [dbo].[webpages_UsersInRoles]
GO
/****** Object:  Table [dbo].[DocumentoLinea]    Script Date: 05/06/2013 17:52:01 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentoLinea_Documento]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentoLinea]'))
ALTER TABLE [dbo].[DocumentoLinea] DROP CONSTRAINT [FK_DocumentoLinea_Documento]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentoLinea_Linea]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentoLinea]'))
ALTER TABLE [dbo].[DocumentoLinea] DROP CONSTRAINT [FK_DocumentoLinea_Linea]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentoLinea]') AND type in (N'U'))
DROP TABLE [dbo].[DocumentoLinea]
GO
/****** Object:  Table [dbo].[Examen]    Script Date: 05/06/2013 17:52:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen] DROP CONSTRAINT [FK_Examen_Estado]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen] DROP CONSTRAINT [FK_Examen_Producto]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_TipoExamen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen] DROP CONSTRAINT [FK_Examen_TipoExamen]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Examen]') AND type in (N'U'))
DROP TABLE [dbo].[Examen]
GO
/****** Object:  Table [dbo].[ProductoLinea]    Script Date: 05/06/2013 17:52:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductoLinea_Linea]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductoLinea]'))
ALTER TABLE [dbo].[ProductoLinea] DROP CONSTRAINT [FK_ProductoLinea_Linea]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductoLinea_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductoLinea]'))
ALTER TABLE [dbo].[ProductoLinea] DROP CONSTRAINT [FK_ProductoLinea_Producto]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductoLinea]') AND type in (N'U'))
DROP TABLE [dbo].[ProductoLinea]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 05/06/2013 17:52:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserProfile_Linea]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserProfile]'))
ALTER TABLE [dbo].[UserProfile] DROP CONSTRAINT [FK_UserProfile_Linea]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserProfile]') AND type in (N'U'))
DROP TABLE [dbo].[UserProfile]
GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 05/06/2013 17:52:04 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__webpages___IsCon__7E37BEF6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[webpages_Membership] DROP CONSTRAINT [DF__webpages___IsCon__7E37BEF6]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__webpages___Passw__7F2BE32F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[webpages_Membership] DROP CONSTRAINT [DF__webpages___Passw__7F2BE32F]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_Membership]') AND type in (N'U'))
DROP TABLE [dbo].[webpages_Membership]
GO
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 05/06/2013 17:52:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_OAuthMembership]') AND type in (N'U'))
DROP TABLE [dbo].[webpages_OAuthMembership]
GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 05/06/2013 17:52:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_Roles]') AND type in (N'U'))
DROP TABLE [dbo].[webpages_Roles]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 05/06/2013 17:52:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Producto]') AND type in (N'U'))
DROP TABLE [dbo].[Producto]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 05/06/2013 17:52:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Estado]') AND type in (N'U'))
DROP TABLE [dbo].[Estado]
GO
/****** Object:  Table [dbo].[Documento]    Script Date: 05/06/2013 17:52:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Documento]') AND type in (N'U'))
DROP TABLE [dbo].[Documento]
GO
/****** Object:  Table [dbo].[Linea]    Script Date: 05/06/2013 17:52:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Linea]') AND type in (N'U'))
DROP TABLE [dbo].[Linea]
GO
/****** Object:  Table [dbo].[NombreTabla]    Script Date: 05/06/2013 17:52:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NombreTabla]') AND type in (N'U'))
DROP TABLE [dbo].[NombreTabla]
GO
/****** Object:  Table [dbo].[TipoExamen]    Script Date: 05/06/2013 17:52:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoExamen]') AND type in (N'U'))
DROP TABLE [dbo].[TipoExamen]
GO
/****** Object:  Table [dbo].[TipoPregunta]    Script Date: 05/06/2013 17:52:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoPregunta]') AND type in (N'U'))
DROP TABLE [dbo].[TipoPregunta]
GO
/****** Object:  Table [dbo].[UserMigration]    Script Date: 05/06/2013 17:52:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserMigration]') AND type in (N'U'))
DROP TABLE [dbo].[UserMigration]
GO
/****** Object:  Table [dbo].[UserMigration]    Script Date: 05/06/2013 17:52:04 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[UserMigration] ON
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (1, 2, 10, N'Ana', N'Rocha Malqui', N'arocha@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (2, 2, 10, N'Patricia', N'Del Castillo Alcedo', N'ddelcastillo@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (3, 2, 10, N'Rennier', N'Yañez Farfan', N'ryanez@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (4, 2, 10, N'Juan', N'Olivera Guerra', N'jolivera@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (5, 2, 10, N'Encarnita', N'Zegarra Ruíz', N'ezegarra@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (6, 4, 10, N'Juan Carlos', N'Guajardo Mendez', N'jguajardo@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (7, 3, 5, N'Sandro', N'Salazar Sanez', N'ssalazar@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (8, 5, 5, N'Guillermo', N'Cubas Giudice', N'gcubas@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (9, 2, 5, N'Diana', N'Mostacero Rodríguez', N'dmostacero@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (10, 2, 5, N'Lis Faride', N'Augusto Vega', N'laugusto@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (11, 2, 5, N'Zoila', N'Sánchez Collantes', N'zsanchez@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (12, 2, 5, N'Maria Isabel', N'Tocto Geraldo', N'mtocto@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (13, 2, 5, N'José', N'Freyre Morales', N'jfreyre@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (14, 2, 5, N'Delia', N'Zapata Coral', N'dzapata@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (15, 2, 5, N'Maribel', N'Pisconte Guerreros', N'mpisconte@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (16, 2, 5, N'Cristina', N'Cier Guzmán', N'icier@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (17, 2, 5, N'Jandira', N'Paredes Dueñas', N'jparedes@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (18, 2, 5, N'Jesús', N'Gonzáles Peralta', N'jgonzales@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (19, 2, 5, N'Roxana', N'Sosa Angulo', N'rsosa@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (20, 2, 5, N'Yasmine', N'Garrido Vargas', N'ygarrido@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (21, 2, 5, N'Cintia Kateryn', N'Sanchez Campos', N'csanchezc@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (22, 3, 9, N'Henry', N'Ross Accame', N'hross@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (23, 2, 9, N'Carmen Luz', N'Tiburcio Alguiar', N'ctiburcio@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (24, 2, 9, N'Tadeo', N'Eduardo Meyer', N'tmeyer@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (25, 2, 9, N'Karín', N'Noriega Najar', N'knoriega@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (26, 2, 9, N'Davis', N'Gutiérrez Orgeda', N'dgutierrez@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (27, 2, 9, N'Marisol', N'Chacón Montañez', N'mchacon@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (28, 2, 9, N'Alejandra', N'Cribillero Muchotrigo', N'ecribillero@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (29, 2, 9, N'Jonathan', N'Suarez Salas', N'jsuarez@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (30, 3, 6, N'Calixto', N'Castro Sipan', N'ccastro@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (31, 6, 9, N'Eliza Virginia', N'Falla Huambo', N'vfalla@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (32, 6, 9, N'Maria Magdalena', N'Oré Gonzales', N'more@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (33, 6, 9, N'Patricia', N'Vernal Sirvas', N'pvernal@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (34, 6, 9, N'Ana Patricia', N'Alcazar Seijas', N'aalcazar@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (35, 6, 9, N'Ana Angella', N'Alvarado Guzman', N'aalvarado@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (36, 6, 9, N'Margareth Sabella', N'Reyes Becerra', N'sreyes@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (37, 6, 9, N'Verónica Carmen', N'Vidal Valladares', N'vvidal@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (38, 6, 9, N'Karol', N'Caruajulca', NULL)
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (39, 6, 9, N'Dina', N'Armas', NULL)
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (40, 6, 9, N'Rosa', N'Skrinjaric', NULL)
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (41, 6, 9, N'María', N'Delgado', NULL)
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (42, 6, 9, N'Eva', N'Ascencio', NULL)
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (43, 6, 9, N'Erika Yanina', N'Ramirez Zevallos', N'eramirez@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (44, 7, 9, N'Hector', N'Alvarez Garcia', N'halvarez@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (45, 8, 9, N'Williams', N'Romero  Cáceres', N'wromero@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (46, 3, 9, N'Víctor', N'Vásquez Claudet', N'vvasquez@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (47, 3, 9, N'Fredy', N'Murillo Begazo', N'fmurillo@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (48, 9, 9, N'Antonio', N'Ríos Noriega', N'arios@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (49, 9, 9, N'Rosario', N'Cabrera Sirlupu', N'rcabrera@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (50, 10, 9, N'Elke', N'Gutiérrez Merino', N'egutierrez@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (51, 10, 9, N'Yanina Sarita', N'Vilela Céspedes', N'yvilela@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (52, 10, 9, N'Ursula', N'Martínez Guevara', N'umartinez@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (53, 10, 9, N'Gina', N'Gonzáles Nuñez', N'ggonzales@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (54, 10, 9, N'Inés', N'Camargo Salazar', N'icamargo@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (55, 10, 9, N'María', N'Chi Raa', N'mchi@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (56, 11, 9, N'Gisella', N'Ramirez Barrionuevo', N'gramirez@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (57, 11, 9, N'Maritza', N'Navarro Price', N'mnavarro@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (58, 10, 9, N'Ivette', N'Rodriguez Mendoza', N'irodriguez@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (59, 10, 9, N'Laura', N'Saldaña Leyton', N'lsaldana@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (60, 10, 9, N'Lizeth ', N'Ramírez Herrea', NULL)
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (61, 10, 9, N'Lili', N'Perez', NULL)
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (62, 10, 9, N'Carla', N'Torres Rondón', NULL)
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (63, 10, 9, N'Juliet', N'Espíritu Muñoz', NULL)
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (64, 10, 9, N'Neri', N'Sabogal Martinez', N'nsabogal@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (65, 10, 9, N'Gilda Karina', N'Sanchez Barrera ', N'gsanchez@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (66, 10, 9, N'Gustavo Alonso', N'Hinostroza Aguilar', N'ghinostroza@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (67, 2, 7, N'José Luis', N'Tello Melendez', N'jtello@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (68, 2, 7, N'Rosa', N'Gonzales García', N'smorote@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (69, 2, 7, N'Melisa', N'Sime Burga', N'msime@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (70, 2, 7, N'Andrea', N'Tejada', N'atejada@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (71, 2, 7, N'Aldo', N'Suarez Mosaurieta', N'asuarez@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (72, 2, 7, N'Keti', N'Almirón Domínguez', N'kalmiron@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (73, 2, 7, N'Doris', N'Quintos Silva', N'dquintos@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (74, 2, 7, N'Fredi', N'Sanchez Trujillo', N'fsanchez@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (75, 2, 7, N'Yovanna', N'Puchuri Martínez', N'ypuchuri@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (76, 2, 7, N'Cynthia ', N'Dioses Herrera', N'cdioses@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (77, 2, 7, N'Giannina', N'Toro Saavedra', N'etoro@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (78, 2, 7, N'Eduardo', N'Cabezudo Tovar', N'ecabezudo@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (79, 2, 7, N'Manuel', N'Guerrero Guardia', N'mguerrerro@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (80, 12, 7, N'Daniel', N'Vasquez Alvarado', N'dvasquez@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (81, 2, 8, N'Mariana', N'Leon Medina', N'mleon@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (82, 2, 8, N'América ', N'Ávila Román', N'aavila@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (83, 2, 8, N'Manuela', N'Esquen Vasquez', N'mesquen@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (84, 2, 8, N'César', N'Manzaneda Luna', N'cmanzaneda@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (85, 2, 8, N'Rocío', N'Egusquiza Peña', N'regusquiza@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (86, 2, 8, N'Karina', N'Chavez Guevara', N'kchavez@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (87, 2, 8, N'Vanessa', N'Rodriguez Castillo', N'vrodriguez@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (88, 2, 8, N'María del Carmen', N'Cherre Espejo', N'mcherre@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (89, 2, 8, N'Daniela', N'Surca Vilchez', N'csurca@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (90, 2, 8, N'Mabel', N'Succar Medina', N'msuccar@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (91, 2, 8, N'Ana', N'Vallejos Mendoza', N'avallejos@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (92, 2, 8, N'Vilma', N'Infante Gomez', N'vinfante@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (93, 2, 8, N'Francy', N'Vera Fort', N'fvera@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (94, 12, 8, N'Philippe', N'Lafosse Masías', N'plafosse@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (95, 3, 8, N'Julio César', N'Reyer Gonzales', N'jreyes@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (96, 2, 6, N'Luz', N'Belen Reto', N'lreto@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (97, 2, 6, N'Claudia', N'Benavente Riega', N'cbenavente@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (98, 2, 6, N'Lila', N'Apolo Arrieta', N'lapolo@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (99, 2, 6, N'Gisela', N'Calderón Alcalde', N'gcalderon@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (100, 2, 6, N'Brenda', N'Calderón Soria', N'bcalderon@unimed.com.pe')
GO
print 'Processed 100 total records'
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (101, 2, 6, N'Kony', N'Cuellar De La Cruz', N'kcuellar@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (102, 2, 6, N'Lucy', N'Onofre Escurra', N'lonofre@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (103, 2, 6, N'José', N'Priano Gervasi', N'jpriano@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (104, 2, 6, N'Maria Luzmila', N'Campos Urbina', N'mcampos@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (105, 2, 6, N'Stefany', N'Franco Reyna', N'sfranco@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (106, 2, 6, N'Verónica', N'Estacio Naveda', N'vestacio@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (107, 2, 6, N'Gloria', N'Cuadra Bianchi', N'gcuadra@unimed.com.pe')
INSERT [dbo].[UserMigration] ([Id], [RoleId], [IdLinea], [Nombres], [Apellidos], [Mail]) VALUES (108, 12, 6, N'Marisol', N'Rubio Estrada', N'mrubio@unimed.com.pe')
SET IDENTITY_INSERT [dbo].[UserMigration] OFF
/****** Object:  Table [dbo].[TipoPregunta]    Script Date: 05/06/2013 17:52:04 ******/
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
INSERT [dbo].[TipoPregunta] ([Id], [Nombre], [NombreControl]) VALUES (9, N'Asesoría', N'Asesoria')
SET IDENTITY_INSERT [dbo].[TipoPregunta] OFF
/****** Object:  Table [dbo].[TipoExamen]    Script Date: 05/06/2013 17:52:03 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TipoExamen] ON
INSERT [dbo].[TipoExamen] ([Id], [Nombre]) VALUES (1, N'Evaluación Aster')
INSERT [dbo].[TipoExamen] ([Id], [Nombre]) VALUES (2, N'Asesoría en Terreno')
SET IDENTITY_INSERT [dbo].[TipoExamen] OFF
/****** Object:  Table [dbo].[NombreTabla]    Script Date: 05/06/2013 17:52:02 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[NombreTabla] ON
INSERT [dbo].[NombreTabla] ([Id], [Tabla], [NombreMostrar]) VALUES (1, N'Linea', N'Solución')
INSERT [dbo].[NombreTabla] ([Id], [Tabla], [NombreMostrar]) VALUES (2, N'Aster', N'Aster')
SET IDENTITY_INSERT [dbo].[NombreTabla] OFF
/****** Object:  Table [dbo].[Linea]    Script Date: 05/06/2013 17:52:02 ******/
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
INSERT [dbo].[Linea] ([Id], [Nombre]) VALUES (5, N'Alivio')
INSERT [dbo].[Linea] ([Id], [Nombre]) VALUES (6, N'Salud Mujer')
INSERT [dbo].[Linea] ([Id], [Nombre]) VALUES (7, N'Respiratoria')
INSERT [dbo].[Linea] ([Id], [Nombre]) VALUES (8, N'Salud Digestiva')
INSERT [dbo].[Linea] ([Id], [Nombre]) VALUES (9, N'Corporativo')
INSERT [dbo].[Linea] ([Id], [Nombre]) VALUES (10, N'Acceso')
SET IDENTITY_INSERT [dbo].[Linea] OFF
/****** Object:  Table [dbo].[Documento]    Script Date: 05/06/2013 17:52:01 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Documento] ON
INSERT [dbo].[Documento] ([Id], [Nombre], [Descripcion], [Ruta]) VALUES (1, N'Prueba', N'Descripción', N'2M0R152L0W1R0Y6f_T4h5Y4_7Y7e5E0L6U821-3w7y9_0z22.pdf')
INSERT [dbo].[Documento] ([Id], [Nombre], [Descripcion], [Ruta]) VALUES (2, N'Prueba 12', N'Prueba 12 desc', N'Informe.xlsx')
INSERT [dbo].[Documento] ([Id], [Nombre], [Descripcion], [Ruta]) VALUES (3, N'Prueba img', N'prueba img desc', N'Comprobante.png')
INSERT [dbo].[Documento] ([Id], [Nombre], [Descripcion], [Ruta]) VALUES (4, N'asdasda', N'sdasdasdasd', N'geoparas.xls')
SET IDENTITY_INSERT [dbo].[Documento] OFF
/****** Object:  Table [dbo].[Estado]    Script Date: 05/06/2013 17:52:01 ******/
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
/****** Object:  Table [dbo].[Producto]    Script Date: 05/06/2013 17:52:03 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (1, N'Previne D Geltabs - Previbe D Fort ', 5)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (2, N'Bonese', 5)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (3, N'Flexure - MSM', 5)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (4, N'Betaduo', 5)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (5, N'Dolantag', 5)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (6, N'Meloxx', 5)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (7, N'Tamin', 5)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (10, N'Albisec', 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (11, N'Vaxigel', 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (12, N'Gestafer', 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (13, N'Vitesol E', 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (14, N'Vitesol B6', 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (15, N'Lactinese', 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (16, N'Tusiclox', 7)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (17, N'Levaler/Alercet D', 7)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (18, N'Xalar', 7)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (19, N'Menistin', 7)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (20, N'Inedol', 7)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (21, N'Bianos', 7)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (22, N'Ezolium', 8)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (23, N'Ifaxim', 8)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (24, N'Alercet', 8)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (25, N'Nytasoft', 8)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (26, N'Muvett/Muvett S', 8)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (27, N'Equiplen', 8)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (29, N'Levaler', 9)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (32, N'Alercet D', 9)
INSERT [dbo].[Producto] ([Id], [Nombre], [IdLinea]) VALUES (57, N'Producto de Prueba', 6)
SET IDENTITY_INSERT [dbo].[Producto] OFF
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 05/06/2013 17:52:04 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[webpages_Roles] ON
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (1, N'Administrador')
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (2, N'Aster')
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (6, N'EAP')
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (4, N'Gerente Acceso')
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (7, N'Gerente Cial y Prom.Md.')
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (8, N'Gerente de Etto')
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (12, N'Gerente de Línea')
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (3, N'Gerente Regional')
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (5, N'Gerente ST')
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (9, N'Key Account Manager')
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (10, N'Líder Comercial')
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (11, N'Líder Comercial  (CAD.)')
SET IDENTITY_INSERT [dbo].[webpages_Roles] OFF
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 05/06/2013 17:52:04 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 05/06/2013 17:52:04 ******/
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
	[IsConfirmed] [bit] NULL DEFAULT ((0)),
	[LastPasswordFailureDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NOT NULL DEFAULT ((0)),
	[Password] [nvarchar](128) NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[PasswordVerificationToken] [nvarchar](128) NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1, CAST(0x0000A17A01522858 AS DateTime), NULL, 1, NULL, 0, N'AMxL1C4Dnzy5b64vn9oAnVIEpDzkotlb7zBZ6ue+hhCfEJ1MJHFSyOXQNh/soaWiUQ==', CAST(0x0000A17A01522858 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (2, CAST(0x0000A17A0152F947 AS DateTime), NULL, 1, NULL, 0, N'AD5r+GKqkI05MGl7uQJDH9+4d+2qTyuqAR+KA1NuGKazwTKxOQlMs1mFvbdFon9jPg==', CAST(0x0000A17A0152F947 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (3, CAST(0x0000A17B0106164D AS DateTime), NULL, 1, NULL, 0, N'ABSeFKrDurYDLQEQDxQ5ZUOIhilKq72LLhd6CRbYLFBWgAzt+D0aud83ONBX5XP2fQ==', CAST(0x0000A17B0106164D AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (4, CAST(0x0000A17B0107FD23 AS DateTime), NULL, 1, NULL, 0, N'ADVTpzphAiRPGPRyAk926RTS1vnGBd+mo3iFknXWbWzDh7zOqkJ0Jbz1V+9lq4ne4g==', CAST(0x0000A17B0107FD23 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (5, CAST(0x0000A17B010B53FF AS DateTime), NULL, 1, NULL, 0, N'ADezSppSI8a25ESr9APJxBXjfDJCRjSSaKIVcdzffwB2vxSMSC8SnpZQncryPxsHHw==', CAST(0x0000A17B010B53FF AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (6, CAST(0x0000A17B0111CA3E AS DateTime), NULL, 1, NULL, 0, N'ALDWI1rj3BFAb80sJvaaihWwIawifq6Da0eBcdqyLupY8+OKXu2OcyDpAIIVQRxjDA==', CAST(0x0000A17B0111CA3E AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (7, CAST(0x0000A17B01126337 AS DateTime), NULL, 1, NULL, 0, N'AHEk+yAqBEsoaLUISJ5bKcqqRDmz8GcozO/5HHi3fj9KBuuNYfMIxxlTKq2w4Kq9pA==', CAST(0x0000A17B01126337 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (8, CAST(0x0000A18000032F6A AS DateTime), NULL, 1, NULL, 0, N'ABlQ1G1rcHOA0vzOVSa8rTO7U7S5tFzhRNfLo9RkxhS0W2jJ0IX+N0sg7Mbe0iChDA==', CAST(0x0000A18000032F6A AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (9, CAST(0x0000A1800003E0C4 AS DateTime), NULL, 1, NULL, 0, N'AMJhMym8GuRqhJa9y8c61ZtTwY7ZiYpTgqr4p84Zyryz/ZM/CrO7Hm9tWtBqfkVxww==', CAST(0x0000A1800003E0C4 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (10, CAST(0x0000A19401088306 AS DateTime), NULL, 1, CAST(0x0000A1B401246F1E AS DateTime), 0, N'ANuOqFHjFBMBcU9sYe2ZCxPGNbpH1NhwHNOohsjqkR2GHK2RcNxrQWxxs+LprrgDsw==', CAST(0x0000A1B40123BB1F AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (119, CAST(0x0000A1A1003241B2 AS DateTime), NULL, 1, CAST(0x0000A1B401340A53 AS DateTime), 0, N'APCIbIGzj/I+aPAxhNmXtGv0v3hg3l/G4MhdRf/dMloPvtOr5z9tKMIbUT60F/qO8Q==', CAST(0x0000A1B40124DC2A AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (120, CAST(0x0000A1A100324374 AS DateTime), NULL, 1, NULL, 0, N'ALKOXokMzPSve7GGAt4o4HsiB841L2ktQlCbQkwfXyB1AJeLszUy0jr3FvWIAndjYg==', CAST(0x0000A1A100324374 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (121, CAST(0x0000A1A10032438B AS DateTime), NULL, 1, NULL, 0, N'AJ2gV4nfLeg2m8iKCxURO+XySGRptFczV/S62tpjVUdS0TOfRUPL5gAmkbltmNt0wQ==', CAST(0x0000A1A10032438B AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (122, CAST(0x0000A1A100324394 AS DateTime), NULL, 1, NULL, 0, N'AC8SdXIc8p70jiq3ih5AhhOvNCQYL9pcBIZt8JgW9+pzy6wqX/q30jDGh3ahONhiHA==', CAST(0x0000A1A100324394 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (123, CAST(0x0000A1A10032439C AS DateTime), NULL, 1, NULL, 0, N'APwY98XPg2uVvaP6HPTKvgUnl+rWq6XnTq7GtTyuGWVuFFo9HJdIDNdtbJQIvGCy2Q==', CAST(0x0000A1A10032439C AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (124, CAST(0x0000A1A1003243A4 AS DateTime), NULL, 1, NULL, 0, N'AKY6L2TJnaOvdzpO+rBqX8MQ7S7RWiX4rsU6lOTfKr5KuLcMmdyDiWo2kecp+bMLKQ==', CAST(0x0000A1A1003243A4 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (125, CAST(0x0000A1A1003243CB AS DateTime), NULL, 1, NULL, 0, N'AMxcx94ijEzd8D+/5ms+xNBa2cP4WYR3NuhvMVtE34Ki9AKalOZDcCLR2+h6Kx7jxQ==', CAST(0x0000A1A1003243CB AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (126, CAST(0x0000A1A1003243D4 AS DateTime), NULL, 1, NULL, 0, N'AJZDVMoGyaDwvkpnAGef4iHoZudv8oErxXA/vkArGULHkUfNeRqYgNEmVEMjs0+U6g==', CAST(0x0000A1A1003243D4 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (127, CAST(0x0000A1A1003243EE AS DateTime), NULL, 1, NULL, 0, N'AOPFuLrQFi18XMVr8AmuFhlLd4acUIT7FIeJoRj7X2RGm+RP7VJmsySd+/awkjdJ8Q==', CAST(0x0000A1A1003243EE AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (128, CAST(0x0000A1A1003243F7 AS DateTime), NULL, 1, NULL, 0, N'AGHiq/sdi8DyT2i7JSJRUm34sue36gv0QthsWRPfXnnT4hZCU3NUEmS2RAL7/BPn7Q==', CAST(0x0000A1A1003243F7 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (129, CAST(0x0000A1A1003243FD AS DateTime), NULL, 1, NULL, 0, N'ANwPwws9Gcx20apCLaWUeksdQF4Rs8HnNRYiFktVcIBM/EmIvFoFAkYHWgP6CUX8gQ==', CAST(0x0000A1A1003243FD AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (130, CAST(0x0000A1A100324404 AS DateTime), NULL, 1, NULL, 0, N'AEHK15quipzBZq70WfGF38bqXTY6eRsxMedvjvItlv7JzpTi/I2BW965C47IsMT8JA==', CAST(0x0000A1A100324404 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (131, CAST(0x0000A1A100324410 AS DateTime), NULL, 1, NULL, 0, N'AOSyJ9AVZf8tnJB3pbnySJPr1tQrmQOEQt0AKjyTMXez7XOkbGuFkmAYdS/uzKOGZA==', CAST(0x0000A1A100324410 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (132, CAST(0x0000A1A10032443F AS DateTime), NULL, 1, NULL, 0, N'AE7lJ670quoJp88jUPG0m0TPHsA1d0ujBOKxr4u4IO89tmI22P7uEVsLqPC1fFgXeg==', CAST(0x0000A1A10032443F AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (133, CAST(0x0000A1A100324447 AS DateTime), NULL, 1, NULL, 0, N'AA3uo7r6Aj/H+GwRH99QkcyYccMswYwI6p+W8qVdXacDRYADGBGcopGs4m6MYAmSWA==', CAST(0x0000A1A100324447 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (134, CAST(0x0000A1A100324453 AS DateTime), NULL, 1, NULL, 0, N'ALxF7gcxNbRC1sNMuEhp44UjzZwiRZdfd0vZravPCdOaw3VRy3KoPwM3yVDB57vk1Q==', CAST(0x0000A1A100324453 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (135, CAST(0x0000A1A10032445A AS DateTime), NULL, 1, NULL, 0, N'AFMhZHFnRab9oNZ2yaijc8cDb4puWn/IKxW4FexpwQYB8OdOi6K0vXbug7Qg7KAL+w==', CAST(0x0000A1A10032445A AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (136, CAST(0x0000A1A100324460 AS DateTime), NULL, 1, NULL, 0, N'AGYDh0uoiVZrJ09r9CUQ2oyiu7SOc1DPR/52yfKrYBDndVyk8KdE5OKT2MkMnfSVtg==', CAST(0x0000A1A100324460 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (137, CAST(0x0000A1A10032446D AS DateTime), NULL, 1, NULL, 0, N'AD7hG/FJkk8tdT8IyzrkyY8mR2h/m63NVc9O9TsnmXuVElJgTaxlSmbge/4BZYe6rw==', CAST(0x0000A1A10032446D AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (138, CAST(0x0000A1A100324474 AS DateTime), NULL, 1, NULL, 0, N'AFh5B/GeQ5sV+fha6Km5kZqlN1BMgzqEw4JweoUtXfRiGwWsSnQzTO5dY4/YLe+O3w==', CAST(0x0000A1A100324474 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (139, CAST(0x0000A1A10032447E AS DateTime), NULL, 1, NULL, 0, N'AF/E7zkWm5o6bJoolrUgAJSIZWWhjd/rLr+FTE1SvNB5uJAYlxkYMMmLmZkq28h0aw==', CAST(0x0000A1A10032447E AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (140, CAST(0x0000A1A100324484 AS DateTime), NULL, 1, NULL, 0, N'AAOotueUBpebDQJaiICBdDLgSYq0xsgtszHeDRfSPmjUPgwTRVqpSziAj6bZYjkb2Q==', CAST(0x0000A1A100324484 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (141, CAST(0x0000A1A10032448B AS DateTime), NULL, 1, NULL, 0, N'ALYfqjlrbeymZVh9gKDRKxLqCck0fDeHEwqgvV8hoF1hYqZwx61QZtNb9kzy6HZQOw==', CAST(0x0000A1A10032448B AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (142, CAST(0x0000A1A100324491 AS DateTime), NULL, 1, NULL, 0, N'AFTWbCzRkpEksIG+XhrEnFZHLMXPymsbHzY0Gdo5EBudJH0CGgWqjjt4DqpVhluo+Q==', CAST(0x0000A1A100324491 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (143, CAST(0x0000A1A100324497 AS DateTime), NULL, 1, NULL, 0, N'AJOG9JZJmKJFITq5RXKkr+m5+uCya4uI76x8TVUz0av35Fp4/LM3HoIRL1tLGy//9w==', CAST(0x0000A1A100324497 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (144, CAST(0x0000A1A10032449D AS DateTime), NULL, 1, NULL, 0, N'APnwJAt43J1n+TmJ+vS4Lz1bYStykOqo8RrSdssA4jTXxRPc4+w5xbIAhpwOt9bjRw==', CAST(0x0000A1A10032449D AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (145, CAST(0x0000A1A1003244A3 AS DateTime), NULL, 1, NULL, 0, N'AL5PEIVoWeJKNEWN/rZxW2DUBCJXpwCiVAUT3/+fvp9uckY02d8MGAKcGSVdxe7QtQ==', CAST(0x0000A1A1003244A3 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (146, CAST(0x0000A1A1003244AA AS DateTime), NULL, 1, NULL, 0, N'AFwYGTgzk0UW4yc3Xxl4nB0AbiV7I3lzeCMYFZODw91IFrsIIOX8A1laojUbH6THgA==', CAST(0x0000A1A1003244AA AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (147, CAST(0x0000A1A1003244B1 AS DateTime), NULL, 1, NULL, 0, N'AHwQ0ekSEQBt3FNtyBdSJo8F+jldJ1cNepCceyIW0cc4dFyKwEUqcj5AUISljEUu+A==', CAST(0x0000A1A1003244B1 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (148, CAST(0x0000A1A1003244B7 AS DateTime), NULL, 1, NULL, 0, N'ANfMhr9dbyhdThPN25rt9EYWUi3tpMRX0w+ibbpxD84bmqTZMupG+2UfGyauemZwaw==', CAST(0x0000A1A1003244B7 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (149, CAST(0x0000A1A1003244C6 AS DateTime), NULL, 1, NULL, 0, N'AMkFAeds/rQr79qAoCbpnTswW6WMDxUbkxRfzRYYnPzwBGTMq9G1VibGomlTyhgT4Q==', CAST(0x0000A1A1003244C6 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (150, CAST(0x0000A1A1003244CF AS DateTime), NULL, 1, NULL, 0, N'ACfqkJszJAJxG5pjGtfYT3UhnC40r0dERtgyWTNkuPqVzE7wXCkZfwCwwDtXE3RPgA==', CAST(0x0000A1A1003244CF AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (151, CAST(0x0000A1A1003244DD AS DateTime), NULL, 1, NULL, 0, N'AEOoG44BLBDfjtLnTjrk028dtXTmsoQQXPlhuF+xN9+UyJzwWQWmrv702t2zw0JDPQ==', CAST(0x0000A1A1003244DD AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (152, CAST(0x0000A1A1003244ED AS DateTime), NULL, 1, NULL, 0, N'AHEreESQVYtnFfZOCxRHJOm7U1GQTEJO8vdKTzssYgtCELQpmb/rvFG7WXdfLHZDNg==', CAST(0x0000A1A1003244ED AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (153, CAST(0x0000A1A1003244FE AS DateTime), NULL, 1, NULL, 0, N'AGJpLlC1H45fJ0/X5cvmKMfbrexFz9LJdNamfsiIi5XDDZztYl5jHZDQSLjTNbWB6g==', CAST(0x0000A1A1003244FE AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (154, CAST(0x0000A1A100324506 AS DateTime), NULL, 1, NULL, 0, N'ANRIhZXJh0iZgY1snunSr86IYmTNsuGnQb11WVKdZ20sk8B4kQK6gNlTLP81MWx5GQ==', CAST(0x0000A1A100324506 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (155, CAST(0x0000A1A10032450D AS DateTime), NULL, 1, NULL, 0, N'ADyICDfOHpR9xQZ1RcyHGEU/jro1z54YxI5Mw4NLdeImCCkmRQGgd3YsTd/iLQ0mhQ==', CAST(0x0000A1A10032450D AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (156, CAST(0x0000A1A100324514 AS DateTime), NULL, 1, NULL, 0, N'AB5MI+9OjVwTtHMNxSi2fg6FkRsltsBuCzVQF+cL1jR+5HR4bm2xmpbAQeO7CHJBiw==', CAST(0x0000A1A100324514 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (157, CAST(0x0000A1A10032451B AS DateTime), NULL, 1, NULL, 0, N'AAVGgq6dzvDKrk4ogHa7bkNurdYQVceGBz8wbfyzPBnJoul6GuNwcq9QlC3A+FOXmg==', CAST(0x0000A1A10032451B AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (158, CAST(0x0000A1A100324522 AS DateTime), NULL, 1, NULL, 0, N'AChS/H74ak3F1B4f8GG8XLxLHTspBn7P5iVOFN9I9K4vnyrwu/rsbHw1yQgDID1l7g==', CAST(0x0000A1A100324522 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (159, CAST(0x0000A1A100324529 AS DateTime), NULL, 1, NULL, 0, N'AFmrWiMT0wCg66AKVmCz8go1/fmXJDn2xmhA4/ybra+mSd9CKh3Ee8c+8cAn4z22Ow==', CAST(0x0000A1A100324529 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (160, CAST(0x0000A1A10032452F AS DateTime), NULL, 1, NULL, 0, N'ALBxbYiYmYg/m31T7zJcG8mmURYlrs6URTLUM38/xsyr0R+rH2eJLmShs2z3g+tj+A==', CAST(0x0000A1A10032452F AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (161, CAST(0x0000A1A100324536 AS DateTime), NULL, 1, NULL, 0, N'ABTJr1UVuPP+IdHqx74iir1evwdAVtA3QXaN9PKyGwOnp0PiRe6p0phKVW13Wsr9FA==', CAST(0x0000A1A100324536 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (162, CAST(0x0000A1A10032453C AS DateTime), NULL, 1, NULL, 0, N'ALCJ6CDB/JOLVRfLoRmj+F7SoI9Tb9Ga1ZLjRj3zYsm1QLai5n+JF9qG2WT/D006vA==', CAST(0x0000A1A10032453C AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (163, CAST(0x0000A1A100324544 AS DateTime), NULL, 1, NULL, 0, N'ACpFANYT62gc9bBakH/8U/O2FrJz7gGqpwRFl0++G+QnrNcL8vgTGGC7jtUDHCiToQ==', CAST(0x0000A1A100324544 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (164, CAST(0x0000A1A10032454C AS DateTime), NULL, 1, NULL, 0, N'ALpxv3YnqpfGVBwy6lBG0oiPgWoQHY3MKDbmDtrjlx20AgSUAAntfAtKLHycBrZuKA==', CAST(0x0000A1A10032454C AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (165, CAST(0x0000A1A100324552 AS DateTime), NULL, 1, NULL, 0, N'ACBgYgaMzxj8s1q6UmEwZ2ZG0WIf3JudLbBF7Q6QCe9yH/VU58/9lP9FWLObt2CvRw==', CAST(0x0000A1A100324552 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (166, CAST(0x0000A1A100324559 AS DateTime), NULL, 1, NULL, 0, N'AJCV8GVnv4R078TrEV750Epa+CiwkwokvMaAKBUODqHpd1keThsuPMO8q2HSo5aMcw==', CAST(0x0000A1A100324559 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (167, CAST(0x0000A1A100324561 AS DateTime), NULL, 1, NULL, 0, N'ADLjiyh/SSb+Ew24Qu7W0aVXVZ80BLdK78W1z362/WZ82oO+IwPPPLcoT0dddrSx3A==', CAST(0x0000A1A100324561 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (168, CAST(0x0000A1A100324569 AS DateTime), NULL, 1, NULL, 0, N'ABkMgFo3fgow7o3Ll7ZklEoslsXILIO3z1D1dHnSGoTkuKpJBtgCPAvV32e26HoGWA==', CAST(0x0000A1A100324569 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (169, CAST(0x0000A1A100324571 AS DateTime), NULL, 1, NULL, 0, N'AAgEkUKZ6CjkZH7hQnqoft5cQ/jEZLVZwh0e7KCZ2KNXwVe8lOr0XUaxRNC0+AFmDg==', CAST(0x0000A1A100324571 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (170, CAST(0x0000A1A10032457F AS DateTime), NULL, 1, NULL, 0, N'ACkzuZY7vlKb4jjichlmkxO57EHpYGc+yXh5dXcd2pwe3xSLx8uCQ3uAqqe6js2mYw==', CAST(0x0000A1A10032457F AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (171, CAST(0x0000A1A10032458C AS DateTime), NULL, 1, NULL, 0, N'ALTN2wSNx7q1ZZcEZhjWcnK33nhpP+OE4ufHS096FNKn192QvIiBDVx2OSH6S7XfDQ==', CAST(0x0000A1A10032458C AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (172, CAST(0x0000A1A100324593 AS DateTime), NULL, 1, NULL, 0, N'AKkK1WXtNIUmT1u5gUqAQAYuJ8QB8PbcAVVXkdVhTlJCCutbsxBOKx37TOyIk4ra0g==', CAST(0x0000A1A100324593 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (173, CAST(0x0000A1A10032459B AS DateTime), NULL, 1, NULL, 0, N'AM3NyKgXAXCIE08E7rURY6fMKeM1CKA0oNIrVut0B5ZWfiPLuOsY5ep+Ch6oPVIr0A==', CAST(0x0000A1A10032459B AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (174, CAST(0x0000A1A1003245A3 AS DateTime), NULL, 1, NULL, 0, N'AGIJxZ8WgqdRjbyim/GnZXRGocIJ5o3LCp/qJKKEJyWzVYs+bSR5SHcGQZougdv6Og==', CAST(0x0000A1A1003245A3 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (175, CAST(0x0000A1A1003245AA AS DateTime), NULL, 1, NULL, 0, N'ANsG0MkEzAr8XSEiIjzAIXmIbs8mih7QUpdJDTKNipWEyXT1uRxQIKOxwvOAK9hB4Q==', CAST(0x0000A1A1003245AA AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (176, CAST(0x0000A1A1003245B0 AS DateTime), NULL, 1, NULL, 0, N'ACqqHwKXx/IPGNlxmj95oh5AM8a+Y8e/sCmefWi6cVM3mtPGO1p6JQSnodgqbhzxaA==', CAST(0x0000A1A1003245B0 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (177, CAST(0x0000A1A1003245B7 AS DateTime), NULL, 1, NULL, 0, N'AEbBdL8CUDtjTt7zZEAP1J/Zc+Ts15W8bbjhj3ALilKENwQXlluf1dNujocM/Qy0bA==', CAST(0x0000A1A1003245B7 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (178, CAST(0x0000A1A1003245BD AS DateTime), NULL, 1, NULL, 0, N'ABnzoar7D27aG2r26PRmBSW/AoiC69j8oUyHOrr0nKIxaaAMYQwnbUpuReyv6dHDsg==', CAST(0x0000A1A1003245BD AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (179, CAST(0x0000A1A1003245D4 AS DateTime), NULL, 1, NULL, 0, N'AIsg+J3njQjsZ/eBoqitq3gi+yv2PD3thGUGiHMSrXBzRN1yqPkj0X1VKtI6WnFe9Q==', CAST(0x0000A1A1003245D4 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (180, CAST(0x0000A1A1003245DF AS DateTime), NULL, 1, NULL, 0, N'APtQfu7Bkfe0Yi5tTz/GWuDXTwrZmCijgz7WDufewnj8/Iy4Bp6Tcpj20D0hcUWKRw==', CAST(0x0000A1A1003245DF AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (181, CAST(0x0000A1A1003245E5 AS DateTime), NULL, 1, NULL, 0, N'AIBst7K257uqHBbUHiRBAvkTYVW2YWGefO7vIaG7NjpzBMU8xHUTn4NYijrlyBod4w==', CAST(0x0000A1A1003245E5 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (182, CAST(0x0000A1A1003245F5 AS DateTime), NULL, 1, NULL, 0, N'AJ5IJXlBkesG7JVZgJ7bNvFY1OPKBQhFfz62zePZfPv74+T5KO2wZz3pNU3Xu6051A==', CAST(0x0000A1A1003245F5 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (183, CAST(0x0000A1A1003245FC AS DateTime), NULL, 1, NULL, 0, N'AAz+ZX3g3smdeU9YPyqDEnyxbB5jKhB8weIRwgDypxt1Pf10BRjCh1q33wIY9XhTpA==', CAST(0x0000A1A1003245FC AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (184, CAST(0x0000A1A100324619 AS DateTime), NULL, 1, NULL, 0, N'ANuSP8x6BDOBc8OMJ2irEwAOhoJxuaQJblM/cPARa0RMgND8uJk8/VRBgFeRqu7h5Q==', CAST(0x0000A1A100324619 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (185, CAST(0x0000A1A100324622 AS DateTime), NULL, 1, NULL, 0, N'AGd2gYi26PB18zkIkVI6DdNjg5ZRTbqgTr1GnMJFCHfwkV7aJy8HvjXmxzLfrDPxPA==', CAST(0x0000A1A100324622 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (186, CAST(0x0000A1A100324629 AS DateTime), NULL, 1, NULL, 0, N'AC/wZievKKEiecNJ1Z/TwBHsM09PmW1IjGnc39r4/OleuVY8rOEdAZni6+L4Bjy41g==', CAST(0x0000A1A100324629 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (187, CAST(0x0000A1A10032462F AS DateTime), NULL, 1, NULL, 0, N'ABieBGvkn59qhU4olSUAfPTKEOoF3TrTvJX6N2oEeXB0urzaxKCFJrwgHXEz7giNmQ==', CAST(0x0000A1A10032462F AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (188, CAST(0x0000A1A100324636 AS DateTime), NULL, 1, NULL, 0, N'AB/P4VXL3E+cQQGfBmZWj4sEMfs8gxPLUu/ni/5ZuGk0/CYrmRIitFmGDddYJrn9UQ==', CAST(0x0000A1A100324636 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (189, CAST(0x0000A1A10032463D AS DateTime), NULL, 1, NULL, 0, N'AHlKClgIgVR4TjydCW225L39GvhDHI3L7rLGDFXhTVkVWrCjL9d0wkK4KQxIbd4iSQ==', CAST(0x0000A1A10032463D AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (190, CAST(0x0000A1A100324643 AS DateTime), NULL, 1, NULL, 0, N'ANccML7QcVzdgK57uB5lVgR95vIirEMWfvBA1dnj6bGphGQ3/MUIbwsq8uR5gBwcnA==', CAST(0x0000A1A100324643 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (191, CAST(0x0000A1A100324649 AS DateTime), NULL, 1, NULL, 0, N'AO9Lq21QBH5jkf7va5l1OMtFCy83bprKmOqA+tuTCJkT7KPg3kylG5Fwuz2Sz52rAg==', CAST(0x0000A1A100324649 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (192, CAST(0x0000A1A100324653 AS DateTime), NULL, 1, NULL, 0, N'AHHaacquMOyBrzrVKhvn9BdwMO1wcmUoGcYAbpvuf8YRyH0sW/Fd/Z7mRw8f9IrdpQ==', CAST(0x0000A1A100324653 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (193, CAST(0x0000A1A100324659 AS DateTime), NULL, 1, NULL, 0, N'APNNndGOIRwmRSgV6Wvhjf5M7gPbjVHc0Lbo0VkVz4fQQuWkSt4312j2BqTToPm/nQ==', CAST(0x0000A1A100324659 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (194, CAST(0x0000A1A100324660 AS DateTime), NULL, 1, NULL, 0, N'AJgzcd0kiJgma/5/De0jccPsGj8D5KW2WXn8+jj55IjbHV4JT9P4CsdGCLwXoNC2IQ==', CAST(0x0000A1A100324660 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (195, CAST(0x0000A1A100324666 AS DateTime), NULL, 1, NULL, 0, N'AG2k8lgqhX0vahutxUZEtZyurtWQvSR/SobL3wEZCCY427H+giJxckyjUGdHe3Ne/g==', CAST(0x0000A1A100324666 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (196, CAST(0x0000A1A10032466D AS DateTime), NULL, 1, NULL, 0, N'AKCz309apWq6PaxIHBsCjXb0/Bc2omiv4pj1YRKRPbtUrI7RBDZuo97Z83E5AgqH1Q==', CAST(0x0000A1A10032466D AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (197, CAST(0x0000A1A100324673 AS DateTime), NULL, 1, NULL, 0, N'AOqr8213T5DgWFlORIXoZXUSkwl+NCDDdxPCxuOaplWgQPxXsZEm4YYZ/HT2C5RKxg==', CAST(0x0000A1A100324673 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (198, CAST(0x0000A1A100324679 AS DateTime), NULL, 1, NULL, 0, N'AFupxW+FLKnmJM5NqE64p6nHq6GdJTPNRHhd97DkMsZvXL0v0Hqj8/qSlbIkpcKqNg==', CAST(0x0000A1A100324679 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (199, CAST(0x0000A1A100324680 AS DateTime), NULL, 1, NULL, 0, N'AO2ktTSwwitoO3afHq2Mid3kH5l2Zziwl3PGW4jEoUgQefZHdRJXpCI7mquFsc2Sjw==', CAST(0x0000A1A100324680 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (200, CAST(0x0000A1A100324686 AS DateTime), NULL, 1, NULL, 0, N'AP+WTn9HcNfdClqkQRYisknx402P8N9DMUPDBKjCzQFWg5DJflFLK5tSdp7rOy3foA==', CAST(0x0000A1A100324686 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (201, CAST(0x0000A1A10032468D AS DateTime), NULL, 1, NULL, 0, N'ABkg7BVDZ9Spyg6d+Dmw8cTxB65aVzeg4Ibyot81zmP0U53E5/F3mJJSq2pd91aQVA==', CAST(0x0000A1A10032468D AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (202, CAST(0x0000A1A100324694 AS DateTime), NULL, 1, NULL, 0, N'AGvCzfci0f1fI9uDyn0y8u9RKhX073w+P0SxXBRB7pzlF3HHbdOcYoT8CC86dsV+hQ==', CAST(0x0000A1A100324694 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (203, CAST(0x0000A1A10032469A AS DateTime), NULL, 1, NULL, 0, N'ANT+o3FDi/DoGknzJlGSvdxzMl1pY13j1JUxvUnp1mHGr7VpnB5zcjrRJ4lpzcPhGw==', CAST(0x0000A1A10032469A AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (204, CAST(0x0000A1A1003246A0 AS DateTime), NULL, 1, NULL, 0, N'APMJE0+rBwVHHEDN/U4AgZtLFOM0/FBX8dcEpAWOE0wvln7ezqsACZ0+chUpY04ZZw==', CAST(0x0000A1A1003246A0 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (205, CAST(0x0000A1A1003246A7 AS DateTime), NULL, 1, NULL, 0, N'AKDVowyFZ0+NAUllnTj/CKzm7O4vw9Ar+G9k/d1u7B7XQGUtCwyrG6+AwCGuYl5YUQ==', CAST(0x0000A1A1003246A7 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (206, CAST(0x0000A1A1003246AE AS DateTime), NULL, 1, NULL, 0, N'AKFrJpub7tgksXNUkgyqmhruij92iQfYH2svOWszVhmfCMHq1nrn6fGET9Eh+Ku4rA==', CAST(0x0000A1A1003246AE AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (207, CAST(0x0000A1A1003246B5 AS DateTime), NULL, 1, NULL, 0, N'AIcVIgnWIMoKyTRQvJ7+pZNEM6NFYySui6gB2FfmAuhSysLnUpTIni4Vo7gaxUtgZQ==', CAST(0x0000A1A1003246B5 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (208, CAST(0x0000A1A1003246BC AS DateTime), NULL, 1, NULL, 0, N'AFOOh3/OUgDdZ9CgH49lCn/8JRoWHidZR7F1pLCSuYQrdLrbuDG/dtImFdOOxePYvw==', CAST(0x0000A1A1003246BC AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (209, CAST(0x0000A1A1003246C2 AS DateTime), NULL, 1, NULL, 0, N'AB/gQ90MAoLWwztHwGTk8QbrHA9dRkz/+9cBGX5PbSwblDZ9smSp2GXfU3DYjxQ1Mw==', CAST(0x0000A1A1003246C2 AS DateTime), N'', NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (210, CAST(0x0000A1A1003246C9 AS DateTime), NULL, 1, NULL, 0, N'AGf81kkLSh5Z6FxnZmV5+wojXEXxDsEPvU5+ReG0LIj0hJhgtyhwcnTvOLrJQHuFcQ==', CAST(0x0000A1A1003246C9 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (211, CAST(0x0000A1A1003246E6 AS DateTime), NULL, 1, NULL, 0, N'AF5fE+v2rK/nqN1Zt/c2dfsR+LE31Vpt8CX7kIzLTGM8tx0HI6rWBo/NRKGcwd2iSA==', CAST(0x0000A1A1003246E6 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (212, CAST(0x0000A1A1003246F4 AS DateTime), NULL, 1, NULL, 0, N'ANS2INX8gD7/IJgtnXtpMQq/D93ubAs8eEE126mR7XBMlny/5nPpV1s1Kf9T/sVzEw==', CAST(0x0000A1A1003246F4 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (213, CAST(0x0000A1A1003246FC AS DateTime), NULL, 1, NULL, 0, N'AKtdCnkuVVvCQlKEiwuJR1P0Ib2imd3BOYEYYCuRWsWcQkLw6a1MQUWPPOsiuUhKkQ==', CAST(0x0000A1A1003246FC AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (214, CAST(0x0000A1A100324703 AS DateTime), NULL, 1, NULL, 0, N'AHV4J7th8lPIDbRbZ7GyjP8r7T0UCyQVWLzypWertUWcSPdlPB9YHSH70DCTCSEU6w==', CAST(0x0000A1A100324703 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (215, CAST(0x0000A1A10032470A AS DateTime), NULL, 1, NULL, 0, N'ANof9qoofHk9EAphqA9cOt/bwIvC7pLILcMeQ1NGhOosHsSYRq7sXDERqBIwX2u3jg==', CAST(0x0000A1A10032470A AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (216, CAST(0x0000A1A100324711 AS DateTime), NULL, 1, NULL, 0, N'ABk7F0RLNKOsmqv4rPk+WbKS3rFvDmzd0+k8mw+MjmSWsWp3Ny8CX0hoT9oAKTcRGw==', CAST(0x0000A1A100324711 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (217, CAST(0x0000A1A100324718 AS DateTime), NULL, 1, NULL, 0, N'AAMIAmBMtnUlA/JIkfcuB71AoLd5i0SgTr26hDeUbSTGyFr3/PYbIuhVg/MuP8/cnA==', CAST(0x0000A1A100324718 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (218, CAST(0x0000A1A10032471E AS DateTime), NULL, 1, NULL, 0, N'ACFe1jWvl7jdqrD/oh66IjPniteOWEMn8lvHAIZNJNpWURp4gjZSCL9mt5gRydTJ9g==', CAST(0x0000A1A10032471E AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (219, CAST(0x0000A1A100324725 AS DateTime), NULL, 1, NULL, 0, N'AEN+7QuAxaM41Kc6Sa0lUcWZqziqwTmYqfCeR+0r9YxaqZKdfNLj2XZC4Wj/hFi8lA==', CAST(0x0000A1A100324725 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (220, CAST(0x0000A1A10032472C AS DateTime), NULL, 1, NULL, 0, N'AI5MGH74tRqF6xK1IuguC+Q7lssLTUa7SYA7w/z69Wh/PGwp06nuHmH2K8oZIgepGA==', CAST(0x0000A1A10032472C AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (221, CAST(0x0000A1A100324733 AS DateTime), NULL, 1, NULL, 0, N'AD1HulFAVSaQZ0TQSuOjJXVnTwla/Ifr4c2XRs6keuYxnhxLr/51Kp+4shlFUI0gAA==', CAST(0x0000A1A100324733 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (222, CAST(0x0000A1A100324739 AS DateTime), NULL, 1, NULL, 0, N'AMy6GGXJIm2/SEbHPtdHkriYE1+p2/FB9NplcY+0dlGXAp+08o+E51XyBAVx50ByAA==', CAST(0x0000A1A100324739 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (223, CAST(0x0000A1A100324740 AS DateTime), NULL, 1, NULL, 0, N'AJUZJi39VB1KlFRC5p/tFwE7mkjUQajWGMZWwIsKVkyGIuLhz4jUnwg+ukg5L+93mg==', CAST(0x0000A1A100324740 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (224, CAST(0x0000A1A100324747 AS DateTime), NULL, 1, NULL, 0, N'AOZvWhS3QXiWt5hEYwnRI7MxSxta4nRmtBhQ4AmYK9uIB5eCzPj8jqky96H4Txd78w==', CAST(0x0000A1A100324747 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (225, CAST(0x0000A1A10032474E AS DateTime), NULL, 1, NULL, 0, N'ABCQelkfGiTQYFVmg60vwKDXXQVULEOCVcOtwi836y1AbFQ5qizXYLB3oN3N4TxRYg==', CAST(0x0000A1A10032474E AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (226, CAST(0x0000A1A100324755 AS DateTime), NULL, 1, NULL, 0, N'AIfLoZfaBEOO0TpnnXsiGNijma/2BNDOdrskd1YHhSNjbpC9LOlUb14sG2CbSI24Vw==', CAST(0x0000A1A100324755 AS DateTime), N'', NULL, NULL)
/****** Object:  Table [dbo].[UserProfile]    Script Date: 05/06/2013 17:52:04 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserProfile] ON
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (10, N'abalbin', N'Arturo', N'Balbin Rojas', N'r2d2klapa@gmail.com', 10, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (119, N'arocha', N'Ana', N'Rocha Malqui', N'r2d2klapa@gmail.com', 10, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (120, N'ddelcastillo', N'Patricia', N'Del Castillo Alcedo', N'r2d2klapa@gmail.com', 10, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (121, N'ryanez', N'Rennier', N'Yañez Farfan', N'r2d2klapa@gmail.com', 10, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (122, N'jolivera', N'Juan', N'Olivera Guerra', N'r2d2klapa@gmail.com', 10, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (123, N'ezegarra', N'Encarnita', N'Zegarra Ruíz', N'r2d2klapa@gmail.com', 10, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (124, N'jguajardo', N'Juan Carlos', N'Guajardo Mendez', N'r2d2klapa@gmail.com', 10, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (125, N'ssalazar', N'Sandro', N'Salazar Sanez', N'r2d2klapa@gmail.com', 5, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (126, N'gcubas', N'Guillermo', N'Cubas Giudice', N'r2d2klapa@gmail.com', 5, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (127, N'dmostacero', N'Diana', N'Mostacero Rodríguez', N'r2d2klapa@gmail.com', 5, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (128, N'laugusto', N'Lis Faride', N'Augusto Vega', N'r2d2klapa@gmail.com', 5, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (129, N'zsanchez', N'Zoila', N'Sánchez Collantes', N'r2d2klapa@gmail.com', 5, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (130, N'mtocto', N'Maria Isabel', N'Tocto Geraldo', N'r2d2klapa@gmail.com', 5, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (131, N'jfreyre', N'José', N'Freyre Morales', N'r2d2klapa@gmail.com', 5, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (132, N'dzapata', N'Delia', N'Zapata Coral', N'r2d2klapa@gmail.com', 5, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (133, N'mpisconte', N'Maribel', N'Pisconte Guerreros', N'r2d2klapa@gmail.com', 5, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (134, N'icier', N'Cristina', N'Cier Guzmán', N'r2d2klapa@gmail.com', 5, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (135, N'jparedes', N'Jandira', N'Paredes Dueñas', N'r2d2klapa@gmail.com', 5, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (136, N'jgonzales', N'Jesús', N'Gonzáles Peralta', N'r2d2klapa@gmail.com', 5, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (137, N'rsosa', N'Roxana', N'Sosa Angulo', N'r2d2klapa@gmail.com', 5, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (138, N'ygarrido', N'Yasmine', N'Garrido Vargas', N'r2d2klapa@gmail.com', 5, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (139, N'csanchezc', N'Cintia Kateryn', N'Sanchez Campos', N'r2d2klapa@gmail.com', 5, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (140, N'hross', N'Henry', N'Ross Accame', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (141, N'ctiburcio', N'Carmen Luz', N'Tiburcio Alguiar', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (142, N'tmeyer', N'Tadeo', N'Eduardo Meyer', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (143, N'knoriega', N'Karín', N'Noriega Najar', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (144, N'dgutierrez', N'Davis', N'Gutiérrez Orgeda', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (145, N'mchacon', N'Marisol', N'Chacón Montañez', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (146, N'ecribillero', N'Alejandra', N'Cribillero Muchotrigo', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (147, N'jsuarez', N'Jonathan', N'Suarez Salas', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (148, N'ccastro', N'Calixto', N'Castro Sipan', N'r2d2klapa@gmail.com', 6, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (149, N'vfalla', N'Eliza Virginia', N'Falla Huambo', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (150, N'more', N'Maria Magdalena', N'Oré Gonzales', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (151, N'pvernal', N'Patricia', N'Vernal Sirvas', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (152, N'aalcazar', N'Ana Patricia', N'Alcazar Seijas', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (153, N'aalvarado', N'Ana Angella', N'Alvarado Guzman', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (154, N'sreyes', N'Margareth Sabella', N'Reyes Becerra', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (155, N'vvidal', N'Verónica Carmen', N'Vidal Valladares', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (156, N'kCaruajulca', N'Karol', N'Caruajulca', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (157, N'dArmas', N'Dina', N'Armas', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (158, N'rSkrinjaric', N'Rosa', N'Skrinjaric', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (159, N'mDelgado', N'María', N'Delgado', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (160, N'eAscencio', N'Eva', N'Ascencio', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (161, N'eramirez', N'Erika Yanina', N'Ramirez Zevallos', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (162, N'halvarez', N'Hector', N'Alvarez Garcia', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (163, N'wromero', N'Williams', N'Romero  Cáceres', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (164, N'vvasquez', N'Víctor', N'Vásquez Claudet', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (165, N'fmurillo', N'Fredy', N'Murillo Begazo', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (166, N'arios', N'Antonio', N'Ríos Noriega', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (167, N'rcabrera', N'Rosario', N'Cabrera Sirlupu', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (168, N'egutierrez', N'Elke', N'Gutiérrez Merino', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (169, N'yvilela', N'Yanina Sarita', N'Vilela Céspedes', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (170, N'umartinez', N'Ursula', N'Martínez Guevara', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (171, N'ggonzales', N'Gina', N'Gonzáles Nuñez', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (172, N'icamargo', N'Inés', N'Camargo Salazar', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (173, N'mchi', N'María', N'Chi Raa', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (174, N'gramirez', N'Gisella', N'Ramirez Barrionuevo', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (175, N'mnavarro', N'Maritza', N'Navarro Price', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (176, N'irodriguez', N'Ivette', N'Rodriguez Mendoza', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (177, N'lsaldana', N'Laura', N'Saldaña Leyton', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (178, N'lRamírez', N'Lizeth ', N'Ramírez Herrea', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (179, N'lPerez', N'Lili', N'Perez', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (180, N'cTorres', N'Carla', N'Torres Rondón', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (181, N'jEspíritu', N'Juliet', N'Espíritu Muñoz', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (182, N'nsabogal', N'Neri', N'Sabogal Martinez', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (183, N'gsanchez', N'Gilda Karina', N'Sanchez Barrera ', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (184, N'ghinostroza', N'Gustavo Alonso', N'Hinostroza Aguilar', N'r2d2klapa@gmail.com', 9, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (185, N'jtello', N'José Luis', N'Tello Melendez', N'r2d2klapa@gmail.com', 7, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (186, N'smorote', N'Rosa', N'Gonzales García', N'r2d2klapa@gmail.com', 7, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (187, N'msime', N'Melisa', N'Sime Burga', N'r2d2klapa@gmail.com', 7, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (188, N'atejada', N'Andrea', N'Tejada', N'r2d2klapa@gmail.com', 7, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (189, N'asuarez', N'Aldo', N'Suarez Mosaurieta', N'r2d2klapa@gmail.com', 7, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (190, N'kalmiron', N'Keti', N'Almirón Domínguez', N'r2d2klapa@gmail.com', 7, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (191, N'dquintos', N'Doris', N'Quintos Silva', N'r2d2klapa@gmail.com', 7, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (192, N'fsanchez', N'Fredi', N'Sanchez Trujillo', N'r2d2klapa@gmail.com', 7, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (193, N'ypuchuri', N'Yovanna', N'Puchuri Martínez', N'r2d2klapa@gmail.com', 7, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (194, N'cdioses', N'Cynthia ', N'Dioses Herrera', N'r2d2klapa@gmail.com', 7, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (195, N'etoro', N'Giannina', N'Toro Saavedra', N'r2d2klapa@gmail.com', 7, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (196, N'ecabezudo', N'Eduardo', N'Cabezudo Tovar', N'r2d2klapa@gmail.com', 7, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (197, N'mguerrerro', N'Manuel', N'Guerrero Guardia', N'r2d2klapa@gmail.com', 7, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (198, N'dvasquez', N'Daniel', N'Vasquez Alvarado', N'r2d2klapa@gmail.com', 7, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (199, N'mleon', N'Mariana', N'Leon Medina', N'r2d2klapa@gmail.com', 8, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (200, N'aavila', N'América ', N'Ávila Román', N'r2d2klapa@gmail.com', 8, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (201, N'mesquen', N'Manuela', N'Esquen Vasquez', N'r2d2klapa@gmail.com', 8, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (202, N'cmanzaneda', N'César', N'Manzaneda Luna', N'r2d2klapa@gmail.com', 8, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (203, N'regusquiza', N'Rocío', N'Egusquiza Peña', N'r2d2klapa@gmail.com', 8, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (204, N'kchavez', N'Karina', N'Chavez Guevara', N'r2d2klapa@gmail.com', 8, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (205, N'vrodriguez', N'Vanessa', N'Rodriguez Castillo', N'r2d2klapa@gmail.com', 8, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (206, N'mcherre', N'María del Carmen', N'Cherre Espejo', N'r2d2klapa@gmail.com', 8, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (207, N'csurca', N'Daniela', N'Surca Vilchez', N'r2d2klapa@gmail.com', 8, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (208, N'msuccar', N'Mabel', N'Succar Medina', N'r2d2klapa@gmail.com', 8, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (209, N'avallejos', N'Ana', N'Vallejos Mendoza', N'r2d2klapa@gmail.com', 8, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (210, N'vinfante', N'Vilma', N'Infante Gomez', N'r2d2klapa@gmail.com', 8, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (211, N'fvera', N'Francy', N'Vera Fort', N'r2d2klapa@gmail.com', 8, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (212, N'plafosse', N'Philippe', N'Lafosse Masías', N'r2d2klapa@gmail.com', 8, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (213, N'jreyes', N'Julio César', N'Reyer Gonzales', N'r2d2klapa@gmail.com', 8, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (214, N'lreto', N'Luz', N'Belen Reto', N'r2d2klapa@gmail.com', 6, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (215, N'cbenavente', N'Claudia', N'Benavente Riega', N'r2d2klapa@gmail.com', 6, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (216, N'lapolo', N'Lila', N'Apolo Arrieta', N'r2d2klapa@gmail.com', 6, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (217, N'gcalderon', N'Gisela', N'Calderón Alcalde', N'r2d2klapa@gmail.com', 6, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (218, N'bcalderon', N'Brenda', N'Calderón Soria', N'r2d2klapa@gmail.com', 6, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (219, N'kcuellar', N'Kony', N'Cuellar De La Cruz', N'r2d2klapa@gmail.com', 6, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (220, N'lonofre', N'Lucy', N'Onofre Escurra', N'r2d2klapa@gmail.com', 6, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (221, N'jpriano', N'José', N'Priano Gervasi', N'r2d2klapa@gmail.com', 6, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (222, N'mcampos', N'Maria Luzmila', N'Campos Urbina', N'r2d2klapa@gmail.com', 6, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (223, N'sfranco', N'Stefany', N'Franco Reyna', N'r2d2klapa@gmail.com', 6, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (224, N'vestacio', N'Verónica', N'Estacio Naveda', N'r2d2klapa@gmail.com', 6, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (225, N'gcuadra', N'Gloria', N'Cuadra Bianchi', N'r2d2klapa@gmail.com', 6, NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Mail], [IdLinea], [UrlImagen]) VALUES (226, N'mrubio', N'Marisol', N'Rubio Estrada', N'r2d2klapa@gmail.com', 6, NULL)
SET IDENTITY_INSERT [dbo].[UserProfile] OFF
/****** Object:  Table [dbo].[ProductoLinea]    Script Date: 05/06/2013 17:52:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductoLinea]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductoLinea](
	[IdProducto] [int] NOT NULL,
	[IdLinea] [int] NOT NULL,
 CONSTRAINT [PK_ProductoLinea] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC,
	[IdLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (1, 5)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (1, 6)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (1, 10)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (2, 5)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (2, 6)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (2, 10)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (3, 5)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (3, 9)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (3, 10)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (4, 5)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (4, 9)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (4, 10)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (5, 5)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (5, 10)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (6, 5)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (6, 10)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (7, 5)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (7, 10)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (10, 6)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (10, 9)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (11, 6)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (11, 9)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (12, 6)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (13, 6)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (14, 6)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (15, 6)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (16, 7)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (16, 10)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (17, 7)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (17, 10)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (18, 7)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (18, 10)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (19, 7)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (19, 10)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (20, 7)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (20, 10)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (21, 7)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (21, 9)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (21, 10)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (22, 8)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (22, 9)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (22, 10)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (23, 8)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (23, 10)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (24, 8)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (24, 10)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (25, 8)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (25, 9)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (25, 10)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (26, 8)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (26, 10)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (27, 8)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (27, 10)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (29, 9)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (32, 9)
INSERT [dbo].[ProductoLinea] ([IdProducto], [IdLinea]) VALUES (57, 6)
/****** Object:  Table [dbo].[Examen]    Script Date: 05/06/2013 17:52:02 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Examen] ON
INSERT [dbo].[Examen] ([Id], [IdProducto], [Titulo], [FechaCreacion], [FechaEjecucion], [TiempoMaximo], [IdEstado], [PuntajeMaximo], [TiempoTranscurrido], [IdTipo]) VALUES (1047, NULL, N'Asesoría en Terreno Base', CAST(0x0000A1B20042DFB2 AS DateTime), CAST(0x0000A1B20042DFB2 AS DateTime), CAST(0x070034E230040000 AS Time), 1, 20, NULL, 2)
INSERT [dbo].[Examen] ([Id], [IdProducto], [Titulo], [FechaCreacion], [FechaEjecucion], [TiempoMaximo], [IdEstado], [PuntajeMaximo], [TiempoTranscurrido], [IdTipo]) VALUES (1058, 16, N'Tusiclox', CAST(0x0000A1B600BEB55A AS DateTime), CAST(0x0000A1B600000000 AS DateTime), CAST(0x070034E230040000 AS Time), 3, 20, NULL, 1)
INSERT [dbo].[Examen] ([Id], [IdProducto], [Titulo], [FechaCreacion], [FechaEjecucion], [TiempoMaximo], [IdEstado], [PuntajeMaximo], [TiempoTranscurrido], [IdTipo]) VALUES (1059, NULL, N'Asesoría en Terreno Prueba', CAST(0x0000A1B600F34D44 AS DateTime), CAST(0x0000A1B600F34D41 AS DateTime), CAST(0x070034E230040000 AS Time), 3, 20, NULL, 2)
INSERT [dbo].[Examen] ([Id], [IdProducto], [Titulo], [FechaCreacion], [FechaEjecucion], [TiempoMaximo], [IdEstado], [PuntajeMaximo], [TiempoTranscurrido], [IdTipo]) VALUES (1060, 1, N'Previne D Geltabs - Previbe D Fort ', CAST(0x0000A1B60115BF55 AS DateTime), CAST(0x0000A1B600000000 AS DateTime), CAST(0x070034E230040000 AS Time), 3, 20, NULL, 1)
SET IDENTITY_INSERT [dbo].[Examen] OFF
/****** Object:  Table [dbo].[DocumentoLinea]    Script Date: 05/06/2013 17:52:01 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[DocumentoLinea] ([IdDocumento], [IdLinea]) VALUES (1, 5)
INSERT [dbo].[DocumentoLinea] ([IdDocumento], [IdLinea]) VALUES (1, 7)
INSERT [dbo].[DocumentoLinea] ([IdDocumento], [IdLinea]) VALUES (1, 8)
INSERT [dbo].[DocumentoLinea] ([IdDocumento], [IdLinea]) VALUES (2, 6)
INSERT [dbo].[DocumentoLinea] ([IdDocumento], [IdLinea]) VALUES (2, 8)
INSERT [dbo].[DocumentoLinea] ([IdDocumento], [IdLinea]) VALUES (3, 6)
INSERT [dbo].[DocumentoLinea] ([IdDocumento], [IdLinea]) VALUES (4, 5)
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 05/06/2013 17:52:05 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (10, 1)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (119, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (120, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (121, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (122, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (123, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (124, 4)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (125, 3)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (126, 5)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (127, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (128, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (129, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (130, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (131, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (132, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (133, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (134, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (135, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (136, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (137, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (138, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (139, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (140, 3)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (141, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (142, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (143, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (144, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (145, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (146, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (147, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (148, 3)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (149, 6)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (150, 6)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (151, 6)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (152, 6)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (153, 6)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (154, 6)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (155, 6)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (156, 6)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (157, 6)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (158, 6)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (159, 6)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (160, 6)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (161, 6)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (162, 7)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (163, 8)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (164, 3)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (165, 3)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (166, 9)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (167, 9)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (168, 10)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (169, 10)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (170, 10)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (171, 10)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (172, 10)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (173, 10)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (174, 11)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (175, 11)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (176, 10)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (177, 10)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (178, 10)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (179, 10)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (180, 10)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (181, 10)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (182, 10)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (183, 10)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (184, 10)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (185, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (186, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (187, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (188, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (189, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (190, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (191, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (192, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (193, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (194, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (195, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (196, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (197, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (198, 12)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (199, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (200, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (201, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (202, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (203, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (204, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (205, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (206, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (207, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (208, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (209, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (210, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (211, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (212, 12)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (213, 3)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (214, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (215, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (216, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (217, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (218, 2)
GO
print 'Processed 100 total records'
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (219, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (220, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (221, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (222, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (223, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (224, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (225, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (226, 12)
/****** Object:  Table [dbo].[ExamenUsuario]    Script Date: 05/06/2013 17:52:02 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[ExamenUsuario] ON
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1106, 185, 1058, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1107, 186, 1058, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1108, 187, 1058, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1109, 188, 1058, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0x07005A6202000000 AS Time), CAST(0x0000A1B600BF1109 AS DateTime), CAST(0x0000A1B600BF0BB8 AS DateTime), 2, 1133)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1110, 189, 1058, NULL, NULL, CAST(20.00 AS Decimal(18, 2)), CAST(0x0700879303000000 AS Time), CAST(0x0000A1B600BEFA42 AS DateTime), CAST(0x0000A1B600BEF2CD AS DateTime), 2, 1133)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1111, 190, 1058, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1112, 191, 1058, NULL, NULL, CAST(20.00 AS Decimal(18, 2)), CAST(0x0780F0FA02000000 AS Time), CAST(0x0000A1B600BF3DB9 AS DateTime), CAST(0x0000A1B600BF3812 AS DateTime), 2, 1133)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1113, 192, 1058, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1114, 193, 1058, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1115, 194, 1058, NULL, NULL, CAST(10.00 AS Decimal(18, 2)), CAST(0x0780F0FA02000000 AS Time), CAST(0x0000A1B600BF2A74 AS DateTime), CAST(0x0000A1B600BF2457 AS DateTime), 2, 1133)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1116, 195, 1058, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1117, 196, 1058, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1118, 197, 1058, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1119, 198, 1058, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1120, NULL, 1059, 10, 214, CAST(22.00 AS Decimal(18, 2)), CAST(0x0700EF1C0D000000 AS Time), CAST(0x0000A1B600F37502 AS DateTime), CAST(0x0000A1B600F35A34 AS DateTime), 2, 1143)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1121, NULL, 1059, 10, 214, CAST(20.00 AS Decimal(18, 2)), CAST(0x078058840C000000 AS Time), CAST(0x0000A1B600F3BD42 AS DateTime), CAST(0x0000A1B600F3A4E7 AS DateTime), 2, 1143)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1122, 10, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1123, 119, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1124, 120, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1125, 121, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1126, 122, 1060, NULL, NULL, CAST(5.00 AS Decimal(18, 2)), CAST(0x0780E7C63F000000 AS Time), CAST(0x0000A1B601180DCB AS DateTime), CAST(0x0000A1B601178FF0 AS DateTime), 2, 1145)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1127, 123, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1128, 124, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1129, 125, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1130, 126, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1131, 127, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1132, 128, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1133, 129, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1134, 130, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1135, 131, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1136, 132, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1137, 133, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1138, 134, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1139, 135, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1140, 136, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1141, 137, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1142, 138, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1143, 139, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1144, 148, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1145, 214, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1146, 215, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1147, 216, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1148, 217, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1149, 218, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1150, 219, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1151, 220, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1152, 221, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1153, 222, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1154, 223, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1155, 224, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1156, 225, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ExamenUsuario] ([Id], [IdUsuario], [IdExamen], [IdEjecutivo], [IdAster], [Puntaje], [Tiempo], [FechaTermino], [FechaInicio], [Estado], [IdPreguntaActual]) VALUES (1157, 226, 1060, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[ExamenUsuario] OFF
/****** Object:  Table [dbo].[PuntajeAsesoria]    Script Date: 05/06/2013 17:52:03 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[PuntajeAsesoria] ON
INSERT [dbo].[PuntajeAsesoria] ([Id], [D], [A], [B], [S], [IdExamen]) VALUES (27, CAST(1.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), 1042)
INSERT [dbo].[PuntajeAsesoria] ([Id], [D], [A], [B], [S], [IdExamen]) VALUES (34, CAST(12.00 AS Decimal(18, 2)), CAST(303.00 AS Decimal(18, 2)), CAST(323.00 AS Decimal(18, 2)), CAST(444.00 AS Decimal(18, 2)), 1046)
INSERT [dbo].[PuntajeAsesoria] ([Id], [D], [A], [B], [S], [IdExamen]) VALUES (35, CAST(60.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), CAST(85.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 19)
INSERT [dbo].[PuntajeAsesoria] ([Id], [D], [A], [B], [S], [IdExamen]) VALUES (36, CAST(60.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), CAST(85.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1047)
INSERT [dbo].[PuntajeAsesoria] ([Id], [D], [A], [B], [S], [IdExamen]) VALUES (37, CAST(12.00 AS Decimal(18, 2)), CAST(23.00 AS Decimal(18, 2)), CAST(34.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), 1057)
INSERT [dbo].[PuntajeAsesoria] ([Id], [D], [A], [B], [S], [IdExamen]) VALUES (38, CAST(1.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(4.00 AS Decimal(18, 2)), 1059)
SET IDENTITY_INSERT [dbo].[PuntajeAsesoria] OFF
/****** Object:  Table [dbo].[Pregunta]    Script Date: 05/06/2013 17:52:02 ******/
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
	[Habilitada] [bit] NULL CONSTRAINT [DF_Pregunta_Habilitada]  DEFAULT ((1)),
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
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1062, N'Establece relaciones asertivas', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 1, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1063, N'Segmenta y selecciona sus clientes', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 2, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1064, N'Realiza servicio y seguimiento a compromisos', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 3, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1065, N'Conoce perfil px de Unimed y de la competencia', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 4, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1066, N'Conoce sus productos y  sus aspectos médicos', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 5, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1067, N'Conoce los soportes y herramientas promocionales', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 6, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1068, N'Enfoca posicionamiento', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 7, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1069, N'Enfoca  slogan y  marca', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 8, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1070, N'Maneja promesas básicas según necesidad', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 9, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1071, N'Conoce territorio y su potencial de negocio', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 10, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1072, N'Conoce competidores y sus tácticas y estrategias', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 11, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1073, N'Proporciona educación a los dependientes en su visita', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 12, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1074, N'Indaga stock y rotación de su línea', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 13, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1075, N'Planea objetivo de visita', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 14, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1076, N'Hace Apertura de acuerdo al perfil medico
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 15, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1077, N'Escucha y pregunta con intención (Identificacion de Necesidades)
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 16, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1078, N'Resuelve objeciones y verifica aceptacion
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 17, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1079, N'Adapta el mensaje
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 18, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1080, N'Optimiza los recursos con sus clientes
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 19, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1081, N'Directo en el cierre
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 20, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1082, N'Compromiso
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 21, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1083, N'Implementa continuidad en la visita
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 22, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1084, N'Potencia la relación
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 23, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1085, N'Tiene espíritu ganador
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 24, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1086, N'Trabaja en equipo
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 25, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1087, N'Planes de trabajo ordenados 
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 26, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1088, N'Manejo adecuado de parrilla promocional
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 27, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1089, N'Presentación personal y del automóvil
', 9, 1047, 1, CAST(100 AS Decimal(18, 0)), 28, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1132, N'Pregunta 1', 1, 1058, 1, CAST(10 AS Decimal(18, 0)), 1, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1133, N'Pregunta 2', 1, 1058, 1, CAST(10 AS Decimal(18, 0)), 2, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1134, N'Indaga stock y rotación de su línea', 9, 1059, 1, CAST(4 AS Decimal(18, 0)), 1, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1135, N'Planea objetivo de visita', 9, 1059, 1, CAST(4 AS Decimal(18, 0)), 2, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1136, N'Hace Apertura de acuerdo al perfil medico
', 9, 1059, 1, CAST(4 AS Decimal(18, 0)), 3, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1137, N'Escucha y pregunta con intención (Identificacion de Necesidades)
', 9, 1059, 1, CAST(4 AS Decimal(18, 0)), 4, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1138, N'Resuelve objeciones y verifica aceptacion
', 9, 1059, 1, CAST(4 AS Decimal(18, 0)), 5, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1139, N'Adapta el mensaje
', 9, 1059, 1, CAST(4 AS Decimal(18, 0)), 6, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1140, N'Optimiza los recursos con sus clientes
', 9, 1059, 1, CAST(4 AS Decimal(18, 0)), 7, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1141, N'Directo en el cierre
', 9, 1059, 1, CAST(4 AS Decimal(18, 0)), 8, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1142, N'Compromiso
', 9, 1059, 1, CAST(4 AS Decimal(18, 0)), 9, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1143, N'Implementa continuidad en la visita
', 9, 1059, 1, CAST(4 AS Decimal(18, 0)), 10, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1144, N'Prueba 1', 1, 1060, 1, CAST(10 AS Decimal(18, 0)), 1, NULL)
INSERT [dbo].[Pregunta] ([Id], [Texto], [IdTipoPregunta], [IdExamen], [CantidadRespuesta], [Puntaje], [Orden], [Habilitada]) VALUES (1145, N'Prueba 2', 1, 1060, 2, CAST(10 AS Decimal(18, 0)), 2, NULL)
SET IDENTITY_INSERT [dbo].[Pregunta] OFF
/****** Object:  Table [dbo].[PreguntaUsuario]    Script Date: 05/06/2013 17:52:02 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[PreguntaUsuario] ON
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2447, 1132, 189, 1110, CAST(10.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2448, 1133, 189, 1110, CAST(10.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2449, 1132, 188, 1109, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2450, 1133, 188, 1109, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2451, 1132, 194, 1115, CAST(10.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2452, 1133, 194, 1115, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2453, 1132, 191, 1112, CAST(10.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2454, 1133, 191, 1112, CAST(10.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2455, 1134, 10, 1120, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2456, 1135, 10, 1120, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2457, 1136, 10, 1120, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2458, 1137, 10, 1120, CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2459, 1138, 10, 1120, CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2460, 1139, 10, 1120, CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2461, 1140, 10, 1120, CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2462, 1141, 10, 1120, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2463, 1142, 10, 1120, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2464, 1143, 10, 1120, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2465, 1134, 10, 1121, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2466, 1135, 10, 1121, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2467, 1136, 10, 1121, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2468, 1137, 10, 1121, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2469, 1138, 10, 1121, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2470, 1139, 10, 1121, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2471, 1140, 10, 1121, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2472, 1141, 10, 1121, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2473, 1142, 10, 1121, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2474, 1143, 10, 1121, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2475, 1144, 122, 1126, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[PreguntaUsuario] ([Id], [IdPregunta], [IdUsuario], [IdExamenUsuario], [Puntaje]) VALUES (2476, 1145, 122, 1126, CAST(5.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[PreguntaUsuario] OFF
/****** Object:  Table [dbo].[Respuesta]    Script Date: 05/06/2013 17:52:03 ******/
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
	[Puntaje] [decimal](18, 2) NULL,
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
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1220, N'D', NULL, 1062, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1221, N'A', NULL, 1062, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1222, N'B', NULL, 1062, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1223, N'S', NULL, 1062, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1224, N'D', NULL, 1063, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1225, N'A', NULL, 1063, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1226, N'B', NULL, 1063, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1227, N'S', NULL, 1063, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1228, N'D', NULL, 1064, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1229, N'A', NULL, 1064, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1230, N'B', NULL, 1064, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1231, N'S', NULL, 1064, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1232, N'D', NULL, 1065, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1233, N'A', NULL, 1065, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1234, N'B', NULL, 1065, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1235, N'S', NULL, 1065, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1236, N'D', NULL, 1066, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1237, N'A', NULL, 1066, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1238, N'B', NULL, 1066, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1239, N'S', NULL, 1066, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1240, N'D', NULL, 1067, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1241, N'A', NULL, 1067, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1242, N'B', NULL, 1067, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1243, N'S', NULL, 1067, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1244, N'D', NULL, 1068, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1245, N'A', NULL, 1068, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1246, N'B', NULL, 1068, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1247, N'S', NULL, 1068, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1248, N'D', NULL, 1069, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1249, N'A', NULL, 1069, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1250, N'B', NULL, 1069, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1251, N'S', NULL, 1069, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1252, N'D', NULL, 1070, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1253, N'A', NULL, 1070, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1254, N'B', NULL, 1070, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1255, N'S', NULL, 1070, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1256, N'D', NULL, 1071, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1257, N'A', NULL, 1071, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1258, N'B', NULL, 1071, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1259, N'S', NULL, 1071, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1260, N'D', NULL, 1072, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1261, N'A', NULL, 1072, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1262, N'B', NULL, 1072, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1263, N'S', NULL, 1072, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1264, N'D', NULL, 1073, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1265, N'A', NULL, 1073, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1266, N'B', NULL, 1073, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1267, N'S', NULL, 1073, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1268, N'D', NULL, 1074, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1269, N'A', NULL, 1074, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1270, N'B', NULL, 1074, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1271, N'S', NULL, 1074, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1272, N'D', NULL, 1075, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1273, N'A', NULL, 1075, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1274, N'B', NULL, 1075, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1275, N'S', NULL, 1075, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1276, N'D', NULL, 1076, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1277, N'A', NULL, 1076, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1278, N'B', NULL, 1076, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1279, N'S', NULL, 1076, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1280, N'D', NULL, 1077, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1281, N'A', NULL, 1077, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1282, N'B', NULL, 1077, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1283, N'S', NULL, 1077, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1284, N'D', NULL, 1078, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1285, N'A', NULL, 1078, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1286, N'B', NULL, 1078, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1287, N'S', NULL, 1078, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1288, N'D', NULL, 1079, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1289, N'A', NULL, 1079, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1290, N'B', NULL, 1079, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1291, N'S', NULL, 1079, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1292, N'D', NULL, 1080, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1293, N'A', NULL, 1080, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1294, N'B', NULL, 1080, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1295, N'S', NULL, 1080, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1296, N'D', NULL, 1081, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1297, N'A', NULL, 1081, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1298, N'B', NULL, 1081, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1299, N'S', NULL, 1081, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1300, N'D', NULL, 1082, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1301, N'A', NULL, 1082, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1302, N'B', NULL, 1082, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1303, N'S', NULL, 1082, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1304, N'D', NULL, 1083, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1305, N'A', NULL, 1083, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1306, N'B', NULL, 1083, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1307, N'S', NULL, 1083, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1308, N'D', NULL, 1084, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1309, N'A', NULL, 1084, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1310, N'B', NULL, 1084, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1311, N'S', NULL, 1084, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1312, N'D', NULL, 1085, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1313, N'A', NULL, 1085, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1314, N'B', NULL, 1085, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1315, N'S', NULL, 1085, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1316, N'D', NULL, 1086, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1317, N'A', NULL, 1086, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1318, N'B', NULL, 1086, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1319, N'S', NULL, 1086, 0, 0, CAST(100.00 AS Decimal(18, 2)))
GO
print 'Processed 100 total records'
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1320, N'D', NULL, 1087, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1321, N'A', NULL, 1087, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1322, N'B', NULL, 1087, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1323, N'S', NULL, 1087, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1324, N'D', NULL, 1088, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1325, N'A', NULL, 1088, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1326, N'B', NULL, 1088, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1327, N'S', NULL, 1088, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1328, N'D', NULL, 1089, 0, 0, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1329, N'A', NULL, 1089, 0, 0, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1330, N'B', NULL, 1089, 0, 0, CAST(85.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1331, N'S', NULL, 1089, 0, 0, CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1486, N'rpta 1', 1, 1132, 0, 0, NULL)
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1487, N'rpta 2', 2, 1132, 0, 0, NULL)
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1488, N'rpta 3', 3, 1132, 0, 0, NULL)
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1489, N'rpta correcta', 4, 1132, 1, 0, NULL)
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1490, N'rpta 1', 1, 1133, 0, 0, NULL)
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1491, N'rpta 2', 2, 1133, 0, 0, NULL)
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1492, N'rpta correcta', 3, 1133, 1, 0, NULL)
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1493, N'rpta 4', 4, 1133, 0, 0, NULL)
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1494, N'D', NULL, 1134, 0, 0, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1495, N'A', NULL, 1134, 0, 0, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1496, N'B', NULL, 1134, 0, 0, CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1497, N'S', NULL, 1134, 0, 0, CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1498, N'D', NULL, 1135, 0, 0, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1499, N'A', NULL, 1135, 0, 0, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1500, N'B', NULL, 1135, 0, 0, CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1501, N'S', NULL, 1135, 0, 0, CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1502, N'D', NULL, 1136, 0, 0, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1503, N'A', NULL, 1136, 0, 0, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1504, N'B', NULL, 1136, 0, 0, CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1505, N'S', NULL, 1136, 0, 0, CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1506, N'D', NULL, 1137, 0, 0, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1507, N'A', NULL, 1137, 0, 0, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1508, N'B', NULL, 1137, 0, 0, CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1509, N'S', NULL, 1137, 0, 0, CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1510, N'D', NULL, 1138, 0, 0, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1511, N'A', NULL, 1138, 0, 0, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1512, N'B', NULL, 1138, 0, 0, CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1513, N'S', NULL, 1138, 0, 0, CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1514, N'D', NULL, 1139, 0, 0, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1515, N'A', NULL, 1139, 0, 0, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1516, N'B', NULL, 1139, 0, 0, CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1517, N'S', NULL, 1139, 0, 0, CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1518, N'D', NULL, 1140, 0, 0, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1519, N'A', NULL, 1140, 0, 0, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1520, N'B', NULL, 1140, 0, 0, CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1521, N'S', NULL, 1140, 0, 0, CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1522, N'D', NULL, 1141, 0, 0, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1523, N'A', NULL, 1141, 0, 0, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1524, N'B', NULL, 1141, 0, 0, CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1525, N'S', NULL, 1141, 0, 0, CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1526, N'D', NULL, 1142, 0, 0, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1527, N'A', NULL, 1142, 0, 0, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1528, N'B', NULL, 1142, 0, 0, CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1529, N'S', NULL, 1142, 0, 0, CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1530, N'D', NULL, 1143, 0, 0, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1531, N'A', NULL, 1143, 0, 0, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1532, N'B', NULL, 1143, 0, 0, CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1533, N'S', NULL, 1143, 0, 0, CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1534, N'a', 1, 1144, 0, 0, NULL)
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1535, N'b', 2, 1144, 0, 0, NULL)
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1536, N'c', 3, 1144, 0, 0, NULL)
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1537, N'd', 4, 1144, 1, 0, NULL)
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1538, N'a', 1, 1145, 0, 0, NULL)
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1539, N'b', 2, 1145, 1, 0, NULL)
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1540, N'c', 3, 1145, 1, 0, NULL)
INSERT [dbo].[Respuesta] ([Id], [Texto], [Orden], [IdPregunta], [EsCorrecta], [Marcada], [Puntaje]) VALUES (1541, N'd', 4, 1145, 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[Respuesta] OFF
/****** Object:  Table [dbo].[RespuestaUsuario]    Script Date: 05/06/2013 17:52:03 ******/
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
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6724, 1486, 189, 1110, N'rpta 1', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6725, 1487, 189, 1110, N'rpta 2', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6726, 1488, 189, 1110, N'rpta 3', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6727, 1489, 189, 1110, N'rpta correcta', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6728, 1490, 189, 1110, N'rpta 1', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6729, 1491, 189, 1110, N'rpta 2', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6730, 1492, 189, 1110, N'rpta correcta', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6731, 1493, 189, 1110, N'rpta 4', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6732, 1486, 188, 1109, N'rpta 1', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6733, 1487, 188, 1109, N'rpta 2', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6734, 1488, 188, 1109, N'rpta 3', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6735, 1489, 188, 1109, N'rpta correcta', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6736, 1490, 188, 1109, N'rpta 1', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6737, 1491, 188, 1109, N'rpta 2', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6738, 1492, 188, 1109, N'rpta correcta', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6739, 1493, 188, 1109, N'rpta 4', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6740, 1486, 194, 1115, N'rpta 1', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6741, 1487, 194, 1115, N'rpta 2', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6742, 1488, 194, 1115, N'rpta 3', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6743, 1489, 194, 1115, N'rpta correcta', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6744, 1490, 194, 1115, N'rpta 1', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6745, 1491, 194, 1115, N'rpta 2', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6746, 1492, 194, 1115, N'rpta correcta', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6747, 1493, 194, 1115, N'rpta 4', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6748, 1486, 191, 1112, N'rpta 1', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6749, 1487, 191, 1112, N'rpta 2', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6750, 1488, 191, 1112, N'rpta 3', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6751, 1489, 191, 1112, N'rpta correcta', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6752, 1490, 191, 1112, N'rpta 1', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6753, 1491, 191, 1112, N'rpta 2', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6754, 1492, 191, 1112, N'rpta correcta', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6755, 1493, 191, 1112, N'rpta 4', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6756, 1494, 10, 1120, N'D', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6757, 1495, 10, 1120, N'A', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6758, 1496, 10, 1120, N'B', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6759, 1497, 10, 1120, N'S', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6760, 1498, 10, 1120, N'D', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6761, 1499, 10, 1120, N'A', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6762, 1500, 10, 1120, N'B', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6763, 1501, 10, 1120, N'S', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6764, 1502, 10, 1120, N'D', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6765, 1503, 10, 1120, N'A', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6766, 1504, 10, 1120, N'B', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6767, 1505, 10, 1120, N'S', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6768, 1506, 10, 1120, N'D', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6769, 1507, 10, 1120, N'A', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6770, 1508, 10, 1120, N'B', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6771, 1509, 10, 1120, N'S', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6772, 1510, 10, 1120, N'D', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6773, 1511, 10, 1120, N'A', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6774, 1512, 10, 1120, N'B', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6775, 1513, 10, 1120, N'S', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6776, 1514, 10, 1120, N'D', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6777, 1515, 10, 1120, N'A', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6778, 1516, 10, 1120, N'B', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6779, 1517, 10, 1120, N'S', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6780, 1518, 10, 1120, N'D', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6781, 1519, 10, 1120, N'A', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6782, 1520, 10, 1120, N'B', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6783, 1521, 10, 1120, N'S', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6784, 1522, 10, 1120, N'D', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6785, 1523, 10, 1120, N'A', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6786, 1524, 10, 1120, N'B', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6787, 1525, 10, 1120, N'S', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6788, 1526, 10, 1120, N'D', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6789, 1527, 10, 1120, N'A', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6790, 1528, 10, 1120, N'B', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6791, 1529, 10, 1120, N'S', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6792, 1530, 10, 1120, N'D', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6793, 1531, 10, 1120, N'A', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6794, 1532, 10, 1120, N'B', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6795, 1533, 10, 1120, N'S', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6796, 1494, 10, 1121, N'D', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6797, 1495, 10, 1121, N'A', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6798, 1496, 10, 1121, N'B', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6799, 1497, 10, 1121, N'S', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6800, 1498, 10, 1121, N'D', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6801, 1499, 10, 1121, N'A', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6802, 1500, 10, 1121, N'B', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6803, 1501, 10, 1121, N'S', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6804, 1502, 10, 1121, N'D', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6805, 1503, 10, 1121, N'A', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6806, 1504, 10, 1121, N'B', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6807, 1505, 10, 1121, N'S', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6808, 1506, 10, 1121, N'D', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6809, 1507, 10, 1121, N'A', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6810, 1508, 10, 1121, N'B', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6811, 1509, 10, 1121, N'S', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6812, 1510, 10, 1121, N'D', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6813, 1511, 10, 1121, N'A', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6814, 1512, 10, 1121, N'B', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6815, 1513, 10, 1121, N'S', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6816, 1514, 10, 1121, N'D', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6817, 1515, 10, 1121, N'A', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6818, 1516, 10, 1121, N'B', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6819, 1517, 10, 1121, N'S', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6820, 1518, 10, 1121, N'D', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6821, 1519, 10, 1121, N'A', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6822, 1520, 10, 1121, N'B', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6823, 1521, 10, 1121, N'S', 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6824, 1522, 10, 1121, N'D', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6825, 1523, 10, 1121, N'A', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6826, 1524, 10, 1121, N'B', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6827, 1525, 10, 1121, N'S', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6828, 1526, 10, 1121, N'D', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6829, 1527, 10, 1121, N'A', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6830, 1528, 10, 1121, N'B', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6831, 1529, 10, 1121, N'S', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6832, 1530, 10, 1121, N'D', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6833, 1531, 10, 1121, N'A', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6834, 1532, 10, 1121, N'B', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6835, 1533, 10, 1121, N'S', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6836, 1534, 122, 1126, N'a', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6837, 1535, 122, 1126, N'b', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6838, 1536, 122, 1126, N'c', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6839, 1537, 122, 1126, N'd', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6840, 1538, 122, 1126, N'a', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6841, 1539, 122, 1126, N'b', 0)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6842, 1540, 122, 1126, N'c', 1)
INSERT [dbo].[RespuestaUsuario] ([Id], [IdRespuesta], [IdUsuario], [IdExamenUsuario], [Texto], [Marcada]) VALUES (6843, 1541, 122, 1126, N'd', 1)
SET IDENTITY_INSERT [dbo].[RespuestaUsuario] OFF
/****** Object:  ForeignKey [FK_DocumentoLinea_Documento]    Script Date: 05/06/2013 17:52:01 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentoLinea_Documento]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentoLinea]'))
ALTER TABLE [dbo].[DocumentoLinea]  WITH CHECK ADD  CONSTRAINT [FK_DocumentoLinea_Documento] FOREIGN KEY([IdDocumento])
REFERENCES [dbo].[Documento] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentoLinea_Documento]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentoLinea]'))
ALTER TABLE [dbo].[DocumentoLinea] CHECK CONSTRAINT [FK_DocumentoLinea_Documento]
GO
/****** Object:  ForeignKey [FK_DocumentoLinea_Linea]    Script Date: 05/06/2013 17:52:01 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentoLinea_Linea]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentoLinea]'))
ALTER TABLE [dbo].[DocumentoLinea]  WITH CHECK ADD  CONSTRAINT [FK_DocumentoLinea_Linea] FOREIGN KEY([IdLinea])
REFERENCES [dbo].[Linea] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DocumentoLinea_Linea]') AND parent_object_id = OBJECT_ID(N'[dbo].[DocumentoLinea]'))
ALTER TABLE [dbo].[DocumentoLinea] CHECK CONSTRAINT [FK_DocumentoLinea_Linea]
GO
/****** Object:  ForeignKey [FK_Examen_Estado]    Script Date: 05/06/2013 17:52:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen]  WITH CHECK ADD  CONSTRAINT [FK_Examen_Estado] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen] CHECK CONSTRAINT [FK_Examen_Estado]
GO
/****** Object:  ForeignKey [FK_Examen_Producto]    Script Date: 05/06/2013 17:52:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen]  WITH CHECK ADD  CONSTRAINT [FK_Examen_Producto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Producto] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen] CHECK CONSTRAINT [FK_Examen_Producto]
GO
/****** Object:  ForeignKey [FK_Examen_TipoExamen]    Script Date: 05/06/2013 17:52:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_TipoExamen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen]  WITH CHECK ADD  CONSTRAINT [FK_Examen_TipoExamen] FOREIGN KEY([IdTipo])
REFERENCES [dbo].[TipoExamen] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Examen_TipoExamen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Examen]'))
ALTER TABLE [dbo].[Examen] CHECK CONSTRAINT [FK_Examen_TipoExamen]
GO
/****** Object:  ForeignKey [FK_ExamenUsuario_Examen]    Script Date: 05/06/2013 17:52:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario]  WITH CHECK ADD  CONSTRAINT [FK_ExamenUsuario_Examen] FOREIGN KEY([IdExamen])
REFERENCES [dbo].[Examen] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] CHECK CONSTRAINT [FK_ExamenUsuario_Examen]
GO
/****** Object:  ForeignKey [FK_ExamenUsuario_UserProfile]    Script Date: 05/06/2013 17:52:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario]  WITH CHECK ADD  CONSTRAINT [FK_ExamenUsuario_UserProfile] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] CHECK CONSTRAINT [FK_ExamenUsuario_UserProfile]
GO
/****** Object:  ForeignKey [FK_ExamenUsuario_UserProfile1]    Script Date: 05/06/2013 17:52:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_UserProfile1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario]  WITH CHECK ADD  CONSTRAINT [FK_ExamenUsuario_UserProfile1] FOREIGN KEY([IdEjecutivo])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_UserProfile1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] CHECK CONSTRAINT [FK_ExamenUsuario_UserProfile1]
GO
/****** Object:  ForeignKey [FK_ExamenUsuario_UserProfile2]    Script Date: 05/06/2013 17:52:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_UserProfile2]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario]  WITH CHECK ADD  CONSTRAINT [FK_ExamenUsuario_UserProfile2] FOREIGN KEY([IdAster])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ExamenUsuario_UserProfile2]') AND parent_object_id = OBJECT_ID(N'[dbo].[ExamenUsuario]'))
ALTER TABLE [dbo].[ExamenUsuario] CHECK CONSTRAINT [FK_ExamenUsuario_UserProfile2]
GO
/****** Object:  ForeignKey [FK_Pregunta_Examen]    Script Date: 05/06/2013 17:52:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pregunta_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pregunta]'))
ALTER TABLE [dbo].[Pregunta]  WITH CHECK ADD  CONSTRAINT [FK_Pregunta_Examen] FOREIGN KEY([IdExamen])
REFERENCES [dbo].[Examen] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pregunta_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pregunta]'))
ALTER TABLE [dbo].[Pregunta] CHECK CONSTRAINT [FK_Pregunta_Examen]
GO
/****** Object:  ForeignKey [FK_Pregunta_TipoPregunta]    Script Date: 05/06/2013 17:52:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pregunta_TipoPregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pregunta]'))
ALTER TABLE [dbo].[Pregunta]  WITH CHECK ADD  CONSTRAINT [FK_Pregunta_TipoPregunta] FOREIGN KEY([IdTipoPregunta])
REFERENCES [dbo].[TipoPregunta] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pregunta_TipoPregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pregunta]'))
ALTER TABLE [dbo].[Pregunta] CHECK CONSTRAINT [FK_Pregunta_TipoPregunta]
GO
/****** Object:  ForeignKey [FK_PreguntaUsuario_ExamenUsuario]    Script Date: 05/06/2013 17:52:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_ExamenUsuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario]  WITH CHECK ADD  CONSTRAINT [FK_PreguntaUsuario_ExamenUsuario] FOREIGN KEY([IdExamenUsuario])
REFERENCES [dbo].[ExamenUsuario] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_ExamenUsuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario] CHECK CONSTRAINT [FK_PreguntaUsuario_ExamenUsuario]
GO
/****** Object:  ForeignKey [FK_PreguntaUsuario_Pregunta]    Script Date: 05/06/2013 17:52:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_Pregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario]  WITH CHECK ADD  CONSTRAINT [FK_PreguntaUsuario_Pregunta] FOREIGN KEY([IdPregunta])
REFERENCES [dbo].[Pregunta] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_Pregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario] CHECK CONSTRAINT [FK_PreguntaUsuario_Pregunta]
GO
/****** Object:  ForeignKey [FK_PreguntaUsuario_UserProfile]    Script Date: 05/06/2013 17:52:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario]  WITH CHECK ADD  CONSTRAINT [FK_PreguntaUsuario_UserProfile] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreguntaUsuario_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreguntaUsuario]'))
ALTER TABLE [dbo].[PreguntaUsuario] CHECK CONSTRAINT [FK_PreguntaUsuario_UserProfile]
GO
/****** Object:  ForeignKey [FK_ProductoLinea_Linea]    Script Date: 05/06/2013 17:52:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductoLinea_Linea]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductoLinea]'))
ALTER TABLE [dbo].[ProductoLinea]  WITH CHECK ADD  CONSTRAINT [FK_ProductoLinea_Linea] FOREIGN KEY([IdLinea])
REFERENCES [dbo].[Linea] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductoLinea_Linea]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductoLinea]'))
ALTER TABLE [dbo].[ProductoLinea] CHECK CONSTRAINT [FK_ProductoLinea_Linea]
GO
/****** Object:  ForeignKey [FK_ProductoLinea_Producto]    Script Date: 05/06/2013 17:52:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductoLinea_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductoLinea]'))
ALTER TABLE [dbo].[ProductoLinea]  WITH CHECK ADD  CONSTRAINT [FK_ProductoLinea_Producto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Producto] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductoLinea_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductoLinea]'))
ALTER TABLE [dbo].[ProductoLinea] CHECK CONSTRAINT [FK_ProductoLinea_Producto]
GO
/****** Object:  ForeignKey [FK_PuntajeAsesoria_Examen]    Script Date: 05/06/2013 17:52:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PuntajeAsesoria_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[PuntajeAsesoria]'))
ALTER TABLE [dbo].[PuntajeAsesoria]  WITH NOCHECK ADD  CONSTRAINT [FK_PuntajeAsesoria_Examen] FOREIGN KEY([IdExamen])
REFERENCES [dbo].[Examen] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PuntajeAsesoria_Examen]') AND parent_object_id = OBJECT_ID(N'[dbo].[PuntajeAsesoria]'))
ALTER TABLE [dbo].[PuntajeAsesoria] NOCHECK CONSTRAINT [FK_PuntajeAsesoria_Examen]
GO
/****** Object:  ForeignKey [FK_Respuesta_Pregunta]    Script Date: 05/06/2013 17:52:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Respuesta_Pregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Respuesta]'))
ALTER TABLE [dbo].[Respuesta]  WITH CHECK ADD  CONSTRAINT [FK_Respuesta_Pregunta] FOREIGN KEY([IdPregunta])
REFERENCES [dbo].[Pregunta] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Respuesta_Pregunta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Respuesta]'))
ALTER TABLE [dbo].[Respuesta] CHECK CONSTRAINT [FK_Respuesta_Pregunta]
GO
/****** Object:  ForeignKey [FK_RespuestaUsuario_ExamenUsuario]    Script Date: 05/06/2013 17:52:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_ExamenUsuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario]  WITH CHECK ADD  CONSTRAINT [FK_RespuestaUsuario_ExamenUsuario] FOREIGN KEY([IdExamenUsuario])
REFERENCES [dbo].[ExamenUsuario] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_ExamenUsuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario] CHECK CONSTRAINT [FK_RespuestaUsuario_ExamenUsuario]
GO
/****** Object:  ForeignKey [FK_RespuestaUsuario_Respuesta]    Script Date: 05/06/2013 17:52:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_Respuesta]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario]  WITH CHECK ADD  CONSTRAINT [FK_RespuestaUsuario_Respuesta] FOREIGN KEY([IdRespuesta])
REFERENCES [dbo].[Respuesta] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_Respuesta]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario] CHECK CONSTRAINT [FK_RespuestaUsuario_Respuesta]
GO
/****** Object:  ForeignKey [FK_RespuestaUsuario_UserProfile]    Script Date: 05/06/2013 17:52:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario]  WITH CHECK ADD  CONSTRAINT [FK_RespuestaUsuario_UserProfile] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RespuestaUsuario_UserProfile]') AND parent_object_id = OBJECT_ID(N'[dbo].[RespuestaUsuario]'))
ALTER TABLE [dbo].[RespuestaUsuario] CHECK CONSTRAINT [FK_RespuestaUsuario_UserProfile]
GO
/****** Object:  ForeignKey [FK_UserProfile_Linea]    Script Date: 05/06/2013 17:52:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserProfile_Linea]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserProfile]'))
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD  CONSTRAINT [FK_UserProfile_Linea] FOREIGN KEY([IdLinea])
REFERENCES [dbo].[Linea] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserProfile_Linea]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserProfile]'))
ALTER TABLE [dbo].[UserProfile] CHECK CONSTRAINT [FK_UserProfile_Linea]
GO
/****** Object:  ForeignKey [fk_RoleId]    Script Date: 05/06/2013 17:52:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]'))
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]'))
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
/****** Object:  ForeignKey [fk_UserId]    Script Date: 05/06/2013 17:52:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]'))
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]'))
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO
