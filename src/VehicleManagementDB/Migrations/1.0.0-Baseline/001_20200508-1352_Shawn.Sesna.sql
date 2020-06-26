-- <Migration ID="2167b8d6-0133-4d34-b607-c6a28bcfcafe" />
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
