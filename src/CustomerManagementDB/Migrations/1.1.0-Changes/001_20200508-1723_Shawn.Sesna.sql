-- <Migration ID="c8c88e6b-01dc-4502-8760-01bd291dd889" />
GO

PRINT N'Dropping constraints from [dbo].[__EFMigrationsHistory]'
GO
ALTER TABLE [dbo].[__EFMigrationsHistory] DROP CONSTRAINT [PK___EFMigrationsHistory]
GO
PRINT N'Dropping [dbo].[__EFMigrationsHistory]'
GO
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
