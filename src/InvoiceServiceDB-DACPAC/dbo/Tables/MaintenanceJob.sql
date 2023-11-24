CREATE TABLE [dbo].[MaintenanceJob] (
    [JobId]         VARCHAR (50)  NOT NULL,
    [LicenseNumber] VARCHAR (50)  NOT NULL,
    [CustomerId]    VARCHAR (50)  NOT NULL,
    [Description]   VARCHAR (250) NOT NULL,
    [StartTime]     DATETIME2 (7) NULL,
    [EndTime]       DATETIME2 (7) NULL,
    [Finished]      BIT           NOT NULL,
    [InvoiceSent]   BIT           NOT NULL,
    CONSTRAINT [PK__Maintena__056690C295356DD9] PRIMARY KEY CLUSTERED ([JobId] ASC)
);

