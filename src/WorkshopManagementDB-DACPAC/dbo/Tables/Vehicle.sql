CREATE TABLE [dbo].[Vehicle] (
    [LicenseNumber] NVARCHAR (450) NOT NULL,
    [Brand]         NVARCHAR (MAX) NULL,
    [OwnerId]       NVARCHAR (MAX) NULL,
    [Type]          NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Vehicle] PRIMARY KEY CLUSTERED ([LicenseNumber] ASC)
);

