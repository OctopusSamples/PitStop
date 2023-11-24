CREATE TABLE [dbo].[Customer] (
    [CustomerId]      VARCHAR (50) NOT NULL,
    [Name]            VARCHAR (50) NOT NULL,
    [TelephoneNumber] VARCHAR (50) NULL,
    [EmailAddress]    VARCHAR (50) NULL,
    CONSTRAINT [PK__Customer__A4AE64D8B7E23931] PRIMARY KEY CLUSTERED ([CustomerId] ASC)
);

