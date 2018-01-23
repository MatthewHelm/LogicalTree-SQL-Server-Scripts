USE [LogicalTree]
GO

/****** Object:  StoredProcedure [dbo].[GetAllCoinsGevenCondition_sp]    Script Date: 10/3/2017 10:00:25 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllCoinsGivenCondition_sp] (@ppDatabase1 nvarchar(64), @ppTable1 nvarchar(64), @ppColumnIdField1 nvarchar(64), @ppColumnDescField1 nvarchar(64), @ppColumnIdValue1 nvarchar(64), @ppColumnDescValue1 nvarchar(64))
AS
BEGIN
    if (PATINDEX('%obverse%', @ppColumnIdField1) <> 0)  ---OR (PATINDEX(@ppColumnIdField,'reverse') <> 0)
       begin

	      select obverse_image, reverse_image, coin_id, issuing_authority_name, obverse_legend, reverse_legend, exergue from [Ancient Roman Coins].dbo.tblCoins c
          inner join [Ancient Roman Coins].dbo.tblObverse o on c.obverse_id = o.obverse_id and o.obverse_legend = '' + @ppColumnDescValue1 + ''
          inner join [Ancient Roman Coins].dbo.tblReverse r on c.reverse_id = r.reverse_id
          inner join [Ancient Roman Coins].dbo.tblIssuingAuthority i on c.issuing_authority_id = i.issuing_authority_id
		  return;
	   end
	else
	   begin
          if (PATINDEX('%reverse%', @ppColumnIdField1) <> 0)  ---OR (PATINDEX(@ppColumnIdField,'reverse') <> 0)
             begin
	            select obverse_image, reverse_image, coin_id, issuing_authority_name, obverse_legend, reverse_legend, exergue from [Ancient Roman Coins].dbo.tblCoins c
                inner join [Ancient Roman Coins].dbo.tblObverse o on c.obverse_id = o.obverse_id 
                inner join [Ancient Roman Coins].dbo.tblReverse r on c.reverse_id = r.reverse_id and r.reverse_legend = '' + @ppColumnDescValue1 + ''
                inner join [Ancient Roman Coins].dbo.tblIssuingAuthority i on c.issuing_authority_id = i.issuing_authority_id;
				return;
	         end
		 else
   	        begin
			   if (PATINDEX('%authority%', @ppColumnIdField1) <> 0)
			      begin
			--	     print 'mch inside of condition'
				     select obverse_image, reverse_image, coin_id, issuing_authority_name, obverse_legend, reverse_legend, exergue from [Ancient Roman Coins].dbo.tblCoins c
                     inner join [Ancient Roman Coins].dbo.tblObverse o on c.obverse_id = o.obverse_id
                     inner join [Ancient Roman Coins].dbo.tblReverse r on c.reverse_id = r.reverse_id
                     inner join [Ancient Roman Coins].dbo.tblIssuingAuthority i on c.issuing_authority_id = i.issuing_authority_id and i.issuing_authority_id = @ppColumnIdValue1;
					 return;
				  end
			   else
			      begin
				  --   print 'mch inside of bad condition'
				--	 print @ppColumnIdField1;
			         DECLARE @SqlStr as nVarchar(MAX); 
			         DECLARE @ParmDef nvarchar(2048); 
			         set @SqlStr = 
                     N'select obverse_image, reverse_image, coin_id, issuing_authority_name, obverse_legend, reverse_legend, exergue from [Ancient Roman Coins].dbo.tblCoins c
                     inner join [Ancient Roman Coins].dbo.tblObverse o on c.obverse_id = o.obverse_id
                     inner join [Ancient Roman Coins].dbo.tblReverse r on c.reverse_id = r.reverse_id
                     inner join [Ancient Roman Coins].dbo.tblIssuingAuthority i on c.issuing_authority_id = i.issuing_authority_id' + CHAR(13)+CHAR(10) +
                     'inner join ' + @ppDatabase1 + '.' + '[dbo].' + @ppTable1 + ' xyz on c.' + @ppColumnIdField1 + '= xyz.' + @ppColumnIdField1 + ' and c.' + @ppColumnIdField1 + ' = ' + @ppColumnIdValue1
			         set @ParmDef = N'@ppDatabase nvarchar(64), @ppTable nvarchar(64), @ppColumnIdField nvarchar(64), @ppColumnDescField nvarchar(64), @ppColumnIdValue nvarchar(64), @ppColumnDescValue nvarchar(64)';
			         print @SqlStr
			         EXECUTE sp_executesql @SQLStr, @ParmDef, @ppDatabase = @ppDatabase1,  @ppTable = @ppTable1, @ppColumnIdField = @ppColumnIdField1, @ppColumnDescField = @ppColumnDescField1, @ppColumnIdValue = @ppColumnIdValue1, @ppColumnDescValue = @ppColumnDescValue1
					 return;
			      end
			   end
	   end

	   set @SqlStr = 
	   N'select obverse_image, reverse_image, coin_id, issuing_authority_name, obverse_legend, reverse_legend, exergue from [Ancient Roman Coins].dbo.tblCoins c
   inner join [Ancient Roman Coins].dbo.tblObverse o on c.obverse_id = o.obverse_id
   inner join [Ancient Roman Coins].dbo.tblReverse r on c.reverse_id = r.reverse_id
   inner join [Ancient Roman Coins].dbo.tblIssuingAuthority i on c.issuing_authority_id = i.issuing_authority_id';
   EXECUTE sp_executesql @SQLStr;
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	return;
END


GO