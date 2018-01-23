USE [LogicalTree]
GO


IF (EXISTS (SELECT *
                 FROM INFORMATION_SCHEMA.TABLES
                 WHERE TABLE_NAME = 'tblDatabase_Definition' and TABLE_SCHEMA = 'dbo' ))
BEGIN
    DROP TABLE [dbo].[tblDatabase_Definition]
END

/****** Object:  Table [dbo].[tblDatabase_Definition]    Script Date: 9/24/2017 7:30:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblDatabase_Definition](
	[datababse_definition_id] [int] IDENTITY(1,1) not null,
	[table_prefix] [nvarchar](32) not null,
	[descriptor_id] int,
	[column_suffix_id_name] [nvarchar](32) not null,
	[column_suffix_name_name] [nvarchar](32) not null,
	[database_name] [nvarchar](128)  not null,
	

 CONSTRAINT [PK_tblDatabase_Definition] PRIMARY KEY CLUSTERED 
(
	[datababse_definition_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO