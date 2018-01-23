USE [LogicalTree]
GO


IF (EXISTS (SELECT *
                 FROM INFORMATION_SCHEMA.TABLES
                 WHERE TABLE_NAME = 'tblAttribute_Db_Table_Field_Value' and TABLE_SCHEMA = 'dbo' ))
BEGIN
    DROP TABLE [dbo].[tblAttribute_Db_Table_Field_Value]
END

/****** Object:  Table [dbo].[tblAttribute_Db_Table_Field_Value]    Script Date: 9/24/2017 7:30:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblAttribute_Db_Table_Field_Value](
	[attribute_db_table_field_value_id] [int] IDENTITY(1,1) not null,
	[attribute_db_table_field_value_value] [nvarchar](64) null,
	[attribute_db_table_field_value_value_id] [int] null,
	[attribute_db_table_field_id] [int] not null,
 CONSTRAINT [PK_tblAttribute_Db_Table_Field_Value] PRIMARY KEY CLUSTERED 
(
	[attribute_db_table_field_value_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO