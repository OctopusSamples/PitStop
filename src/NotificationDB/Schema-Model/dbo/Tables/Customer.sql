CREATE TABLE [dbo].[Customer]
(
[CustomerId] [varchar] (50) NOT NULL,
[Name] [varchar] (50) NOT NULL,
[TelephoneNumber] [varchar] (50) NULL,
[EmailAddress] [varchar] (50) NULL
)
GO
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [PK__Customer__A4AE64D8B7E23931] PRIMARY KEY CLUSTERED  ([CustomerId])
GO
