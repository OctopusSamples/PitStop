CREATE TABLE [dbo].[MaintenanceJob]
(
[JobId] [varchar] (50) NOT NULL,
[LicenseNumber] [varchar] (50) NOT NULL,
[CustomerId] [varchar] (50) NOT NULL,
[StartTime] [datetime2] NOT NULL,
[Description] [varchar] (250) NOT NULL
)
GO
ALTER TABLE [dbo].[MaintenanceJob] ADD CONSTRAINT [PK__Maintena__056690C28C02C4F8] PRIMARY KEY CLUSTERED  ([JobId])
GO
