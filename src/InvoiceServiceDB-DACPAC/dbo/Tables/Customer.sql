CREATE TABLE [dbo].[Customer] (
    [CustomerId] VARCHAR (50) NOT NULL,
    [Name]       VARCHAR (50) NOT NULL,
    [Address]    VARCHAR (50) NULL,
    [PostalCode] VARCHAR (50) NULL,
    [City]       VARCHAR (50) NULL,
    CONSTRAINT [PK__Customer__A4AE64D8872AA40E] PRIMARY KEY CLUSTERED ([CustomerId] ASC)
);

