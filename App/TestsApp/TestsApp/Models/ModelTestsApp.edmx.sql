
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 02/06/2013 09:33:15
-- Generated from EDMX file: C:\Users\Denis\Documents\GitHub\Tests\TestsApp\TestsApp\Models\ModelTestsApp.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [TestsAppBD];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Examen_Estado]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Examen] DROP CONSTRAINT [FK_Examen_Estado];
GO
IF OBJECT_ID(N'[dbo].[FK_Pregunta_Examen]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Pregunta] DROP CONSTRAINT [FK_Pregunta_Examen];
GO
IF OBJECT_ID(N'[dbo].[FK_Respuesta_Pregunta]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Respuesta] DROP CONSTRAINT [FK_Respuesta_Pregunta];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Estado]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Estado];
GO
IF OBJECT_ID(N'[dbo].[Examen]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Examen];
GO
IF OBJECT_ID(N'[dbo].[Pregunta]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Pregunta];
GO
IF OBJECT_ID(N'[dbo].[Respuesta]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Respuesta];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Pregunta'
CREATE TABLE [dbo].[Pregunta] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Texto] varchar(400)  NULL,
    [IdExamen] int  NULL
);
GO

-- Creating table 'Respuesta'
CREATE TABLE [dbo].[Respuesta] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Texto] varchar(400)  NULL,
    [Orden] int  NULL,
    [IdPregunta] int  NULL,
    [EsCorrecta] int  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'Estado'
CREATE TABLE [dbo].[Estado] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] varchar(50)  NULL
);
GO

-- Creating table 'Examen'
CREATE TABLE [dbo].[Examen] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] varchar(100)  NOT NULL,
    [Titulo] varchar(400)  NOT NULL,
    [FechaCreacion] datetime  NOT NULL,
    [FechaEjecucion] datetime  NOT NULL,
    [TiempoMaximo] time  NOT NULL,
    [IdEstado] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Pregunta'
ALTER TABLE [dbo].[Pregunta]
ADD CONSTRAINT [PK_Pregunta]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Respuesta'
ALTER TABLE [dbo].[Respuesta]
ADD CONSTRAINT [PK_Respuesta]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [Id] in table 'Estado'
ALTER TABLE [dbo].[Estado]
ADD CONSTRAINT [PK_Estado]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Examen'
ALTER TABLE [dbo].[Examen]
ADD CONSTRAINT [PK_Examen]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [IdPregunta] in table 'Respuesta'
ALTER TABLE [dbo].[Respuesta]
ADD CONSTRAINT [FK_Respuesta_Pregunta]
    FOREIGN KEY ([IdPregunta])
    REFERENCES [dbo].[Pregunta]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Respuesta_Pregunta'
CREATE INDEX [IX_FK_Respuesta_Pregunta]
ON [dbo].[Respuesta]
    ([IdPregunta]);
GO

-- Creating foreign key on [IdEstado] in table 'Examen'
ALTER TABLE [dbo].[Examen]
ADD CONSTRAINT [FK_Examen_Estado]
    FOREIGN KEY ([IdEstado])
    REFERENCES [dbo].[Estado]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Examen_Estado'
CREATE INDEX [IX_FK_Examen_Estado]
ON [dbo].[Examen]
    ([IdEstado]);
GO

-- Creating foreign key on [IdExamen] in table 'Pregunta'
ALTER TABLE [dbo].[Pregunta]
ADD CONSTRAINT [FK_Pregunta_Examen]
    FOREIGN KEY ([IdExamen])
    REFERENCES [dbo].[Examen]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Pregunta_Examen'
CREATE INDEX [IX_FK_Pregunta_Examen]
ON [dbo].[Pregunta]
    ([IdExamen]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------