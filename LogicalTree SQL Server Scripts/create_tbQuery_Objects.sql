USE [LogicalTree]
GO


IF (EXISTS (SELECT *
                 FROM INFORMATION_SCHEMA.TABLES
                 WHERE TABLE_NAME = 'tblQueryObjects' and TABLE_SCHEMA = 'dbo' ))
BEGIN
    DROP TABLE [dbo].[tblQueryObjects]
END

/****** Object:  Table [dbo].[tbQueryObjects]    Script Date: 9/24/2017 7:30:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblQueryObjects](
	[queryobjects_id] [int] IDENTITY(1,1) not null,
	[queryobjects_database] [nvarchar](64) null,
	[queryobjects_main_table] [nvarchar](64) null,
	[queryobjects_table] [nvarchar](64) null,
	[queryobjects_column] [nvarchar](64) null,
	[sql_object_type] [int] null,
	[queryobjects_column_value] [nvarchar](64) null,
	[attribute_db_table_field_id] int not null,
	[seq_no] [int] null,
 CONSTRAINT [PK_tblQuery] PRIMARY KEY CLUSTERED 
(
	[queryObjects_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO