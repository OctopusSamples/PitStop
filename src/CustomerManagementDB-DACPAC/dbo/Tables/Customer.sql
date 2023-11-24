CREATE TABLE [dbo].[Customer] (
    [CustomerId]      NVARCHAR (450) NOT NULL,
    [Address]         NVARCHAR (MAX) NULL,
    [City]            NVARCHAR (MAX) NULL,
    [EmailAddress]    NVARCHAR (MAX) NULL,
    [Name]            NVARCHAR (MAX) NULL,
    [PostalCode]      NVARCHAR (MAX) NULL,
    [TelephoneNumber] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED ([CustomerId] ASC)
);

