USE [LogicalTree]
GO


IF (EXISTS (SELECT *
                 FROM INFORMATION_SCHEMA.TABLES
                 WHERE TABLE_NAME = 'tblAttribute_Db_Table_Field' and TABLE_SCHEMA = 'dbo' ))
BEGIN
    DROP TABLE [dbo].[tblAttribute_Db_Table_Field]
END

/****** Object:  Table [dbo].[tblAttribute]    Script Date: 9/24/2017 7:30:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblAttribute_Db_Table_Field](
	[attribute_db_table_field_id] [int] IDENTITY(1,1) not null,
	[attribute_table] [nvarchar](64) not null,
	[attribute_field_id] [nvarchar](64) not null,
    [attribute_field_description] [nvarchar](64) not null,
	[attribute_database] [nvarchar](64) null,
	[attribute_id] int not null,
	[attribute_main_table] [nvarchar](64) not null,
    [application_name] nvarchar(64) null,
 CONSTRAINT [PK_tblAttribute_Db_Table_Field] PRIMARY KEY CLUSTERED 
(
	[attribute_db_table_field_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO