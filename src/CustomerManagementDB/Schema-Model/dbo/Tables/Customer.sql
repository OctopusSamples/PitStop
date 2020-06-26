CREATE TABLE [dbo].[Customer]
(
[CustomerId] [nvarchar] (450) NOT NULL,
[Address] [nvarchar] (max) NULL,
[City] [nvarchar] (max) NULL,
[EmailAddress] [nvarchar] (max) NULL,
[Name] [nvarchar] (max) NULL,
[PostalCode] [nvarchar] (max) NULL,
[TelephoneNumber] [nvarchar] (max) NULL
)
GO
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED  ([CustomerId])
GO
