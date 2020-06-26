CREATE TABLE [dbo].[WorkshopPlanning]
(
[Id] [varchar] (50) NOT NULL,
[CurrentVersion] [int] NOT NULL
)
GO
ALTER TABLE [dbo].[WorkshopPlanning] ADD CONSTRAINT [PK__Workshop__3214EC07310129A6] PRIMARY KEY CLUSTERED  ([Id])
GO
