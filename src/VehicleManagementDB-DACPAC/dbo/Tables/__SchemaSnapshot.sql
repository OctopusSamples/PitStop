CREATE TABLE [dbo].[__SchemaSnapshot] (
    [Snapshot]       VARBINARY (MAX) NULL,
    [LastUpdateDate] DATETIME2 (7)   CONSTRAINT [__SchemaSnapshotDateDefault] DEFAULT (sysdatetime()) NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This table is used by SQL Change Automation projects to store a snapshot of the schema at the time of the last deployment. Please do not alter or remove this table from the database.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'__SchemaSnapshot';

