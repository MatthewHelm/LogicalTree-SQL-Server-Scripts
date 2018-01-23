USE [LogicalTree]
GO


IF (EXISTS (SELECT *
                 FROM INFORMATION_SCHEMA.TABLES
                 WHERE TABLE_NAME = 'tblApplication_Database' and TABLE_SCHEMA = 'dbo' ))
BEGIN
    DROP TABLE [dbo].[tblApplication_Database]
END

/****** Object:  Table [dbo].[tblApplication_Database]    Script Date: 1/22/2018  ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblApplication_Database](
	[application_database_id] [int] IDENTITY(1,1) not null,
	[application_database_name] [nvarchar](64) not null,
	[application_id] [int] not null,
 CONSTRAINT [PK_tblApplication_Database] PRIMARY KEY CLUSTERED 
(
	[application_database_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO