/*
   viernes, 10 de mayo de 201309:44:27 a.m.
   User: 
   Server: .
   Database: TestsAppBD
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Respuesta
	DROP CONSTRAINT FK_Respuesta_Pregunta
GO
ALTER TABLE dbo.Pregunta SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Respuesta
	DROP CONSTRAINT DF_Respuesta_Marcada
GO
CREATE TABLE dbo.Tmp_Respuesta
	(
	Id int NOT NULL IDENTITY (1, 1),
	Texto varchar(400) NULL,
	Orden int NULL,
	IdPregunta int NULL,
	EsCorrecta int NULL,
	Marcada bit NOT NULL,
	Puntaje decimal(18, 4) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_Respuesta SET (LOCK_ESCALATION = TABLE)
GO
ALTER TABLE dbo.Tmp_Respuesta ADD CONSTRAINT
	DF_Respuesta_Marcada DEFAULT ((0)) FOR Marcada
GO
SET IDENTITY_INSERT dbo.Tmp_Respuesta ON
GO
IF EXISTS(SELECT * FROM dbo.Respuesta)
	 EXEC('INSERT INTO dbo.Tmp_Respuesta (Id, Texto, Orden, IdPregunta, EsCorrecta, Marcada, Puntaje)
		SELECT Id, Texto, Orden, IdPregunta, EsCorrecta, Marcada, Puntaje FROM dbo.Respuesta WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_Respuesta OFF
GO
ALTER TABLE dbo.RespuestaUsuario
	DROP CONSTRAINT FK_RespuestaUsuario_Respuesta
GO
DROP TABLE dbo.Respuesta
GO
EXECUTE sp_rename N'dbo.Tmp_Respuesta', N'Respuesta', 'OBJECT' 
GO
ALTER TABLE dbo.Respuesta ADD CONSTRAINT
	PK_Respuesta PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Respuesta ADD CONSTRAINT
	FK_Respuesta_Pregunta FOREIGN KEY
	(
	IdPregunta
	) REFERENCES dbo.Pregunta
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.RespuestaUsuario ADD CONSTRAINT
	FK_RespuestaUsuario_Respuesta FOREIGN KEY
	(
	IdRespuesta
	) REFERENCES dbo.Respuesta
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.RespuestaUsuario SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
