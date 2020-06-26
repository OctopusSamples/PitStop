-- <Migration ID="f9e46236-1adb-4270-9af4-d1d347e21d05" />
GO

PRINT N'Dropping constraints from [dbo].[__EFMigrationsHistory]'
GO
ALTER TABLE [dbo].[__EFMigrationsHistory] DROP CONSTRAINT [PK___EFMigrationsHistory]
GO
PRINT N'Dropping [dbo].[__EFMigrationsHistory]'
GO
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
