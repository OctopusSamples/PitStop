CREATE TABLE [dbo].[Customer]
(
[CustomerId] [varchar] (50) NOT NULL,
[Name] [varchar] (50) NOT NULL,
[Address] [varchar] (50) NULL,
[PostalCode] [varchar] (50) NULL,
[City] [varchar] (50) NULL
)
GO
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [PK__Customer__A4AE64D8872AA40E] PRIMARY KEY CLUSTERED  ([CustomerId])
GO
