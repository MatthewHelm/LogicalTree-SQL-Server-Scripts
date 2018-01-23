USE [LogicalTree]
GO

/****** Object:  Table [dbo].[tblAttribute_Db_Table_Field_Value]    Script Date: 10/2/2017 8:36:29 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF (EXISTS (SELECT *
                 FROM INFORMATION_SCHEMA.TABLES
                 WHERE TABLE_NAME = 'tblAttribute_Query_String' and TABLE_SCHEMA = 'dbo' ))
BEGIN
    DROP TABLE [dbo].[tblAttribute_Query_String]
END

CREATE TABLE [dbo].[tblAttribute_Query_String](
    [attribute_query_string_id] [int] IDENTITY(1,1) not null,
	[attribute_db_table_field_value_id] [int] NOT NULL,
	[attribute_query_string] [nvarchar](MAX) NULL,
 CONSTRAINT [PK_tblAttribute_Query_String] PRIMARY KEY CLUSTERED 
(
	[attribute_query_string_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO