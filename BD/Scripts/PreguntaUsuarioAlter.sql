/*
   viernes, 10 de mayo de 201309:43:15 a.m.
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
ALTER TABLE dbo.PreguntaUsuario
	DROP CONSTRAINT FK_PreguntaUsuario_Pregunta
GO
ALTER TABLE dbo.Pregunta SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.PreguntaUsuario
	DROP CONSTRAINT FK_PreguntaUsuario_ExamenUsuario
GO
ALTER TABLE dbo.ExamenUsuario SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.PreguntaUsuario
	DROP CONSTRAINT FK_PreguntaUsuario_UserProfile
GO
ALTER TABLE dbo.UserProfile SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_PreguntaUsuario
	(
	Id int NOT NULL IDENTITY (1, 1),
	IdPregunta int NULL,
	IdUsuario int NULL,
	IdExamenUsuario int NULL,
	Puntaje decimal(18, 4) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_PreguntaUsuario SET (LOCK_ESCALATION = TABLE)
GO
SET IDENTITY_INSERT dbo.Tmp_PreguntaUsuario ON
GO
IF EXISTS(SELECT * FROM dbo.PreguntaUsuario)
	 EXEC('INSERT INTO dbo.Tmp_PreguntaUsuario (Id, IdPregunta, IdUsuario, IdExamenUsuario, Puntaje)
		SELECT Id, IdPregunta, IdUsuario, IdExamenUsuario, Puntaje FROM dbo.PreguntaUsuario WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_PreguntaUsuario OFF
GO
DROP TABLE dbo.PreguntaUsuario
GO
EXECUTE sp_rename N'dbo.Tmp_PreguntaUsuario', N'PreguntaUsuario', 'OBJECT' 
GO
ALTER TABLE dbo.PreguntaUsuario ADD CONSTRAINT
	PK_PreguntaUsuario PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.PreguntaUsuario ADD CONSTRAINT
	FK_PreguntaUsuario_UserProfile FOREIGN KEY
	(
	IdUsuario
	) REFERENCES dbo.UserProfile
	(
	UserId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.PreguntaUsuario ADD CONSTRAINT
	FK_PreguntaUsuario_ExamenUsuario FOREIGN KEY
	(
	IdExamenUsuario
	) REFERENCES dbo.ExamenUsuario
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
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
COMMIT
