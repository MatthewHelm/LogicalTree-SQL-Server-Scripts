USE [LogicalTree]
GO


IF (EXISTS (SELECT *
                 FROM INFORMATION_SCHEMA.TABLES
                 WHERE TABLE_NAME = 'tblAttribute_Table_Field_Value' and TABLE_SCHEMA = 'dbo' ))
BEGIN
    DROP TABLE [dbo].[tblAttribute_Table_Field_Value]
END

/****** Object:  Table [dbo].[tblAttribute_Table_Field_Value]    Script Date: 9/24/2017 7:30:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblAttribute_Table_Field_Value](
	[attribute_table_field_value_id] [int] IDENTITY(1,1) not null,
	[attribute_table_field_value] [nvarchar](MAX) null,
	[attribute_table_field_id] [int] not null,
 CONSTRAINT [PK_tblAttribute_Table_Field_Value] PRIMARY KEY CLUSTERED 
(
	[attribute_table_field_value_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO