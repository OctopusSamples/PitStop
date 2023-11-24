CREATE TABLE [dbo].[MaintenanceJob] (
    [Id]                   UNIQUEIDENTIFIER NOT NULL,
    [ActualEndTime]        DATETIME2 (7)    NULL,
    [ActualStartTime]      DATETIME2 (7)    NULL,
    [CustomerId]           NVARCHAR (450)   NULL,
    [Description]          NVARCHAR (MAX)   NULL,
    [EndTime]              DATETIME2 (7)    NOT NULL,
    [Notes]                NVARCHAR (MAX)   NULL,
    [StartTime]            DATETIME2 (7)    NOT NULL,
    [VehicleLicenseNumber] NVARCHAR (450)   NULL,
    [WorkshopPlanningDate] DATETIME2 (7)    NOT NULL,
    CONSTRAINT [PK_MaintenanceJob] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MaintenanceJob_Customer_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([CustomerId]),
    CONSTRAINT [FK_MaintenanceJob_Vehicle_VehicleLicenseNumber] FOREIGN KEY ([VehicleLicenseNumber]) REFERENCES [dbo].[Vehicle] ([LicenseNumber])
);


GO
CREATE NONCLUSTERED INDEX [IX_MaintenanceJob_CustomerId]
    ON [dbo].[MaintenanceJob]([CustomerId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_MaintenanceJob_VehicleLicenseNumber]
    ON [dbo].[MaintenanceJob]([VehicleLicenseNumber] ASC);

