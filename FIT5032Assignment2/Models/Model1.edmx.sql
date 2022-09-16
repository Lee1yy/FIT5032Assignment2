
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/15/2022 21:06:06
-- Generated from EDMX file: C:\Users\Yongyuan Li\source\repos\FIT5032Assignment2\FIT5032Assignment2\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [aspnet-FIT5032_Myidentity-20220905123953];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_PatientBooking]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BookingSet] DROP CONSTRAINT [FK_PatientBooking];
GO
IF OBJECT_ID(N'[dbo].[FK_DPBooking]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BookingSet] DROP CONSTRAINT [FK_DPBooking];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[PatientSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PatientSet];
GO
IF OBJECT_ID(N'[dbo].[GPSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GPSet];
GO
IF OBJECT_ID(N'[dbo].[BookingSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BookingSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'PatientSet'
CREATE TABLE [dbo].[PatientSet] (
    [PatientId] nvarchar(max)  NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'GPSet'
CREATE TABLE [dbo].[GPSet] (
    [GPId] nvarchar(max)  NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'BookingSet'
CREATE TABLE [dbo].[BookingSet] (
    [BookingId] int IDENTITY(1,1) NOT NULL,
    [GPGPId] nvarchar(max)  NOT NULL,
    [PatientPatientId] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [PatientId] in table 'PatientSet'
ALTER TABLE [dbo].[PatientSet]
ADD CONSTRAINT [PK_PatientSet]
    PRIMARY KEY CLUSTERED ([PatientId] ASC);
GO

-- Creating primary key on [GPId] in table 'GPSet'
ALTER TABLE [dbo].[GPSet]
ADD CONSTRAINT [PK_GPSet]
    PRIMARY KEY CLUSTERED ([GPId] ASC);
GO

-- Creating primary key on [BookingId] in table 'BookingSet'
ALTER TABLE [dbo].[BookingSet]
ADD CONSTRAINT [PK_BookingSet]
    PRIMARY KEY CLUSTERED ([BookingId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [GPGPId] in table 'BookingSet'
ALTER TABLE [dbo].[BookingSet]
ADD CONSTRAINT [FK_GPBooking]
    FOREIGN KEY ([GPGPId])
    REFERENCES [dbo].[GPSet]
        ([GPId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GPBooking'
CREATE INDEX [IX_FK_GPBooking]
ON [dbo].[BookingSet]
    ([GPGPId]);
GO

-- Creating foreign key on [PatientPatientId] in table 'BookingSet'
ALTER TABLE [dbo].[BookingSet]
ADD CONSTRAINT [FK_PatientBooking]
    FOREIGN KEY ([PatientPatientId])
    REFERENCES [dbo].[PatientSet]
        ([PatientId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PatientBooking'
CREATE INDEX [IX_FK_PatientBooking]
ON [dbo].[BookingSet]
    ([PatientPatientId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------