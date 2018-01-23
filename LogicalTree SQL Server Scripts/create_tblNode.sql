USE [LogicalTree]
GO


IF (EXISTS (SELECT *
                 FROM INFORMATION_SCHEMA.TABLES
                 WHERE TABLE_NAME = 'tblNode' and TABLE_SCHEMA = 'dbo' ))
BEGIN
    DROP TABLE [dbo].[tblNode]
END


/****** Object:  Table [dbo].[tblNode]    Script Date: 9/24/2017 7:23:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblNode](
	[node_id] [int] IDENTITY(1,1) NOT NULL,
	[node_type] [int] NOT NULL,
	[attribute_id] [int] NOT NULL,
	[node_name] [nvarchar](64) NULL,
 CONSTRAINT [PK_tblNode] PRIMARY KEY CLUSTERED 
(
	[node_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
