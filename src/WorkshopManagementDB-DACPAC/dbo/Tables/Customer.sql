CREATE TABLE [dbo].[Customer] (
    [CustomerId]      NVARCHAR (450) NOT NULL,
    [Name]            NVARCHAR (MAX) NULL,
    [TelephoneNumber] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED ([CustomerId] ASC)
);

