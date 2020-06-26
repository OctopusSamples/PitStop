CREATE TABLE [dbo].[WorkshopPlanningEvent]
(
[Id] [varchar] (50) NOT NULL,
[Version] [int] NOT NULL,
[Timestamp] [datetime2] NOT NULL,
[MessageType] [varchar] (75) NOT NULL,
[EventData] [text] NULL
)
GO
ALTER TABLE [dbo].[WorkshopPlanningEvent] ADD CONSTRAINT [PK__Workshop__72E1AC14FFF665F9] PRIMARY KEY CLUSTERED  ([Id], [Version])
GO
ALTER TABLE [dbo].[WorkshopPlanningEvent] ADD CONSTRAINT [FK__WorkshopPlan__Id__398D8EEE] FOREIGN KEY ([Id]) REFERENCES [dbo].[WorkshopPlanning] ([Id])
GO
