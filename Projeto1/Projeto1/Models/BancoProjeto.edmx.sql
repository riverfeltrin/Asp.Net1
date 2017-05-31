
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/31/2017 10:13:20
-- Generated from EDMX file: C:\Users\1617867\Source\Repos\Asp.Net12\Projeto1\Projeto1\Models\BancoProjeto.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [PedidosDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_DepartamentoFuncionario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Funcionarios] DROP CONSTRAINT [FK_DepartamentoFuncionario];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Departamentos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Departamentos];
GO
IF OBJECT_ID(N'[dbo].[Funcionarios]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Funcionarios];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Departamentos'
CREATE TABLE [dbo].[Departamentos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [Lider] nvarchar(max)  NOT NULL,
    [Setor] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Funcionarios'
CREATE TABLE [dbo].[Funcionarios] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [Endereco] nvarchar(max)  NOT NULL,
    [Telefone] nvarchar(max)  NOT NULL,
    [DepartamentoId] int  NOT NULL,
    [Ativo] bit  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Departamentos'
ALTER TABLE [dbo].[Departamentos]
ADD CONSTRAINT [PK_Departamentos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Funcionarios'
ALTER TABLE [dbo].[Funcionarios]
ADD CONSTRAINT [PK_Funcionarios]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [DepartamentoId] in table 'Funcionarios'
ALTER TABLE [dbo].[Funcionarios]
ADD CONSTRAINT [FK_DepartamentoFuncionario]
    FOREIGN KEY ([DepartamentoId])
    REFERENCES [dbo].[Departamentos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DepartamentoFuncionario'
CREATE INDEX [IX_FK_DepartamentoFuncionario]
ON [dbo].[Funcionarios]
    ([DepartamentoId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------