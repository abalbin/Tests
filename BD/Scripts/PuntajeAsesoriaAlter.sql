/*
   viernes, 10 de mayo de 201309:44:04 a.m.
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
ALTER TABLE dbo.PuntajeAsesoria
	DROP CONSTRAINT FK_PuntajeAsesoria_Examen
GO
ALTER TABLE dbo.Examen SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_PuntajeAsesoria
	(
	Id int NOT NULL IDENTITY (1, 1),
	D decimal(18, 4) NULL,
	A decimal(18, 4) NULL,
	B decimal(18, 4) NULL,
	S decimal(18, 4) NULL,
	IdExamen int NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_PuntajeAsesoria SET (LOCK_ESCALATION = TABLE)
GO
SET IDENTITY_INSERT dbo.Tmp_PuntajeAsesoria ON
GO
IF EXISTS(SELECT * FROM dbo.PuntajeAsesoria)
	 EXEC('INSERT INTO dbo.Tmp_PuntajeAsesoria (Id, D, A, B, S, IdExamen)
		SELECT Id, D, A, B, S, IdExamen FROM dbo.PuntajeAsesoria WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_PuntajeAsesoria OFF
GO
DROP TABLE dbo.PuntajeAsesoria
GO
EXECUTE sp_rename N'dbo.Tmp_PuntajeAsesoria', N'PuntajeAsesoria', 'OBJECT' 
GO
ALTER TABLE dbo.PuntajeAsesoria ADD CONSTRAINT
	PK_PuntajeAsesoria PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.PuntajeAsesoria WITH NOCHECK ADD CONSTRAINT
	FK_PuntajeAsesoria_Examen FOREIGN KEY
	(
	IdExamen
	) REFERENCES dbo.Examen
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.PuntajeAsesoria
	NOCHECK CONSTRAINT FK_PuntajeAsesoria_Examen
GO
COMMIT
