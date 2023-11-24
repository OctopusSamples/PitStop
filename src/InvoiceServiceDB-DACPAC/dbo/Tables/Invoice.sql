CREATE TABLE [dbo].[Invoice] (
    [InvoiceId]     VARCHAR (50)   NOT NULL,
    [InvoiceDate]   DATETIME2 (7)  NOT NULL,
    [CustomerId]    VARCHAR (50)   NOT NULL,
    [Amount]        DECIMAL (5, 2) NOT NULL,
    [Specification] TEXT           NULL,
    [JobIds]        VARCHAR (250)  NULL,
    CONSTRAINT [PK__Invoice__D796AAB5C913736D] PRIMARY KEY CLUSTERED ([InvoiceId] ASC)
);

