-- <Migration ID="5be057a0-83c3-463a-9923-b9daea57f30c" />
GO

PRINT N'Creating [dbo].[Customer]'
GO
CREATE TABLE [dbo].[Customer]
(
[CustomerId] [varchar] (50) NOT NULL,
[Name] [varchar] (50) NOT NULL,
[TelephoneNumber] [varchar] (50) NULL,
[EmailAddress] [varchar] (50) NULL
)
GO
PRINT N'Creating primary key [PK__Customer__A4AE64D8B7E23931] on [dbo].[Customer]'
GO
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [PK__Customer__A4AE64D8B7E23931] PRIMARY KEY CLUSTERED  ([CustomerId])
GO
PRINT N'Creating [dbo].[MaintenanceJob]'
GO
CREATE TABLE [dbo].[MaintenanceJob]
(
[JobId] [varchar] (50) NOT NULL,
[LicenseNumber] [varchar] (50) NOT NULL,
[CustomerId] [varchar] (50) NOT NULL,
[StartTime] [datetime2] NOT NULL,
[Description] [varchar] (250) NOT NULL
)
GO
PRINT N'Creating primary key [PK__Maintena__056690C28C02C4F8] on [dbo].[MaintenanceJob]'
GO
ALTER TABLE [dbo].[MaintenanceJob] ADD CONSTRAINT [PK__Maintena__056690C28C02C4F8] PRIMARY KEY CLUSTERED  ([JobId])
GO
