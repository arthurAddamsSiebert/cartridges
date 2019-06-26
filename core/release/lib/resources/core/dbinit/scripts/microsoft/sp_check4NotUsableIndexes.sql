-- alter all my_* CHAR, VARCHAR2 columns from BYTE to CHAR length semantics
CREATE OR ALTER PROCEDURE alter_from_byte_to_char
AS
BEGIN
	DECLARE @stmt VARCHAR(200);
	DECLARE @tabColList TABLE
	(
		Table_Name	VARCHAR(256),
		Column_Name VARCHAR(256),
		Data_Type	VARCHAR(100),
		Char_Length VARCHAR(100)
	);
	INSERT INTO @tabColList
		SELECT st.name, sc.name, sc.user_type_id, sc.max_length
		FROM sys.columns sc
		INNER JOIN sys.tables st ON st.object_id = sc.object_id
		WHERE sc.user_type_id IN ('VARCHAR2','CHAR')
		AND st.name LIKE 'MY\_USER\_%' ESCAPE '\'
		ORDER BY st.name, sc.name
END
GO
CREATE OR ALTER PROCEDURE sp_check4NotUsableIndexes
------------------------------------------------------------------------------------------
-- Name        : sp_check4NotUsableIndexes
-- History     : user             date       - desc
--             : ...
-- Created     : Surender Singh     11/01/2017
-- Description : As discussed with Jens, the functionality need not to be implemented. This procedure lists or deletes all not usable indexes. All primary key
--               indexes and unique indexes are not considered. E.g. the following is present:
--                 pk     idx: table1.index1(col1)
--                 normal idx: table1.index2(col1,col2)
--                 normal idx: table1.index3(col10,col11,col12)
--                 normal idx: table1.index4(col10,col11)
--                 normal idx: table1.index5(col10)
--               Result: table1.index1 not dropped, is primary key
--                       table1.index4 and table1.index5 dropped, are included
--                       within table1.index3
-- Owner       : The special enfinity (eCS/eTS) or MultiSite PowerTier user. This user
--               need the table creation privilege directly not granted by a role.
-- Input       : idrop - TRUE  force index dropping
--                       FALSE no index dropping, default is FALSE.
--             : debug - TRUE  for more debug info
--                       FALSE only drop index debug output, default is FALSE.
-- Output      : all not usable drop indexe statements.
-- Example     : set linesize 200 serveroutput on size 100000
--               exec sp_check4NotUsableIndexes(FALSE, FALSE);
------------------------------------------------------------------------------------------
(
  @idrop bit = 0,
  @debug bit = 1
)
AS
BEGIN
	DECLARE @userTable VARCHAR(256); -- Requires atleast one statement.
END
GO