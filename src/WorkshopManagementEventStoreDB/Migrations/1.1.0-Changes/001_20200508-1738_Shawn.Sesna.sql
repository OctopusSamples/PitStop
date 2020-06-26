-- <Migration ID="87d43bd8-cd00-4816-8609-371521c54865" />
GO

PRINT N'Dropping foreign keys from [dbo].[WorkshopPlanningEvent]'
GO
ALTER TABLE [dbo].[WorkshopPlanningEvent] DROP CONSTRAINT [FK__WorkshopPlan__Id__398D8EEE]
GO
PRINT N'Dropping constraints from [dbo].[WorkshopPlanningEvent]'
GO
ALTER TABLE [dbo].[WorkshopPlanningEvent] DROP CONSTRAINT [PK__Workshop__72E1AC14FC3A36AF]
GO
PRINT N'Dropping constraints from [dbo].[WorkshopPlanning]'
GO
ALTER TABLE [dbo].[WorkshopPlanning] DROP CONSTRAINT [PK__Workshop__3214EC070E87C5C9]
GO
PRINT N'Creating primary key [PK__Workshop__72E1AC14FFF665F9] on [dbo].[WorkshopPlanningEvent]'
GO
ALTER TABLE [dbo].[WorkshopPlanningEvent] ADD CONSTRAINT [PK__Workshop__72E1AC14FFF665F9] PRIMARY KEY CLUSTERED  ([Id], [Version])
GO
PRINT N'Creating primary key [PK__Workshop__3214EC07310129A6] on [dbo].[WorkshopPlanning]'
GO
ALTER TABLE [dbo].[WorkshopPlanning] ADD CONSTRAINT [PK__Workshop__3214EC07310129A6] PRIMARY KEY CLUSTERED  ([Id])
GO
PRINT N'Adding foreign keys to [dbo].[WorkshopPlanningEvent]'
GO
ALTER TABLE [dbo].[WorkshopPlanningEvent] ADD CONSTRAINT [FK__WorkshopPlan__Id__398D8EEE] FOREIGN KEY ([Id]) REFERENCES [dbo].[WorkshopPlanning] ([Id])
GO
