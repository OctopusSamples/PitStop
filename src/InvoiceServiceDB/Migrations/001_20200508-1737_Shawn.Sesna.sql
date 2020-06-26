-- <Migration ID="e64440ac-ffc1-4953-ac36-977139661cf4" />
GO

PRINT N'Creating [dbo].[Customer]'
GO
CREATE TABLE [dbo].[Customer]
(
[CustomerId] [varchar] (50) NOT NULL,
[Name] [varchar] (50) NOT NULL,
[Address] [varchar] (50) NULL,
[PostalCode] [varchar] (50) NULL,
[City] [varchar] (50) NULL
)
GO
PRINT N'Creating primary key [PK__Customer__A4AE64D8872AA40E] on [dbo].[Customer]'
GO
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [PK__Customer__A4AE64D8872AA40E] PRIMARY KEY CLUSTERED  ([CustomerId])
GO
PRINT N'Creating [dbo].[Invoice]'
GO
CREATE TABLE [dbo].[Invoice]
(
[InvoiceId] [varchar] (50) NOT NULL,
[InvoiceDate] [datetime2] NOT NULL,
[CustomerId] [varchar] (50) NOT NULL,
[Amount] [decimal] (5, 2) NOT NULL,
[Specification] [text] NULL,
[JobIds] [varchar] (250) NULL
)
GO
PRINT N'Creating primary key [PK__Invoice__D796AAB5C913736D] on [dbo].[Invoice]'
GO
ALTER TABLE [dbo].[Invoice] ADD CONSTRAINT [PK__Invoice__D796AAB5C913736D] PRIMARY KEY CLUSTERED  ([InvoiceId])
GO
PRINT N'Creating [dbo].[MaintenanceJob]'
GO
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
PRINT N'Creating primary key [PK__Maintena__056690C295356DD9] on [dbo].[MaintenanceJob]'
GO
ALTER TABLE [dbo].[MaintenanceJob] ADD CONSTRAINT [PK__Maintena__056690C295356DD9] PRIMARY KEY CLUSTERED  ([JobId])
GO
