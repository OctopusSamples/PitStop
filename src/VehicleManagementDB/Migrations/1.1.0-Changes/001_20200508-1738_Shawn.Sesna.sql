-- <Migration ID="b5270de2-c3b3-4db8-beab-99e4e127e31e" />
GO

PRINT N'Dropping constraints from [dbo].[__EFMigrationsHistory]'
GO
ALTER TABLE [dbo].[__EFMigrationsHistory] DROP CONSTRAINT [PK___EFMigrationsHistory]
GO
PRINT N'Dropping [dbo].[__EFMigrationsHistory]'
GO
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
