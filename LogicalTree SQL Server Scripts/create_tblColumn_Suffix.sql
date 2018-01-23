USE [LogicalTree]
GO


IF (EXISTS (SELECT *
                 FROM INFORMATION_SCHEMA.TABLES
                 WHERE TABLE_NAME = 'tblColumn_Suffix' and TABLE_SCHEMA = 'dbo' ))
BEGIN
    DROP TABLE [dbo].[tblColumn_Suffix]
END

/****** Object:  Table [dbo].[tblColumn_Suffix]    Script Date: 9/24/2017 7:30:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblColumn_Suffix](
	[column_suffix_id] [int] IDENTITY(1,1) not null,
	[column_suffix_name] [nvarchar](64) not null,

 CONSTRAINT [PK_tblColumn_Suffix] PRIMARY KEY CLUSTERED 
(
	[column_suffix_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO