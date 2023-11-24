CREATE TABLE [dbo].[WorkshopPlanningEvent] (
    [Id]          VARCHAR (50)  NOT NULL,
    [Version]     INT           NOT NULL,
    [Timestamp]   DATETIME2 (7) NOT NULL,
    [MessageType] VARCHAR (75)  NOT NULL,
    [EventData]   TEXT          NULL,
    CONSTRAINT [PK__Workshop__72E1AC14FFF665F9] PRIMARY KEY CLUSTERED ([Id] ASC, [Version] ASC),
    CONSTRAINT [FK__WorkshopPlan__Id__398D8EEE] FOREIGN KEY ([Id]) REFERENCES [dbo].[WorkshopPlanning] ([Id])
);

