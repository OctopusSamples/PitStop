CREATE TABLE [dbo].[Invoice]
(
[InvoiceId] [varchar] (50) NOT NULL,
[InvoiceDate] [datetime2] NOT NULL,
[CustomerId] [varchar] (50) NOT NULL,
[Amount] [decimal] (5, 2) NOT NULL,
[Specification] [text] NULL,
[JobIds] [varchar] (250) NULL
)
GO
ALTER TABLE [dbo].[Invoice] ADD CONSTRAINT [PK__Invoice__D796AAB5C913736D] PRIMARY KEY CLUSTERED  ([InvoiceId])
GO
