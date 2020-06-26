-- <Migration ID="fa0a3952-a651-4020-ab1c-a1b496568ef9" />
GO

PRINT N'Creating [dbo].[Customer]'
GO
CREATE TABLE [dbo].[Customer]
(
[CustomerId] [nvarchar] (450) NOT NULL,
[Name] [nvarchar] (max) NULL,
[TelephoneNumber] [nvarchar] (max) NULL
)
GO
PRINT N'Creating primary key [PK_Customer] on [dbo].[Customer]'
GO
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED  ([CustomerId])
GO
PRINT N'Creating [dbo].[MaintenanceJob]'
GO
CREATE TABLE [dbo].[MaintenanceJob]
(
[Id] [uniqueidentifier] NOT NULL,
[ActualEndTime] [datetime2] NULL,
[ActualStartTime] [datetime2] NULL,
[CustomerId] [nvarchar] (450) NULL,
[Description] [nvarchar] (max) NULL,
[EndTime] [datetime2] NOT NULL,
[Notes] [nvarchar] (max) NULL,
[StartTime] [datetime2] NOT NULL,
[VehicleLicenseNumber] [nvarchar] (450) NULL,
[WorkshopPlanningDate] [datetime2] NOT NULL
)
GO
PRINT N'Creating primary key [PK_MaintenanceJob] on [dbo].[MaintenanceJob]'
GO
ALTER TABLE [dbo].[MaintenanceJob] ADD CONSTRAINT [PK_MaintenanceJob] PRIMARY KEY CLUSTERED  ([Id])
GO
PRINT N'Creating index [IX_MaintenanceJob_CustomerId] on [dbo].[MaintenanceJob]'
GO
CREATE NONCLUSTERED INDEX [IX_MaintenanceJob_CustomerId] ON [dbo].[MaintenanceJob] ([CustomerId])
GO
PRINT N'Creating index [IX_MaintenanceJob_VehicleLicenseNumber] on [dbo].[MaintenanceJob]'
GO
CREATE NONCLUSTERED INDEX [IX_MaintenanceJob_VehicleLicenseNumber] ON [dbo].[MaintenanceJob] ([VehicleLicenseNumber])
GO
PRINT N'Creating [dbo].[Vehicle]'
GO
CREATE TABLE [dbo].[Vehicle]
(
[LicenseNumber] [nvarchar] (450) NOT NULL,
[Brand] [nvarchar] (max) NULL,
[OwnerId] [nvarchar] (max) NULL,
[Type] [nvarchar] (max) NULL
)
GO
PRINT N'Creating primary key [PK_Vehicle] on [dbo].[Vehicle]'
GO
ALTER TABLE [dbo].[Vehicle] ADD CONSTRAINT [PK_Vehicle] PRIMARY KEY CLUSTERED  ([LicenseNumber])
GO
PRINT N'Creating [dbo].[__EFMigrationsHistory]'
GO
CREATE TABLE [dbo].[__EFMigrationsHistory]
(
[MigrationId] [nvarchar] (150) NOT NULL,
[ProductVersion] [nvarchar] (32) NOT NULL
)
GO
PRINT N'Creating primary key [PK___EFMigrationsHistory] on [dbo].[__EFMigrationsHistory]'
GO
ALTER TABLE [dbo].[__EFMigrationsHistory] ADD CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED  ([MigrationId])
GO
PRINT N'Adding foreign keys to [dbo].[MaintenanceJob]'
GO
ALTER TABLE [dbo].[MaintenanceJob] ADD CONSTRAINT [FK_MaintenanceJob_Customer_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[MaintenanceJob] ADD CONSTRAINT [FK_MaintenanceJob_Vehicle_VehicleLicenseNumber] FOREIGN KEY ([VehicleLicenseNumber]) REFERENCES [dbo].[Vehicle] ([LicenseNumber])
GO
