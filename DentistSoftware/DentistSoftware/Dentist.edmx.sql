
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/20/2014 12:30:04
-- Generated from EDMX file: E:\MVC\projects\DentistSoftware\DentistSoftware\DentistSoftware\Dentist.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Dentist];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_suppcontact_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[suppcontact] DROP CONSTRAINT [FK_suppcontact_ibfk_1];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[ActivePatient]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ActivePatient];
GO
IF OBJECT_ID(N'[dbo].[Appointments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Appointments];
GO
IF OBJECT_ID(N'[dbo].[Clinics]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Clinics];
GO
IF OBJECT_ID(N'[dbo].[CustomMaterial]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CustomMaterial];
GO
IF OBJECT_ID(N'[dbo].[Doctors]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Doctors];
GO
IF OBJECT_ID(N'[dbo].[ImageCategory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ImageCategory];
GO
IF OBJECT_ID(N'[dbo].[Images]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Images];
GO
IF OBJECT_ID(N'[dbo].[Material]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Material];
GO
IF OBJECT_ID(N'[dbo].[MaterialTreatment]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MaterialTreatment];
GO
IF OBJECT_ID(N'[dbo].[opperation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[opperation];
GO
IF OBJECT_ID(N'[dbo].[Patient]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Patient];
GO
IF OBJECT_ID(N'[dbo].[PatientHistory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PatientHistory];
GO
IF OBJECT_ID(N'[dbo].[PatientPayment]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PatientPayment];
GO
IF OBJECT_ID(N'[dbo].[PaymentReceipt]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PaymentReceipt];
GO
IF OBJECT_ID(N'[dbo].[Prescriptions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Prescriptions];
GO
IF OBJECT_ID(N'[dbo].[RecivingItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RecivingItems];
GO
IF OBJECT_ID(N'[dbo].[Roles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Roles];
GO
IF OBJECT_ID(N'[dbo].[Secretary]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Secretary];
GO
IF OBJECT_ID(N'[dbo].[Storages]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Storages];
GO
IF OBJECT_ID(N'[dbo].[suppcontact]', 'U') IS NOT NULL
    DROP TABLE [dbo].[suppcontact];
GO
IF OBJECT_ID(N'[dbo].[suppliers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[suppliers];
GO
IF OBJECT_ID(N'[dbo].[Treatment]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Treatment];
GO
IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[Warehouse]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Warehouse];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ActivePatients'
CREATE TABLE [dbo].[ActivePatients] (
    [PatientID] int  NOT NULL,
    [DoctorID] int  NOT NULL,
    [ClinicID] int  NOT NULL
);
GO

-- Creating table 'Appointments'
CREATE TABLE [dbo].[Appointments] (
    [AppointmentID] int IDENTITY(1,1) NOT NULL,
    [Date] datetime  NULL,
    [Time] time  NULL,
    [DoctorID] int  NULL,
    [PatientID] int  NULL,
    [Reason] nvarchar(500)  NULL,
    [Status] nvarchar(50)  NULL
);
GO

-- Creating table 'Clinics'
CREATE TABLE [dbo].[Clinics] (
    [ClinicID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NULL,
    [Address] nvarchar(50)  NULL,
    [Phone] nvarchar(50)  NULL,
    [Mobile] nvarchar(50)  NULL
);
GO

-- Creating table 'CustomMaterials'
CREATE TABLE [dbo].[CustomMaterials] (
    [CustomMaterialID] int IDENTITY(1,1) NOT NULL,
    [RequestDate] datetime  NULL,
    [ReciveDate] datetime  NULL,
    [PatientID] int  NULL,
    [Cost] decimal(18,4)  NULL,
    [DoctorID] int  NULL,
    [Description] nvarchar(200)  NULL,
    [Name] nvarchar(50)  NULL
);
GO

-- Creating table 'Doctors'
CREATE TABLE [dbo].[Doctors] (
    [DoctorID] int IDENTITY(1,1) NOT NULL,
    [UserID] int  NULL,
    [Name] nvarchar(100)  NULL,
    [Gender] nvarchar(50)  NULL,
    [Age] int  NULL,
    [BrithDate] datetime  NULL,
    [Phone] nvarchar(50)  NULL,
    [Mobile] nvarchar(50)  NULL,
    [Address] nvarchar(100)  NULL,
    [E_mail] nvarchar(100)  NULL,
    [Active] bit  NULL
);
GO

-- Creating table 'ImageCategories'
CREATE TABLE [dbo].[ImageCategories] (
    [ImageCategoryID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NULL,
    [Price] decimal(18,4)  NULL
);
GO

-- Creating table 'Images'
CREATE TABLE [dbo].[Images] (
    [ImageID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NULL,
    [Notice] nvarchar(50)  NULL,
    [appointmentID] int  NULL,
    [ImageCategoryID] int  NULL,
    [PatientID] int  NULL,
    [FullImageURL] nvarchar(500)  NULL,
    [MediumImageURL] nvarchar(500)  NULL,
    [MinImageURL] nvarchar(500)  NULL,
    [LocalImageURL] nvarchar(500)  NULL
);
GO

-- Creating table 'MaterialTreatments'
CREATE TABLE [dbo].[MaterialTreatments] (
    [TeratmentID] int  NOT NULL,
    [MaterialID] int  NOT NULL,
    [Amonut] float  NULL,
    [MaterialCost] decimal(18,4)  NULL
);
GO

-- Creating table 'opperations'
CREATE TABLE [dbo].[opperations] (
    [OpperationID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NULL,
    [Color] nvarchar(50)  NULL,
    [Price] decimal(18,4)  NULL,
    [MaterialID] int  NULL
);
GO

-- Creating table 'Patients'
CREATE TABLE [dbo].[Patients] (
    [PatientID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(100)  NULL,
    [Address] nvarchar(500)  NULL,
    [Phone] nvarchar(50)  NULL,
    [Mobile] nvarchar(50)  NULL,
    [Age] int  NULL,
    [BrithDate] datetime  NULL,
    [gender] nvarchar(50)  NULL,
    [E_mail] nvarchar(50)  NULL,
    [Notice] nvarchar(50)  NULL
);
GO

-- Creating table 'PatientHistories'
CREATE TABLE [dbo].[PatientHistories] (
    [HistoryID] int  NOT NULL,
    [PatientID] int  NULL,
    [Name] nvarchar(50)  NULL,
    [Descripation] nvarchar(500)  NULL
);
GO

-- Creating table 'PatientPayments'
CREATE TABLE [dbo].[PatientPayments] (
    [PatientPaymentID] int IDENTITY(1,1) NOT NULL,
    [PatientID] int  NULL,
    [TotalPrice] decimal(18,4)  NULL,
    [PaidAmount] decimal(18,4)  NULL,
    [ClinicID] int  NULL
);
GO

-- Creating table 'PaymentReceipts'
CREATE TABLE [dbo].[PaymentReceipts] (
    [ReceiptID] int IDENTITY(1,1) NOT NULL,
    [Date] datetime  NULL,
    [Amount] decimal(18,4)  NULL,
    [PatientPaymentID] int  NULL,
    [UserID] nvarchar(50)  NULL,
    [ClinicID] int  NULL
);
GO

-- Creating table 'Prescriptions'
CREATE TABLE [dbo].[Prescriptions] (
    [PrescriptionID] int IDENTITY(1,1) NOT NULL,
    [Notice] nvarchar(500)  NULL,
    [MedicineID] int  NULL,
    [PatientID] int  NULL,
    [AppointmentID] int  NULL
);
GO

-- Creating table 'RecivingItems'
CREATE TABLE [dbo].[RecivingItems] (
    [ReciveID] int IDENTITY(1,1) NOT NULL,
    [ItemID] int  NULL,
    [SuppID] int  NULL,
    [Amount] int  NULL,
    [ExpireDate] datetime  NULL,
    [ReciveDate] datetime  NULL,
    [StorageID] int  NULL,
    [Recived] bit  NULL
);
GO

-- Creating table 'Roles'
CREATE TABLE [dbo].[Roles] (
    [RoleID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NULL,
    [Note] nvarchar(50)  NULL
);
GO

-- Creating table 'Secretaries'
CREATE TABLE [dbo].[Secretaries] (
    [SecretaryID] int IDENTITY(1,1) NOT NULL,
    [UserID] int  NULL,
    [Name] nvarchar(50)  NULL,
    [Gender] nvarchar(50)  NULL,
    [BrithDate] datetime  NULL,
    [Phone] nvarchar(50)  NULL,
    [Mobile] nvarchar(50)  NULL,
    [Address] nvarchar(50)  NULL,
    [E_mail] nvarchar(50)  NULL,
    [Active] bit  NULL
);
GO

-- Creating table 'Storages'
CREATE TABLE [dbo].[Storages] (
    [StorageID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NULL,
    [Address] nvarchar(50)  NULL,
    [Phone] nvarchar(50)  NULL,
    [Mobile] nvarchar(50)  NULL,
    [ClinicID] int  NULL,
    [Active] bit  NULL
);
GO

-- Creating table 'suppcontacts'
CREATE TABLE [dbo].[suppcontacts] (
    [Id] int  NOT NULL,
    [SuppId] int  NULL,
    [ContactName] nvarchar(70)  NULL,
    [ContactTitel] nvarchar(30)  NULL,
    [ContactDep] nvarchar(30)  NULL,
    [City] nvarchar(30)  NULL,
    [PhoneExt] nvarchar(10)  NULL,
    [Phone] nvarchar(20)  NULL,
    [Mobile] nvarchar(20)  NULL,
    [EMail] nvarchar(100)  NULL
);
GO

-- Creating table 'suppliers'
CREATE TABLE [dbo].[suppliers] (
    [SuppID] int IDENTITY(1,1) NOT NULL,
    [CompanyName] nvarchar(50)  NULL,
    [Address] nvarchar(70)  NULL,
    [City] nvarchar(30)  NULL,
    [Countery] nvarchar(30)  NULL,
    [Phone1] nvarchar(20)  NULL,
    [Phone2] nvarchar(20)  NULL,
    [Fax] nvarchar(20)  NULL,
    [WebSite] nvarchar(70)  NULL,
    [TaxFileNo] nvarchar(50)  NULL,
    [TaxCommision] nvarchar(50)  NULL,
    [TaxRegNo] nvarchar(50)  NULL,
    [Notes] nvarchar(200)  NULL,
    [openbalance] decimal(19,2)  NULL,
    [Type] nvarchar(50)  NULL
);
GO

-- Creating table 'Treatments'
CREATE TABLE [dbo].[Treatments] (
    [TeratmentID] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(500)  NULL,
    [AppointmentID] int  NULL,
    [DoctorID] int  NULL,
    [PatientID] int  NULL,
    [OpperationID] int  NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [UserID] int IDENTITY(1,1) NOT NULL,
    [UserName] nvarchar(50)  NULL,
    [Password] nvarchar(50)  NULL,
    [RoleID] int  NULL,
    [ClienicID] int  NULL
);
GO

-- Creating table 'Warehouses'
CREATE TABLE [dbo].[Warehouses] (
    [WarehouseID] int IDENTITY(1,1) NOT NULL,
    [StorageID] int  NULL,
    [ItemID] int  NULL,
    [Available] int  NULL,
    [Reserved] int  NULL,
    [Total] int  NULL,
    [CostPrice] decimal(18,4)  NULL
);
GO

-- Creating table 'Materials'
CREATE TABLE [dbo].[Materials] (
    [ItemID] int IDENTITY(1,1) NOT NULL,
    [ItemName] nvarchar(700)  NOT NULL,
    [PartNumber] nvarchar(50)  NULL,
    [CatID] int  NULL,
    [ProdCompany] int  NULL,
    [ScaleType] nvarchar(30)  NULL,
    [ReOrder] int  NULL,
    [Note] nvarchar(200)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [PatientID], [DoctorID], [ClinicID] in table 'ActivePatients'
ALTER TABLE [dbo].[ActivePatients]
ADD CONSTRAINT [PK_ActivePatients]
    PRIMARY KEY CLUSTERED ([PatientID], [DoctorID], [ClinicID] ASC);
GO

-- Creating primary key on [AppointmentID] in table 'Appointments'
ALTER TABLE [dbo].[Appointments]
ADD CONSTRAINT [PK_Appointments]
    PRIMARY KEY CLUSTERED ([AppointmentID] ASC);
GO

-- Creating primary key on [ClinicID] in table 'Clinics'
ALTER TABLE [dbo].[Clinics]
ADD CONSTRAINT [PK_Clinics]
    PRIMARY KEY CLUSTERED ([ClinicID] ASC);
GO

-- Creating primary key on [CustomMaterialID] in table 'CustomMaterials'
ALTER TABLE [dbo].[CustomMaterials]
ADD CONSTRAINT [PK_CustomMaterials]
    PRIMARY KEY CLUSTERED ([CustomMaterialID] ASC);
GO

-- Creating primary key on [DoctorID] in table 'Doctors'
ALTER TABLE [dbo].[Doctors]
ADD CONSTRAINT [PK_Doctors]
    PRIMARY KEY CLUSTERED ([DoctorID] ASC);
GO

-- Creating primary key on [ImageCategoryID] in table 'ImageCategories'
ALTER TABLE [dbo].[ImageCategories]
ADD CONSTRAINT [PK_ImageCategories]
    PRIMARY KEY CLUSTERED ([ImageCategoryID] ASC);
GO

-- Creating primary key on [ImageID] in table 'Images'
ALTER TABLE [dbo].[Images]
ADD CONSTRAINT [PK_Images]
    PRIMARY KEY CLUSTERED ([ImageID] ASC);
GO

-- Creating primary key on [TeratmentID], [MaterialID] in table 'MaterialTreatments'
ALTER TABLE [dbo].[MaterialTreatments]
ADD CONSTRAINT [PK_MaterialTreatments]
    PRIMARY KEY CLUSTERED ([TeratmentID], [MaterialID] ASC);
GO

-- Creating primary key on [OpperationID] in table 'opperations'
ALTER TABLE [dbo].[opperations]
ADD CONSTRAINT [PK_opperations]
    PRIMARY KEY CLUSTERED ([OpperationID] ASC);
GO

-- Creating primary key on [PatientID] in table 'Patients'
ALTER TABLE [dbo].[Patients]
ADD CONSTRAINT [PK_Patients]
    PRIMARY KEY CLUSTERED ([PatientID] ASC);
GO

-- Creating primary key on [HistoryID] in table 'PatientHistories'
ALTER TABLE [dbo].[PatientHistories]
ADD CONSTRAINT [PK_PatientHistories]
    PRIMARY KEY CLUSTERED ([HistoryID] ASC);
GO

-- Creating primary key on [PatientPaymentID] in table 'PatientPayments'
ALTER TABLE [dbo].[PatientPayments]
ADD CONSTRAINT [PK_PatientPayments]
    PRIMARY KEY CLUSTERED ([PatientPaymentID] ASC);
GO

-- Creating primary key on [ReceiptID] in table 'PaymentReceipts'
ALTER TABLE [dbo].[PaymentReceipts]
ADD CONSTRAINT [PK_PaymentReceipts]
    PRIMARY KEY CLUSTERED ([ReceiptID] ASC);
GO

-- Creating primary key on [PrescriptionID] in table 'Prescriptions'
ALTER TABLE [dbo].[Prescriptions]
ADD CONSTRAINT [PK_Prescriptions]
    PRIMARY KEY CLUSTERED ([PrescriptionID] ASC);
GO

-- Creating primary key on [ReciveID] in table 'RecivingItems'
ALTER TABLE [dbo].[RecivingItems]
ADD CONSTRAINT [PK_RecivingItems]
    PRIMARY KEY CLUSTERED ([ReciveID] ASC);
GO

-- Creating primary key on [RoleID] in table 'Roles'
ALTER TABLE [dbo].[Roles]
ADD CONSTRAINT [PK_Roles]
    PRIMARY KEY CLUSTERED ([RoleID] ASC);
GO

-- Creating primary key on [SecretaryID] in table 'Secretaries'
ALTER TABLE [dbo].[Secretaries]
ADD CONSTRAINT [PK_Secretaries]
    PRIMARY KEY CLUSTERED ([SecretaryID] ASC);
GO

-- Creating primary key on [StorageID] in table 'Storages'
ALTER TABLE [dbo].[Storages]
ADD CONSTRAINT [PK_Storages]
    PRIMARY KEY CLUSTERED ([StorageID] ASC);
GO

-- Creating primary key on [Id] in table 'suppcontacts'
ALTER TABLE [dbo].[suppcontacts]
ADD CONSTRAINT [PK_suppcontacts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [SuppID] in table 'suppliers'
ALTER TABLE [dbo].[suppliers]
ADD CONSTRAINT [PK_suppliers]
    PRIMARY KEY CLUSTERED ([SuppID] ASC);
GO

-- Creating primary key on [TeratmentID] in table 'Treatments'
ALTER TABLE [dbo].[Treatments]
ADD CONSTRAINT [PK_Treatments]
    PRIMARY KEY CLUSTERED ([TeratmentID] ASC);
GO

-- Creating primary key on [UserID] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([UserID] ASC);
GO

-- Creating primary key on [WarehouseID] in table 'Warehouses'
ALTER TABLE [dbo].[Warehouses]
ADD CONSTRAINT [PK_Warehouses]
    PRIMARY KEY CLUSTERED ([WarehouseID] ASC);
GO

-- Creating primary key on [ItemID] in table 'Materials'
ALTER TABLE [dbo].[Materials]
ADD CONSTRAINT [PK_Materials]
    PRIMARY KEY CLUSTERED ([ItemID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [SuppId] in table 'suppcontacts'
ALTER TABLE [dbo].[suppcontacts]
ADD CONSTRAINT [FK_suppcontact_ibfk_1]
    FOREIGN KEY ([SuppId])
    REFERENCES [dbo].[suppliers]
        ([SuppID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_suppcontact_ibfk_1'
CREATE INDEX [IX_FK_suppcontact_ibfk_1]
ON [dbo].[suppcontacts]
    ([SuppId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------