
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/24/2017 10:52:36
-- Generated from EDMX file: C:\Users\1617867\Source\Repos\Asp.Net12\Aula2405_EF_MF\Aula2405_EF_MF\BaseDados.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [LojaDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Categorias'
CREATE TABLE [dbo].[Categorias] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(50)  NOT NULL,
    [Descricao] nvarchar(max)  NULL
);
GO

-- Creating table 'ProdutoSet'
CREATE TABLE [dbo].[ProdutoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(50)  NOT NULL,
    [Descricao] nvarchar(max)  NULL,
    [CategoriaId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Categorias'
ALTER TABLE [dbo].[Categorias]
ADD CONSTRAINT [PK_Categorias]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProdutoSet'
ALTER TABLE [dbo].[ProdutoSet]
ADD CONSTRAINT [PK_ProdutoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CategoriaId] in table 'ProdutoSet'
ALTER TABLE [dbo].[ProdutoSet]
ADD CONSTRAINT [FK_CategoriaProduto]
    FOREIGN KEY ([CategoriaId])
    REFERENCES [dbo].[Categorias]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CategoriaProduto'
CREATE INDEX [IX_FK_CategoriaProduto]
ON [dbo].[ProdutoSet]
    ([CategoriaId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------