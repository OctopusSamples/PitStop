CREATE TABLE [dbo].[Vehicle]
(
[LicenseNumber] [nvarchar] (450) NOT NULL,
[Brand] [nvarchar] (max) NULL,
[OwnerId] [nvarchar] (max) NULL,
[Type] [nvarchar] (max) NULL
)
GO
ALTER TABLE [dbo].[Vehicle] ADD CONSTRAINT [PK_Vehicle] PRIMARY KEY CLUSTERED  ([LicenseNumber])
GO
