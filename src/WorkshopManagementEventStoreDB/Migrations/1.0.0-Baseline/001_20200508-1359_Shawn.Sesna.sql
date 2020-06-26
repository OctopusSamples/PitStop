-- <Migration ID="784ee76d-ec4e-458d-85c7-8a6cda24d640" />
GO

PRINT N'Creating [dbo].[WorkshopPlanning]'
GO
CREATE TABLE [dbo].[WorkshopPlanning]
(
[Id] [varchar] (50) NOT NULL,
[CurrentVersion] [int] NOT NULL
)
GO
PRINT N'Creating primary key [PK__Workshop__3214EC070E87C5C9] on [dbo].[WorkshopPlanning]'
GO
ALTER TABLE [dbo].[WorkshopPlanning] ADD CONSTRAINT [PK__Workshop__3214EC070E87C5C9] PRIMARY KEY CLUSTERED  ([Id])
GO
PRINT N'Creating [dbo].[WorkshopPlanningEvent]'
GO
CREATE TABLE [dbo].[WorkshopPlanningEvent]
(
[Id] [varchar] (50) NOT NULL,
[Version] [int] NOT NULL,
[Timestamp] [datetime2] NOT NULL,
[MessageType] [varchar] (75) NOT NULL,
[EventData] [text] NULL
)
GO
PRINT N'Creating primary key [PK__Workshop__72E1AC14FC3A36AF] on [dbo].[WorkshopPlanningEvent]'
GO
ALTER TABLE [dbo].[WorkshopPlanningEvent] ADD CONSTRAINT [PK__Workshop__72E1AC14FC3A36AF] PRIMARY KEY CLUSTERED  ([Id], [Version])
GO
PRINT N'Adding foreign keys to [dbo].[WorkshopPlanningEvent]'
GO
ALTER TABLE [dbo].[WorkshopPlanningEvent] ADD CONSTRAINT [FK__WorkshopPlan__Id__398D8EEE] FOREIGN KEY ([Id]) REFERENCES [dbo].[WorkshopPlanning] ([Id])
GO
