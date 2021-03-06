/*
   viernes, 10 de mayo de 201309:42:13 a.m.
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
ALTER TABLE dbo.Pregunta
	DROP CONSTRAINT FK_Pregunta_TipoPregunta
GO
ALTER TABLE dbo.TipoPregunta SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Pregunta
	DROP CONSTRAINT FK_Pregunta_Examen
GO
ALTER TABLE dbo.Examen SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Pregunta
	DROP CONSTRAINT DF_Pregunta_Habilitada
GO
CREATE TABLE dbo.Tmp_Pregunta
	(
	Id int NOT NULL IDENTITY (1, 1),
	Texto varchar(400) NULL,
	IdTipoPregunta int NULL,
	IdExamen int NULL,
	CantidadRespuesta int NULL,
	Puntaje decimal(18, 4) NULL,
	Orden int NULL,
	Habilitada bit NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_Pregunta SET (LOCK_ESCALATION = TABLE)
GO
ALTER TABLE dbo.Tmp_Pregunta ADD CONSTRAINT
	DF_Pregunta_Habilitada DEFAULT ((1)) FOR Habilitada
GO
SET IDENTITY_INSERT dbo.Tmp_Pregunta ON
GO
IF EXISTS(SELECT * FROM dbo.Pregunta)
	 EXEC('INSERT INTO dbo.Tmp_Pregunta (Id, Texto, IdTipoPregunta, IdExamen, CantidadRespuesta, Puntaje, Orden, Habilitada)
		SELECT Id, Texto, IdTipoPregunta, IdExamen, CantidadRespuesta, Puntaje, Orden, Habilitada FROM dbo.Pregunta WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_Pregunta OFF
GO
ALTER TABLE dbo.PreguntaUsuario
	DROP CONSTRAINT FK_PreguntaUsuario_Pregunta
GO
ALTER TABLE dbo.Respuesta
	DROP CONSTRAINT FK_Respuesta_Pregunta
GO
DROP TABLE dbo.Pregunta
GO
EXECUTE sp_rename N'dbo.Tmp_Pregunta', N'Pregunta', 'OBJECT' 
GO
ALTER TABLE dbo.Pregunta ADD CONSTRAINT
	PK_Pregunta PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Pregunta ADD CONSTRAINT
	FK_Pregunta_Examen FOREIGN KEY
	(
	IdExamen
	) REFERENCES dbo.Examen
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Pregunta ADD CONSTRAINT
	FK_Pregunta_TipoPregunta FOREIGN KEY
	(
	IdTipoPregunta
	) REFERENCES dbo.TipoPregunta
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT
BEGIN TRANSACTION
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
ALTER TABLE dbo.Respuesta SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.PreguntaUsuario ADD CONSTRAINT
	FK_PreguntaUsuario_Pregunta FOREIGN KEY
	(
	IdPregunta
	) REFERENCES dbo.Pregunta
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.PreguntaUsuario SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
