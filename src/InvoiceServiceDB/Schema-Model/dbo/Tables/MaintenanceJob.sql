CREATE TABLE [dbo].[MaintenanceJob]
(
[JobId] [varchar] (50) NOT NULL,
[LicenseNumber] [varchar] (50) NOT NULL,
[CustomerId] [varchar] (50) NOT NULL,
[Description] [varchar] (250) NOT NULL,
[StartTime] [datetime2] NULL,
[EndTime] [datetime2] NULL,
[Finished] [bit] NOT NULL,
[InvoiceSent] [bit] NOT NULL
)
GO
ALTER TABLE [dbo].[MaintenanceJob] ADD CONSTRAINT [PK__Maintena__056690C295356DD9] PRIMARY KEY CLUSTERED  ([JobId])
GO
