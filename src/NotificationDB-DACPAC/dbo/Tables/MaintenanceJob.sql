CREATE TABLE [dbo].[MaintenanceJob] (
    [JobId]         VARCHAR (50)  NOT NULL,
    [LicenseNumber] VARCHAR (50)  NOT NULL,
    [CustomerId]    VARCHAR (50)  NOT NULL,
    [StartTime]     DATETIME2 (7) NOT NULL,
    [Description]   VARCHAR (250) NOT NULL,
    CONSTRAINT [PK__Maintena__056690C28C02C4F8] PRIMARY KEY CLUSTERED ([JobId] ASC)
);

