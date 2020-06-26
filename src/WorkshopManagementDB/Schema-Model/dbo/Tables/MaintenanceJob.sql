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
ALTER TABLE [dbo].[MaintenanceJob] ADD CONSTRAINT [PK_MaintenanceJob] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_MaintenanceJob_CustomerId] ON [dbo].[MaintenanceJob] ([CustomerId])
GO
CREATE NONCLUSTERED INDEX [IX_MaintenanceJob_VehicleLicenseNumber] ON [dbo].[MaintenanceJob] ([VehicleLicenseNumber])
GO
ALTER TABLE [dbo].[MaintenanceJob] ADD CONSTRAINT [FK_MaintenanceJob_Customer_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[MaintenanceJob] ADD CONSTRAINT [FK_MaintenanceJob_Vehicle_VehicleLicenseNumber] FOREIGN KEY ([VehicleLicenseNumber]) REFERENCES [dbo].[Vehicle] ([LicenseNumber])
GO
