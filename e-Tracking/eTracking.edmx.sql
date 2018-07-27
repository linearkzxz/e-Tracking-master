
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/27/2018 18:10:17
-- Generated from EDMX file: C:\Users\K\Documents\Visual Studio 2015\Projects\e-Tracking-master\e-Tracking-master\e-Tracking\eTracking.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [eTracking];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[tbfollowing]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbfollowing];
GO
IF OBJECT_ID(N'[eTrackingStoreContainer].[Comments]', 'U') IS NOT NULL
    DROP TABLE [eTrackingStoreContainer].[Comments];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Comments'
CREATE TABLE [dbo].[Comments] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Text] nvarchar(max)  NOT NULL,
    [ParentId] int  NULL,
    [PrNumber] nvarchar(max)  NOT NULL,
    [UserId] nvarchar(max)  NOT NULL,
    [UpdateDate] datetime  NOT NULL
);
GO

-- Creating table 'tbfollowings'
CREATE TABLE [dbo].[tbfollowings] (
    [id] bigint IDENTITY(1,1) NOT NULL,
    [userid] varchar(max)  NOT NULL,
    [flag_follow] varchar(50)  NULL,
    [lastmodifieddate] datetime  NULL,
    [lastmodifieBy] varchar(50)  NULL,
    [pr_number] varchar(50)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Comments'
ALTER TABLE [dbo].[Comments]
ADD CONSTRAINT [PK_Comments]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [id] in table 'tbfollowings'
ALTER TABLE [dbo].[tbfollowings]
ADD CONSTRAINT [PK_tbfollowings]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------