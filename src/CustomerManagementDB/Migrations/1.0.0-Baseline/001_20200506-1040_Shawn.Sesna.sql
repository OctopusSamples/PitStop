-- <Migration ID="c22b88e0-33d5-4895-ac5c-cf799bceae8f" />
GO

PRINT N'Creating [dbo].[Customer]'
GO
CREATE TABLE [dbo].[Customer]
(
[CustomerId] [nvarchar] (450) NOT NULL,
[Address] [nvarchar] (max) NULL,
[City] [nvarchar] (max) NULL,
[EmailAddress] [nvarchar] (max) NULL,
[Name] [nvarchar] (max) NULL,
[PostalCode] [nvarchar] (max) NULL,
[TelephoneNumber] [nvarchar] (max) NULL
)
GO
PRINT N'Creating primary key [PK_Customer] on [dbo].[Customer]'
GO
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED  ([CustomerId])
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
