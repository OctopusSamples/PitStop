CREATE TABLE [dbo].[Customer]
(
[CustomerId] [nvarchar] (450) NOT NULL,
[Name] [nvarchar] (max) NULL,
[TelephoneNumber] [nvarchar] (max) NULL
)
GO
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED  ([CustomerId])
GO
