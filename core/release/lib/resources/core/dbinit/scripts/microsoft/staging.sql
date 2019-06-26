------------------------------------------------------------------------------------------
-- Name        : Type: STAGING$type_switch_synonyms
-- Description : ???
-- Usage       : e.g. in procedure 'STAGING$get_staging_table'
------------------------------------------------------------------------------------------
IF TYPE_ID(N'STAGING$type_switch_synonyms') IS NULL
BEGIN
	CREATE TYPE dbo.STAGING$type_switch_synonyms
	AS TABLE (row INT IDENTITY(1,1), objectName VARCHAR(100))
END
GO
------------------------------------------------------------------------------------------
-- Name        : get_editing_object
-- Description : builds the object name using parameters
-- Input       : name - the object name
--               editing_schema_name - name of editing schema
--               db_link_name - name of database link
-- Output      : the editing object name
-- Example     : exec STAGING$get_editing_object('DOMAIN', NULL, 'ISEDITING')
--               select  dbo.STAGING$get_editing_object ('process', 'INTERSHOP_EDIT', NULL)
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.STAGING$get_editing_object
(
	@name  VARCHAR(256),
	@editing_schema_name VARCHAR(256),
	@db_link_name VARCHAR(256)
)  
RETURNS VARCHAR(800)
AS   
BEGIN  
	DECLARE @result varchar(800);
	IF @editing_schema_name IS NOT NULL AND LEN(@editing_schema_name)>0 
	BEGIN
		SET @result = CONCAT(@editing_schema_name, '.', @name);
	END 
	ELSE IF (@db_link_name IS NOT NULL AND LEN(@db_link_name)>0)
	BEGIN
		SET @result = CONCAT(@name, '@', @db_link_name);
	END
	ELSE
	BEGIN
		SET @result = @name;
	END
	RETURN @result
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING$cut_name
-- Description : This function returns TRUE if table with given name is a staging table
--               and it is prepared.
-- Input       : table_name - the name of table
-- Output      : TRUE if given table is a staging table and is prepared
--example		: SELECT dbo.STAGING$cut_name('name123456789',DEFAULT)
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.STAGING$cut_name
(
	@name  VARCHAR(200),
	@max_length INT = 21
)  
RETURNS VARCHAR(200)
AS   
BEGIN  
	DECLARE @result INT,
	@cutted_name VARCHAR(30),
	@appendix   VARCHAR(3) = SUBSTRING(@name, LEN(@name)-2, LEN(@name));

	IF (len(@name)>@max_length AND @appendix LIKE '\___' ESCAPE '\' )
	BEGIN
		-- cut in all cases the appendix and make sure remaining name is shorter than
		-- maximal table name length
		SET @cutted_name = SUBSTRING(@name, 1, @max_length-3);
	END
	ELSE
	BEGIN
		SET @cutted_name = @name;
		SET @appendix = '';
	END
	
	RETURN SUBSTRING(@cutted_name, 1, @max_length) + @appendix;
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING$get_table_name
-- Description : This function returns the staging table with given name.
-- Input       : name - the name of staging table
-- Output      : the staging table
--EXAMPLE		: SELECT dbo.STAGING$get_table_name('CLASSIFICATIONCOUNT','$1')
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.STAGING$get_table_name
(
	@table_name  VARCHAR(200),
	@suffix  VARCHAR(200) = NULL
)  
RETURNS VARCHAR(200)
AS   
BEGIN 
	DECLARE @result  VARCHAR(200) ; 
	IF ISNULL(@suffix, '') = '' 
	BEGIN
		SET @result=@table_name;
	END
	ELSE
	BEGIN
		SET @result = dbo.STAGING$cut_name(@table_name ,DEFAULT);
		SET @result = CONCAT(@result, @suffix);
	END
	RETURN  @result  
END
GO
------------------------------------------------------------------------------------------
-- Name        : is_staging_table
-- Description : This function returns TRUE if table with given name is a staging table,
--               else FALSE.
-- Input       : table_name - the name of table
-- Output      : TRUE if given table is a staging table
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.STAGING$is_staging_table
(
	@table_name  VARCHAR(200)
)  
RETURNS BIT
AS
BEGIN
	DECLARE @result INT;
	SELECT @result = COUNT(1)  FROM STAGINGTABLE(NOLOCK) WHERE TABLENAME = UPPER(@table_name);
	RETURN  
		CASE 
			WHEN @result > 0  THEN 
				1
			ELSE 
				0
			END
END
GO

------------------------------------------------------------------------------------------
-- Name        : STAGING$is_prepared
-- Description : This function returns TRUE if table with given name is a staging table
--               and it is prepared.
-- Input       : table_name - the name of table
-- Output      : TRUE if given table is a staging table and is prepared
--example		: SELECT dbo.STAGING$is_prepared('user_synonym')
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.STAGING$is_prepared
(
	@table_name  VARCHAR(200)
)  
RETURNS BIT
AS   
BEGIN  
	DECLARE @result INT;
	IF (
		(dbo.STAGING$is_staging_table(@table_name) = 1) AND dbo.DDL$is_object_exists(@table_name,'SN') = 1 
		AND dbo.DDL$is_object_exists(dbo.STAGING$get_table_name(@table_name,'$1'), DEFAULT) = 1  AND  dbo.DDL$is_object_exists(dbo.STAGING$get_table_name(@table_name,'$2'), DEFAULT) = 1
	)
	BEGIN
		SET @result=1
	END
	ELSE
		SET @result=0
	RETURN  @result;
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING$execute
-- Description : This function returns all shadow tables of given staging group.
-- Input       : aStagingGroupID - the uuid of staging group
-- Output      : a list of foreign keys
--example		: exec  dbo.STAGING$get_shadow_tables 'PrMKgzxpzCQAAAFdZSUdBFA8'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING$execute
(
	@stmt NVARCHAR(MAX),
	@table_name VARCHAR(256),
	@clause VARCHAR(4000),
	@ignoreErrorCode INT = 0
)
AS
BEGIN
	BEGIN TRY
		DECLARE @sqlQuery NVARCHAR(MAX);
		IF dbo.STAGING$is_prepared(@table_name) = 1
		BEGIN
			SET @sqlQuery = CONCAT(@stmt, ' ', dbo.STAGING$get_table_name(@table_name, '$1'), ' ', @clause)
			EXEC SQL_UTIL$execute @sqlQuery, @ignoreErrorCode;
			SET @sqlQuery = CONCAT(@stmt, ' ', dbo.STAGING$get_table_name(@table_name, '$2'), ' ', @clause)
			EXEC SQL_UTIL$execute @sqlQuery, @ignoreErrorCode;
		END
		ELSE
		BEGIN
			SET @sqlQuery = CONCAT(@stmt, ' ', @table_name, ' ', @clause)
			EXEC SQL_UTIL$execute @sqlQuery, @ignoreErrorCode;
		END
	END TRY
	BEGIN CATCH
		THROW;
	END CATCH
END;
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING$switch_suffix
-- Description : This function is used to switch given synonym.
-- Input       : currentSuffix - the current suffix
-- Output      : the switch suffix
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.STAGING$switch_suffix
(
	@currentSuffix  VARCHAR(200)
)  
RETURNS VARCHAR(200)
AS
BEGIN
	DECLARE @result  VARCHAR(10);
	IF @currentSuffix = '$1'
		SET @result=  '$2';
	ELSE
		SET @result ='$1';
        
	RETURN  @result
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING$get_shadow_tables
-- Description : This function returns all shadow tables of given staging group.
-- Input       : aStagingGroupID - the uuid of staging group
-- Output      : a list of foreign keys
--example		: exec  dbo.STAGING$get_shadow_tables 'PrMKgzxpzCQAAAFdZSUdBFA8'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE  dbo.STAGING$get_shadow_tables
(
	@aStagingGroupID VARCHAR(100)
)
AS
BEGIN
	SELECT dbo.STAGING$get_table_name(tablename, dbo.STAGING$switch_suffix(LIVETABLENAMESUFFIX))
	FROM STAGINGGROUP g(NOLOCK)
	INNER JOIN STAGINGTABLE t(NOLOCK) ON (g.UUID = t.STAGINGGROUPID)
	WHERE g.UUID = @aStagingGroupID;
END;
GO

------------------------------------------------------------------------------------------
-- Name        : STAGING$get_shadow_table_cons
-- Description : This function returns all foreign keys referencing the shadow tables
--               assigned to staging group with given uuid.
-- Input       : aStagingGroupID - the uuid of staging group
-- Output      : a list of foreign keys
-- example		: exec  dbo.STAGING$get_shadow_table_cons 'PrMKgzxpzCQAAAFdZSUdBFA8',NULL
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE  dbo.STAGING$get_shadow_table_cons
(
	@aStagingGroupID VARCHAR(100),
	@aType  VARCHAR(100)=NULL
)
AS
        
BEGIN
	DECLARE @DDL_type_object_name_list DDL$type_object_name_list 

	INSERT INTO @DDL_type_object_name_list
		EXEC  STAGING$get_shadow_tables @aStagingGroupID 	

	DECLARE @columnList VARCHAR(4000),
	@sqlQuery NVARCHAR(MAX),
	@objectname	VARCHAR(4000)
	SELECT  @columnList =dbo.DDL$get_cons_columns_str('C')

	select 	@objectname= STUFF((
							SELECT ',' + ''''+T.objectname+''''
							FROM @DDL_type_object_name_list T
							WHERE T.row = T1.row
							ORDER BY T.objectname
							FOR XML PATH('')),1,1,''
						) 
						FROM @DDL_type_object_name_list T1
						GROUP BY row;
	SELECT @sqlQuery ='SELECT ' + @columnList + ' FROM   INFORMATION_SCHEMA.TABLE_CONSTRAINTS C 
						INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE KCU 
						ON C.CONSTRAINT_SCHEMA = KCU.CONSTRAINT_SCHEMA 
						AND C.CONSTRAINT_NAME = KCU.CONSTRAINT_NAME 
						INNER JOIN INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS RC 
						ON C.CONSTRAINT_SCHEMA = RC.CONSTRAINT_SCHEMA 
						AND C.CONSTRAINT_NAME = RC.CONSTRAINT_NAME 
						INNER JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS C2 
						ON RC.UNIQUE_CONSTRAINT_SCHEMA = C2.CONSTRAINT_SCHEMA 
						AND RC.UNIQUE_CONSTRAINT_NAME = C2.CONSTRAINT_NAME 
						INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE KCU2 
						ON C2.CONSTRAINT_SCHEMA = KCU2.CONSTRAINT_SCHEMA 
						AND C2.CONSTRAINT_NAME = KCU2.CONSTRAINT_NAME 
						AND KCU.ORDINAL_POSITION = KCU2.ORDINAL_POSITION 
						WHERE C.TABLE_NAME in ('+@objectname+')'
	EXECUTE SP_EXECUTESQL @sqlQuery;
END;
GO
------------------------------------------------------------------------------------------
-- Name			: STAGING$get_shadow_table_refs
-- Description	: This function returns all foreign keys referencing the shadow tables
--               assigned to staging group with given uuid.
-- Input		: aStagingGroupID - the uuid of staging group
-- Output		: a list of foreign keys
-- example		: EXEC  dbo.STAGING$get_shadow_table_refs 'PrMKgzxpzCQAAAFdZSUdBFA8'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE  dbo.STAGING$get_shadow_table_refs
(
	@aStagingGroupID VARCHAR(256)
)
AS
BEGIN
	DECLARE @DDL_type_object_name_list DDL$type_object_name_list;

	INSERT INTO @DDL_type_object_name_list
		EXEC  dbo.STAGING$get_shadow_tables @aStagingGroupID;

	DECLARE @columnList VARCHAR(4000),
	@sqlQuery NVARCHAR(MAX),
	@objectname	VARCHAR(4000);
	
	SELECT  @columnList =dbo.DDL$get_cons_columns_str('C')

	SELECT 	@objectname= STUFF((
							SELECT ',' + ''''+T.objectname+''''
							FROM @DDL_type_object_name_list T
							WHERE T.row = T1.row
							ORDER BY T.objectname
							FOR XML PATH('')),1,1,''
						)
						FROM @DDL_type_object_name_list T1
						GROUP BY row;

	SELECT @sqlQuery ='SELECT '+@columnList +' FROM   INFORMATION_SCHEMA.TABLE_CONSTRAINTS C 
						INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE KCU 
						ON C.CONSTRAINT_SCHEMA = KCU.CONSTRAINT_SCHEMA 
						AND C.CONSTRAINT_NAME = KCU.CONSTRAINT_NAME 
						INNER JOIN INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS RC 
						ON C.CONSTRAINT_SCHEMA = RC.CONSTRAINT_SCHEMA 
						AND C.CONSTRAINT_NAME = RC.CONSTRAINT_NAME 
						INNER JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS C2 
						ON RC.UNIQUE_CONSTRAINT_SCHEMA = C2.CONSTRAINT_SCHEMA 
						AND RC.UNIQUE_CONSTRAINT_NAME = C2.CONSTRAINT_NAME 
						INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE KCU2 
						ON C2.CONSTRAINT_SCHEMA = KCU2.CONSTRAINT_SCHEMA 
						AND C2.CONSTRAINT_NAME = KCU2.CONSTRAINT_NAME 
						AND KCU.ORDINAL_POSITION = KCU2.ORDINAL_POSITION 
						WHERE  C.CONSTRAINT_TYPE = ''FOREIGN KEY'' AND C.TABLE_NAME in ('+@objectname+')'		
	EXECUTE SQL_UTIL$execute3 @sqlQuery
END;
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING$delete_from
-- Description : deletes content from given table. Depending on table is a staging table
--               the delete statement will be performed for both $1/$2 table.
-- Input       : table_name - name of table
--               delete_clause - the delete clause
--               ignoreErrorCode - the error which should be ignored.
-- Example     : EXEC  dbo.STAGING$delete_from 'ABCDEMO1', 'WHERE A = 1'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING$delete_from
(
	@table_name VARCHAR(4000),
	@delete_clause VARCHAR(4000),
	@ignoreErrorCode FLOAT = 0
) AS
BEGIN
	SET NOCOUNT ON;
	EXECUTE STAGING$execute 'DELETE FROM ', @table_name, @delete_clause, @ignoreErrorCode;   
	   
END;
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING$insert_into
-- Description : inserts given content into given table. Depending on table is a staging table
--               the insert statement will be performed in $1/$2 table.
-- Input       : table_name - name of table
--               insert_clause - the insert clause
--               ignoreErrorCode - the error which should be ignored.
-- Example     : EXEC  dbo.STAGING$insert_into 'abcdemo1', '(a, b) VALUES (1, ''aDomain'')'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING$insert_into
(
	@table_name VARCHAR(4000),
	@insert_clause VARCHAR(4000),
	@ignoreErrorCode FLOAT = 0
) 
AS
BEGIN
	SET NOCOUNT ON;
	EXECUTE STAGING$execute 'INSERT INTO ', @table_name, @insert_clause, @ignoreErrorCode;
END;
GO
------------------------------------------------------------------------------------------
-- Name        : dbo.STAGING$is_staging_initialized
-- Description : This function returns TRUE if staging environment is initialized.
-- Output      : TRUE if staging is initialized
--EXAMPLE		: SELECT dbo.STAGING$is_staging_initialized()
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.STAGING$is_staging_initialized()
RETURNS BIT
AS
BEGIN
	DECLARE @staging_initialized INT;

	SELECT @staging_initialized = COUNT(1)
	FROM process WHERE name='StagingProcess' AND
                           (state='StagingInitialized' OR
                            state='StagingProcessCompleted');
                            
	RETURN 
		CASE 
			WHEN  @staging_initialized>0 THEN
				1 
			ELSE
				0
		END
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING$handle_live_user_privs
-- Description : It grants or revokes some object privileges of editing system to user of
--               live system.
-- Input       : the schema name of live system.
--               isGranted true, if privileges should be granted or
--                         false, if privileges should be revoked
-- Output      : none
-- Example     : EXEC STAGING$handle_live_user_privs 'LIVE_USER', 'TRUE'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING$handle_live_user_privs( @schema_name VARCHAR(4000), @isGranted BIT)
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @object_names    DDL$type_object_name_list,
			@grant_stmt      VARCHAR(10),
			@grant_keyword   VARCHAR(10),
			@sql_Query   NVARCHAR(MAX);

	IF UPPER(@isGranted)='TRUE'
	BEGIN
		SET @grant_stmt = 'GRANT';
		SET @grant_keyword = ' TO ';
	END
	ELSE
	BEGIN
		SET @grant_stmt = 'REVOKE';
		SET @grant_keyword = ' FROM ';
	END 
	----ON VIEWS
	-- grant select on source view of all staging tables
	DECLARE @view_Name VARCHAR(100);
	DECLARE view_cursor CURSOR FOR SELECT NAME FROM SYS.views;
	
	OPEN view_cursor;
	FETCH NEXT FROM view_cursor  INTO @view_Name;
	WHILE @@FETCH_STATUS=0
	BEGIN               
		SET @sql_Query= CONCAT(@grant_stmt,' SELECT ON OBJECT:: ', @view_Name, @grant_keyword, @schema_name)	
		EXEC SQL_UTIL$execute3 @sql_Query;
		FETCH NEXT FROM view_cursor  INTO @view_Name;
	END;
	CLOSE view_cursor;
	DEALLOCATE view_cursor;
	--
	-- grant select on all tables and delete on all deletion tables
	DECLARE @table_Name VARCHAR(100)
	DECLARE table_cursor CURSOR FOR SELECT name FROM sys.tables WHERE type='U'
	OPEN table_cursor;
	FETCH NEXT FROM table_cursor   INTO @table_Name;
	WHILE @@FETCH_STATUS = 0
	BEGIN      
		IF @table_Name LIKE 'D$%'
		BEGIN
			SET @sql_Query= CONCAT(@grant_stmt,' SELECT,DELETE ON OBJECT:: ', @view_Name, @grant_keyword, @schema_name)
			EXEC SQL_UTIL$execute3 @sql_Query;
		END         
		ELSE
		BEGIN
			SET @sql_Query= CONCAT(@grant_stmt,' SELECT ON OBJECT:: ', @view_Name, @grant_keyword, @schema_name)	
			EXEC SQL_UTIL$execute3 @sql_Query;
		END
		FETCH NEXT FROM table_cursor INTO @table_Name;
	END;
	CLOSE table_cursor ;
	DEALLOCATE table_cursor ;

	-- grant delete on stagingidentification table in editing system
	SET @sql_Query = CONCAT(@grant_stmt,' DELETE ON OBJECT::stagingidentification', @grant_keyword, @schema_name)	
	EXEC SQL_UTIL$execute3 @sql_Query;

	SET @sql_Query = CONCAT(@grant_stmt,' DELETE ON OBJECT::stagingidentification', @grant_keyword, @schema_name)	
	EXEC SQL_UTIL$execute3 @sql_Query;
END;
GO
------------------------------------------------------------------------------------------
-- Name        : grant_live_user_privs
-- Description : It grants some object privileges of editing system to user of
--               live system.
-- Input       : the schema name of live system user
-- Output      : none
-- Example     : EXEC dbo.STAGING$grant_live_user_privs  'LIVE_USER'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING$grant_live_user_privs
(
	@schema_name VARCHAR(50)
)
AS
BEGIN
	SET NOCOUNT ON;
	EXEC  STAGING$handle_live_user_privs @schema_name, 'TRUE'
END;
GO
------------------------------------------------------------------------------------------
-- Name        : revoke_live_user_privs
-- Description : It revokes some object privileges of editing system from user of
--               live system.
-- Input       : the schema name of live system user
-- Output      : none
-- Example     : EXEC  STAGING$revoke_live_user_privs  'LIVE_USER'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING$revoke_live_user_privs( @schema_name VARCHAR(50)) AS
BEGIN
	SET NOCOUNT ON;
	EXEC  STAGING$handle_live_user_privs @schema_name, 'FALSE'
END;
GO
------------------------------------------------------------------------------------------
-- Name        : sync_live_with_editing_process
-- Description : This function returns the staging table with given name.
-- Input       : name - the name of staging table
-- Output      : the staging table
------------------------------------------------------------------------------------------

CREATE OR ALTER PROCEDURE dbo.STAGING$sync_live_with_editing_process
(
	@schema_name VARCHAR(20),
	@db_link	VARCHAR(100)
)
AS
BEGIN
	DECLARE @process TABLE 
	(
		rowid INT IDENTITY(1,1),
		uuid NVARCHAR(28) COLLATE Latin1_General_100_BIN2,
		enddate DATETIME2(7),
		[state] NVARCHAR(256)
	);

	DECLARE 
		@editingobject VARCHAR(200),
		@query VARCHAR(500),
		@uuid NVARCHAR(28),
		@enddate DATETIME2(7),
		@state NVARCHAR(256),
		@count INT,
		@i INT = 1;	

	SET @editingobject = dbo.staging$get_editing_object('process', @schema_name+'.dbo', @db_link);	
	SET @query =  CONCAT('SELECT e.uuid, e.enddate, e.state FROM process l, ', @editingobject, ' e WHERE e.uuid = l.uuid AND e.enddate IS NOT NULL AND l.enddate IS NULL');
	INSERT INTO @process EXEC SQL_UTIL$execute3 @query;
	SELECT @count = COUNT(1) FROM @process
	WHILE(@i <= @count)
	BEGIN
		SELECT @uuid = uuid, @enddate = enddate, @state = state from @process where rowid = @i;		
		UPDATE PROCESS SET enddate = @enddate, state = @state WHERE uuid = @uuid;
		UPDATE STAGINGPROCESSCOMPONENT SET state = @state WHERE STAGINGPROCESSID = @uuid;		
		SET @i = @i + 1;
	END
END
GO

------------------------------------------------------------------------------------------
-- Name        : STAGING$get_index_name2
-- Description : This function returns the index name with given suffix. If table_name is
--               larger than maximum table name length it will be cut.
-- Input       : index_name the name of table (e.g. USERGROUPUSERASSIGNMENT)
--               aDstTableName the name of destination table
-- Output      : the index name with given suffix (e.g. USERGROUPASSIGNME$1_FK001)
--Example		:SELECT dbo.STAGING$get_index_name2('USERGROUPASSIGNME$1_FK001','USERGROUPUSERASSIGNMENT')
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.STAGING$get_index_name2
(  
	@index_name VARCHAR(MAX),
	@aDstTableName VARCHAR(MAX)
)
RETURNS VARCHAR(MAX)
AS 
BEGIN
	DECLARE @result VARCHAR(200);
	DECLARE @suffix VARCHAR(2) = RIGHT(@aDstTableName, 2);
	
	IF RIGHT(@index_name, 2)  LIKE '$_'
		SET @result = CONCAT(SUBSTRING(@index_name, 0, LEN(@index_name)-1), @suffix);
	ELSE IF RIGHT(@index_name, 8)  LIKE '_STR_VAL'
		SET @result = CONCAT(@index_name, @suffix);		
	ELSE IF @index_name LIKE '%\_CTX\_%' ESCAPE '\'
		SET @result = CONCAT(@index_name, @suffix);
	ELSE IF RIGHT(@index_name,6) LIKE '\_CK0__' ESCAPE '\'
		SET @result = CONCAT(@index_name, @suffix);
	ELSE IF RIGHT(@index_name, 12) LIKE '\___\___\______' ESCAPE '\'
		SET @result=CONCAT(@aDstTableName, RIGHT(@index_name, 12)); -- create index names for XML indexes including locale information
	ELSE IF RIGHT(@index_name, 6) LIKE '\______' ESCAPE '\'
		SET @result=CONCAT(@aDstTableName, RIGHT(@index_name, 6));
	ELSE IF LEN(@index_name)>27 
		SET @result = CONCAT(SUBSTRING(@index_name, 3, LEN(@index_name)), @suffix);
	ELSE
		SET @result = CONCAT(@index_name, @suffix);	
	RETURN @result
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING$get_index_name
-- Description : This function returns the index name of given table.
-- Input       : index_name - the original index name
--               table_name - the name of table (e.g. USERGROUPUSERASSIGNMENT)
--               suffix     - the suffix of destination table
-- Output      : the index name with given suffix (e.g. USERGROUPASSIGNME$1_FK001)
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.STAGING$get_index_name
(
   
   @index_name VARCHAR(MAX),
   @table_name VARCHAR(MAX),
   @suffix VARCHAR(4000)
)
RETURNS VARCHAR(4000)
AS 
BEGIN
	 RETURN dbo.STAGING$get_index_name2(@index_name,dbo.STAGING$get_table_name(@table_name,@suffix));
END
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING$get_constraint_name
-- Description : This function returns the constraint name with given suffix. If table_name is
--               larger than maximum table name length it will be cut.
-- Input       : constraint_name the name of table (e.g. USERGROUPUSERASSIGNMENT)
--               aDstTableName the name of destination table
-- Output      : the constraint name with given suffix (e.g. USERGROUPASSIGNME$1_CO001)
--Example	:  select dbo.STAGING$get_constraint_name	()
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.[STAGING$get_constraint_name]
(
	@constraint_name VARCHAR(100),
	@aDstTableName	 VARCHAR(100)
)
RETURNS VARCHAR(400)
AS
BEGIN
	RETURN  dbo.STAGING$get_index_name(@constraint_name, @aDstTableName, '') ;
END;
GO
------------------------------------------------------------------------------------------
-- Name        : get_synonym_name
-- Description : This function returns the synonym name of given staging table. It does
--               not matter if table is active or inactive ($1 or $2).
-- Input       : tableName   - the name of staging table (live or shadow)
-- Output      : the synonym of given staging table
--Example	   : SELECT [dbo].[STAGING$get_synonym_name]('ABCDEMO')
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.[STAGING$get_synonym_name]
(
	@tableName VARCHAR(100)
)
RETURNS VARCHAR(100)
AS
BEGIN

	DECLARE @synonym_name VARCHAR(100)
	SELECT @synonym_name = name FROM sys.synonyms  WHERE base_object_name  LIKE '_' + SUBSTRING(UPPER(@tableName), 1, LEN(@tableName)-2) + '%';
	IF @synonym_name  IS NULL
		SET @synonym_name = @tableName
	RETURN @synonym_name;

END;
GO
------------------------------------------------------------------------------------------
-- Name        : get_live_table_name
-- Description : This function returns the name of staging table being currently alive.
-- Input       : tableName   - the name of staging table
-- Output      : the current live table
-- Example		: SELECT dbo.[STAGING$get_live_table_name]('SEQUENCEDEMO1')
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.[STAGING$get_live_table_name]
(
	@tableName VARCHAR(100)
)
RETURNS VARCHAR(400)
AS
BEGIN
	DECLARE @name VARCHAR(300);
	SELECT @name = PARSENAME(base_object_name, 1) FROM sys.synonyms  WHERE name =UPPER(@tableName);

	IF LEN(@name)>0
		SET @name = @name
	ELSE 
	BEGIN
		IF @tableName LIKE '%$_' 
			SET @name = dbo.STAGING$get_synonym_name(@tableName);
		ELSE
			SET @name=@tableName;
	END
	RETURN @name;
END;
GO
------------------------------------------------------------------------------------------
-- Name        : get_shadow_table_name
-- Description : This function returns the name of staging table being currently not alive.
-- Input       : tableName   - the name of staging table
-- Output      : the current shadow table
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.[STAGING$get_shadow_table_name]
(
	@tableName VARCHAR(100)
)
RETURNS VARCHAR(256)
AS
BEGIN
	DECLARE @name	VARCHAR(300),
			@result VARCHAR(300);

	SELECT @name = dbo.STAGING$get_live_table_name(@tableName);

	IF(SUBSTRING(@name, LEN(@name) - 1, LEN(@name))='$1' )
		SET @result = REPLACE(@name, '$1', '$2');
		
	ELSE IF(SUBSTRING(@name,LEN(@name)-1,LEN(@name))='$2' )
		SET @result = REPLACE(@name, '$2', '$1');
	ELSE
		SET @result=@tableName
	RETURN @result;

END
GO
------------------------------------------------------------------------------------------
-- Name        : create_synonym
-- Description : This procedure is used to create given synonym. If the synonym exists, it
--               will be dropped before.
-- Input       : synonymname   - the name of synonym
--               tablename     - the name of table
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING$create_synonym
(
	@synonymname VARCHAR(500),
	@tablename VARCHAR(500)
)
AS
BEGIN
	DECLARE @synonyms VARCHAR(200),		
			@msg VARCHAR(2000) = CONCAT('Creating synonym ', @synonymname, ' to ', @tablename+'...');
	EXEC LOGGER$log  @msg, 0

	EXEC DDL$replace_synonym @synonymname, @tablename

END;
GO
------------------------------------------------------------------------------------------
-- Name        : create_synonyms_of_list
-- Description : This procedure is used to switch given synonym.
-- Input       : synonyms   - the list of synonyms
--               tablenames - the list of tablenames
------------------------------------------------------------------------------------------
	
CREATE OR ALTER PROCEDURE  dbo.STAGING$create_synonyms_of_list
(
	@synonyms   ddl$type_object_name_list READONLY,
	@tablenames ddl$type_object_name_list READONLY
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @count	INT,
			@i		INT=1

	SELECT @count=COUNT(1) FROM @synonyms

	IF @count=0 
		RETURN;

	WHILE(@I <= @count)
	BEGIN
		DECLARE @synonymname VARCHAR(500),
				@tablename	 VARCHAR(500);
		SELECT @synonymname = OBJECTNAME FROM @synonyms WHERE row = @i;
		
		SELECT @tablename = OBJECTNAME FROM @tablenames WHERE row = @i;
		
		EXEC dbo.STAGING$create_synonym	@synonymname, @tablename

		SET @i=@i+1
	END
END;
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING$restore_synonyms
-- Description : This function returns all foreign keys referencing the live tables
--               assigned to staging group with given uuid.
-- Input       : aStagingGroupID - the uuid of staging group
-- Output      : a list of foreign keys
-- example		: EXEC  STAGING$restore_synonyms 'PrMKgzxpzCQAAAFdZ4UdBFA8'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE  dbo.STAGING$restore_synonyms
(
	@groupid VARCHAR(100)
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @synonyms			DDL$type_object_name_list,
			@tablenames			DDL$type_object_name_list,
			@msg				VARCHAR(500);
		
	IF @groupid IS NULL 
	BEGIN
		EXEC  LOGGER$log 'Mandatory input parameter ''groupid'' is null.', 0;
		RETURN;
	END 

	SET @msg='Switch all synonyms belonging to staging group with uuid == '+@groupid
	EXEC  LOGGER$log @msg, 0
		
	INSERT INTO @synonyms
		SELECT t.TABLENAME 
		FROM (SELECT TABLENAME, dbo.STAGING$get_table_name(TABLENAME, LIVETABLENAMESUFFIX) LIVETABLENAME FROM STAGINGTABLE(NOLOCK) WHERE PREPARATIONFLAG = 1 AND STAGINGGROUPID = @groupid) t
		LEFT OUTER JOIN sys.synonyms s ON (t.tablename=s.name COLLATE database_default)
		WHERE s.base_object_name IS NULL OR s.base_object_name<>t.livetablename;

	INSERT INTO @tablenames
		SELECT t.LIVETABLENAME 
		FROM (SELECT TABLENAME, dbo.STAGING$get_table_name(TABLENAME, LIVETABLENAMESUFFIX) LIVETABLENAME FROM STAGINGTABLE(NOLOCK) WHERE PREPARATIONFLAG = 1 AND STAGINGGROUPID = @groupid) t
		LEFT OUTER JOIN sys.synonyms s ON (t.tablename=s.name COLLATE database_default)
		WHERE s.BASE_OBJECT_NAME IS NULL OR s.BASE_OBJECT_NAME <> t.LIVETABLENAME;
		
	EXEC dbo.STAGING$create_synonyms_of_list	@synonyms, @tablenames

END;
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING$restore_synonyms2
-- Description : This procedure is used to switch given synonym.
-- Input       : synonyms   - the list of synonyms
--               tablenames - the list of tablenames
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE  dbo.STAGING$restore_synonyms2
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @synonyms		DDL$type_object_name_list ,
			@tablenames		DDL$type_object_name_list ,
			@msg			VARCHAR(500),
			@query			NVARCHAR(500);

	SET @msg='Restoring all synonyms...';

	EXEC  LOGGER$log @msg, 0
	SET @query = CONCAT('SELECT t.TABLENAME 
		FROM (SELECT TABLENAME, dbo.STAGING$get_table_name(TABLENAME, LIVETABLENAMESUFFIX) LIVETABLENAME FROM ', SCHEMA_NAME(), '.STAGINGTABLE(NOLOCK) WHERE PREPARATIONFLAG = 1 ) t
		LEFT OUTER JOIN sys.synonyms s ON (t.TABLENAME=s.name)
		WHERE s.BASE_OBJECT_NAME IS NULL OR PARSENAME(s.BASE_OBJECT_NAME, 1) <> t.LIVETABLENAME');
	INSERT INTO @synonyms
		EXEC SQL_UTIL$execute3 @query 

	SET @query = CONCAT('SELECT t.livetablename 
		FROM (SELECT TABLENAME, dbo.STAGING$get_table_name(TABLENAME, LIVETABLENAMESUFFIX) LIVETABLENAME FROM ', SCHEMA_NAME(), '.STAGINGTABLE(NOLOCK) WHERE PREPARATIONFLAG = 1 ) t
		LEFT OUTER JOIN sys.synonyms s ON (t.TABLENAME = s.name)
		WHERE s.BASE_OBJECT_NAME IS NULL OR PARSENAME(s.BASE_OBJECT_NAME, 1) <> t.LIVETABLENAME');
    INSERT INTO @tablenames
		EXEC SQL_UTIL$execute3 @query 

	EXEC dbo.STAGING$create_synonyms_of_list @synonyms, @tablenames 	

	SET @msg='Restoring all synonyms.....Ok!'
	EXEC  LOGGER$log 	@msg, 0
END;
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING$get_live_tables
-- Description : This function returns all shadow tables of given staging group.
-- Input       : aStagingGroupID - the uuid of staging group
-- Output      : a list of foreign keys
--example		: SELECT   dbo.STAGING$get_live_tables ('PrMKgzxpzCQAAAFdZSUdBFA8')
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.[STAGING$get_live_tables]
(
	@aStagingGroupID VARCHAR(100)
)
RETURNS VARCHAR(400)
AS
BEGIN
	DECLARE @TABL VARCHAR(300)
	SELECT @TABL =dbo.STAGING$get_table_name(tablename, livetablenamesuffix)
	FROM STAGINGGROUP g(NOLOCK)
	INNER JOIN STAGINGTABLE t(NOLOCK) ON (g.uuid=t.staginggroupid)
	WHERE g.uuid=@aStagingGroupID;
	RETURN @TABL
END;
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING$get_live_table_refs
-- Description : This function returns all foreign keys referencing the live tables
--               assigned to staging group with given uuid.
-- Input       : aStagingGroupID - the uuid of staging group
-- Output      : a list of foreign keys
-- example		: exec  dbo.STAGING$get_live_table_refs 'PrMKgzxpzCQAAAFdZ4UdBFA8'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE  dbo.STAGING$get_live_table_refs
(
	@aStagingGroupID VARCHAR(100)
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @DDL_type_object_name_list DDL$type_object_name_list,
			@count INT;

	INSERT INTO @DDL_type_object_name_list
		SELECT dbo.STAGING$get_live_tables(@aStagingGroupID);

	SELECT @count=COUNT(1) FROM  @DDL_type_object_name_list;

	IF(@count=0)
	RETURN;

	DECLARE @columnList VARCHAR(4000),
			@sqlQuery NVARCHAR(MAX),
			@objectname	VARCHAR(4000);

	SELECT  @columnList =dbo.DDL$get_cons_columns_str('C');

	SELECT 	@objectname= STUFF((
							SELECT ',' + ''''+T.objectname+''''
							FROM @DDL_type_object_name_list T
							WHERE T.row = T1.row
							ORDER BY T.objectname
							FOR XML PATH('')),1,1,''
						) 
						FROM @DDL_type_object_name_list T1
						GROUP BY row;

	SELECT @sqlQuery ='SELECT '+@columnList +' FROM   INFORMATION_SCHEMA.TABLE_CONSTRAINTS C 
						INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE KCU 
						ON C.CONSTRAINT_SCHEMA = KCU.CONSTRAINT_SCHEMA 
						AND C.CONSTRAINT_NAME = KCU.CONSTRAINT_NAME 
						INNER JOIN INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS RC 
						ON C.CONSTRAINT_SCHEMA = RC.CONSTRAINT_SCHEMA 
						AND C.CONSTRAINT_NAME = RC.CONSTRAINT_NAME 
						INNER JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS C2 
						ON RC.UNIQUE_CONSTRAINT_SCHEMA = C2.CONSTRAINT_SCHEMA 
						AND RC.UNIQUE_CONSTRAINT_NAME = C2.CONSTRAINT_NAME 
						INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE KCU2 
						ON C2.CONSTRAINT_SCHEMA = KCU2.CONSTRAINT_SCHEMA 
						AND C2.CONSTRAINT_NAME = KCU2.CONSTRAINT_NAME 
						AND KCU.ORDINAL_POSITION = KCU2.ORDINAL_POSITION 
						WHERE  C.CONSTRAINT_TYPE = ''FOREIGN KEY'' AND C.TABLE_NAME in ('+@objectname+')';

	EXECUTE SP_EXECUTESQL @sqlQuery;

END;
GO

IF TYPE_ID(N'STAGING$type_staging_table_ROWTYPE') IS NULL
BEGIN
	CREATE TYPE dbo.STAGING$type_staging_table_ROWTYPE
	AS TABLE (row INT IDENTITY(1,1),
				[TABLENAME] [NVARCHAR](30),
				[DOMAINSPECIFICFLAG] [NUMERIC](11, 0),
				[READONLYFLAG] [NUMERIC](11, 0),
				[FOREIGNKEYNAME] [NVARCHAR](50),
				[COLUMNNAMEOFDOMAINID] [NVARCHAR](30),
				[CARTRIDGENAME] [NVARCHAR](50),
				[LIVETABLENAMESUFFIX] [NVARCHAR](2),
				[STAGINGGROUPID] [NVARCHAR](28),
				[PREPARATIONFLAG] [NUMERIC](11, 0),
				[PREPARERNAME] [NVARCHAR](1000),
				[UUID] [NVARCHAR](28),
				[DOMAINID] [NVARCHAR](28),
				[OCA] [NUMERIC](11, 0),
				[LASTMODIFIED] [DATETIME2](7))
END
GO

------------------------------------------------------------------------------------------
-- Name        : STAGING$switch_references
-- Description : This procedure switches all foreign keys referencing staging tables
--               belonging to staging group with given UUID.
-- Input       : groupid   - the UUID of staging group
-- Output      : none
-- Example     : exec dbo.STAGING$switch_references 'UBMKAB3MZfoAAAD0OymCGwAO'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE  dbo.STAGING$switch_references
(
	@groupid VARCHAR(4000)
)
AS
BEGIN
	DECLARE @sql_Query		NVARCHAR(MAX),
			@refs			DDL$type_constraints,
			@ref_cols		DDL$type_object_name_list,
			@pk				DDL$type_constraints,
			@pk_cols		DDL$type_object_name_list,
			@name			VARCHAR(4000),
			@suffix			VARCHAR(4000),
			@st				STAGING$type_staging_table_ROWTYPE,
			@msg			VARCHAR(500),
			@count			INT = 1,
			@i				INT;

	IF @groupid IS NULL 
	BEGIN
		EXEC  LOGGER$log 'Mandatory input parameter ''groupid'' is null.', 0;
		RETURN;
	END 

	SET @msg='Switch all foreign keys referencing tables of staging group with uuid = ' + @groupid
	EXEC  LOGGER$log @msg, 0
	
	INSERT INTO @refs
		EXEC dbo.STAGING$get_live_table_refs @groupid

	SELECT @i=COUNT(1) FROM  @refs

	IF @i =0
	BEGIN
		SET @msg='Staging group ''' + @groupid + ''' is not referenced by other tables.'
		EXEC  LOGGER$log @msg, 0
		RETURN;
	END
         
	WHILE(@count<=@i)
	BEGIN
		DECLARE @constraint_Name VARCHAR(100),
				@table_Name VARCHAR(100);
		SELECT @constraint_Name = CONSTRAINT_NAME FROM @refs WHERE ROW = @count;
		SELECT @table_Name = TABLE_NAME FROM @refs WHERE ROW = @count;

		INSERT INTO  @ref_cols
			EXEC DDL$get_cons_columns @constraint_Name

		--DECLARE @ref_cols_Constraintname DDL_type_object_name_list
		--SELECT @ref_cols_Constraintname =objectName FROM @ref_cols

		INSERT INTO @pk
			EXEC DDL$get_constraint  @constraint_Name,''

		DECLARE @pk_Contraint_Name VARCHAR(50),
				@pk_Table_Name  VARCHAR(50);
	
		SELECT @pk_Contraint_Name =CONSTRAINT_NAME FROM @pk WHERE ROW = @count;
		
		SELECT @pk_Table_Name =TABLE_NAME FROM @pk WHERE ROW = @count

		INSERT INTO @pk_cols
			EXEC DDL$get_cons_columns @pk_Contraint_Name

		--DECLARE @pk_cols_Constraintname VARCHAR(200)
		--SELECT @pk_cols_Constraintname =objectName FROM @pk_cols
		INSERT INTO @st
			SELECT * FROM STAGINGTABLE(NOLOCK) WHERE dbo.STAGING$get_table_name(TABLENAME, LIVETABLENAMESUFFIX) = @pk_Table_Name;

		DECLARE @st_Table_Name  VARCHAR(50),
				@st_Live_Table_Name_Suffix  VARCHAR(50);
	
		SELECT @st_Table_Name=TABLENAME FROM @st WHERE ROW = @count;
	
		SELECT @st_Live_Table_Name_Suffix =LIVETABLENAMESUFFIX FROM @st WHERE ROW = @count;

		SELECT @suffix = SUBSTRING(@pk_Table_Name, LEN(@pk_Table_Name)-1, LEN(@pk_Table_Name))
	
		SELECT @name= dbo.STAGING$get_table_name(@st_Table_Name,dbo.STAGING$switch_suffix(@st_Live_Table_Name_Suffix))
			
		-- drop old constraint and create same constraint to future live table
		SET @sql_Query=CONCAT('ALTER TABLE ',@table_Name,' DROP CONSTRAINT ',@constraint_Name,';');
		EXECUTE sp_executesql @sql_Query

		SET @sql_Query=CONCAT(
				'ALTER TABLE ', @table_Name, ' ADD CONSTRAINT ', @constraint_name,
				'FOREIGN KEY (' , dbo.DDL$to_string(@ref_cols),') REFERENCES ', @name, ' (',dbo.DDL$to_string(@pk_cols), ')'
			)
		SET @count = @count+1;
	END
END;
GO
------------------------------------------------------------------------------------------
-- Name        : update_table
-- Description : updates given content in given table. Depending on table is a staging table
--               the update statement will be performed in $1/$2 table.
-- Input       : table_name - name of table
--               update_clause - the update clause
--               ignoreErrorCode - the error which should be ignored.
-- Example     : EXEC STAGING$update_table 'DOMAININFORMATION', 'SET domainname=''aname'' WHERE uuid=''asdfsadfsdf'''
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE  dbo.STAGING$update_table
(
	@table_name VARCHAR(4000),
	@update_clause VARCHAR(4000),
	@ignoreErrorCode  INT = 0
)
AS
BEGIN
	EXEC STAGING$execute 'UPDATE ', @table_name, @update_clause, @ignoreErrorCode
END;
GO
------------------------------------------------------------------------------------------
-- Name        : get_editing_object
-- Description : builds the object name using parameters
-- Input       : name - the object name
--               editing_schema_name - name of editing schema
--               db_link_name - name of database link
-- Output      : the editing object name
-- Example     : exec STAGING$get_editing_object('DOMAIN', NULL, 'ISEDITING')
--               select  dbo.STAGING$get_editing_object ('process', 'INTERSHOP_EDIT', NULL)
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.STAGING$get_editing_object
(
	@name  VARCHAR(200),
	@editing_schema_name VARCHAR(200),
	@db_link_name VARCHAR(200)
)  
RETURNS VARCHAR(500)   
AS   
BEGIN  
	DECLARE @result VARCHAR(200)
	IF @editing_schema_name IS NOT NULL AND LEN(@editing_schema_name)>0 
	BEGIN
		SET @result = @editing_schema_name +'.'+ @name;
	END 
	ELSE IF (@db_link_name IS NOT NULL AND LEN(@db_link_name)>0)
	BEGIN
		SET @result = CONCAT(@name, '@', @db_link_name);
	END
	ELSE
	BEGIN
		SET @result =@name;
	END
	
	RETURN @result
END
GO
------------------------------------------------------------------------------------------
-- Name        : get_staging_table
-- Description : This function returns the staging table with given name.
-- Input       : name - the name of staging table
-- Output      : the staging table
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING$get_staging_table
(
	@name  STAGING$type_switch_synonyms READONLY
)
AS   
BEGIN  
	DECLARE @object_name VARCHAR(30) ;
	SELECT  @object_name = objectName FROM @name;

	SELECT *  FROM STAGINGTABLE(NOLOCK) WHERE TABLENAME = UPPER(@object_name);	       
END
GO
------------------------------------------------------------------------
-- Name        : STAGING$switch_synonyms_of_list
-- Name        : drop_constraints
-- Description : This procedure is used to drop all constraints defined by given list.
-- Input       : constraints - list of constraints
--Example      :exec dbo.STAGING$switch_synonyms_of_list ''
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING$switch_synonyms_of_list 
(
	@synonyms STAGING$type_switch_synonyms readonly
)
AS
BEGIN
	DECLARE @aStagingTable     STAGING$type_staging_table_ROWTYPE,
			@new_table_name    VARCHAR(30),
			@count				INT,
			@i					INT = 1,
			@tableName			VARCHAR(200);
		
	SELECT @count=COUNT(1) FROM @synonyms;
	IF(@count = 0)
		RETURN
		
	WHILE(@i<=@count)
	BEGIN
		DECLARE @liveTableNameSuffix VARCHAR(30);
		SELECT  @tableName =objectName FROM  @synonyms WHERE row = @i;
		INSERT INTO @aStagingTable
			EXEC dbo.STAGING$get_staging_table @synonyms

		SELECT @liveTableNameSuffix = LIVETABLENAMESUFFIX FROM @aStagingTable
		SELECT @new_table_name=dbo.STAGING$GET_TABLE_NAME(@tableName,dbo.STAGING$switch_suffix(@liveTableNameSuffix))

		EXEC STAGING$create_synonym @tableName, @new_table_name;

		SET @i=@i+1
	END
END;
GO
-----------------------------------------------------------------------------------------
-- Name        : STAGING$switch_synonyms
-- Description : This procedure switches all synonyms of staging tables belonging to
--               staging group with given UUID.
-- Input       : groupid   - the UUID of staging group
-- Output      : none
-- Example     : EXEC STAGING$switch_synonyms 'UBMKAB3MZfoAAAD0OymCGwAO'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING$switch_synonyms 
(
	@groupid VARCHAR(500)							
)
AS
BEGIN
	DECLARE @synonyms VARCHAR(200),
			@msg VARCHAR(2000);
	DECLARE @STAGING_type_switch_synonyms STAGING$type_switch_synonyms;
	IF (@groupid IS NULL)
	BEGIN
		SET @msg ='Mandatory input parameter ''groupid'' is null.';
		EXEC LOGGER$log @msg, 0
		RETURN
	END	
	SET @msg='Switch all synonyms belonging to staging group with uuid = ' + @groupid
	
	EXEC dbo.LOGGER$log @msg, 0

	INSERT INTO @STAGING_type_switch_synonyms
		SELECT tablename FROM STAGINGTABLE(NOLOCK) WHERE PREPARATIONFLAG = 1 AND STAGINGGROUPID = @groupid
	
	EXEC dbo.STAGING$switch_synonyms_of_list @STAGING_type_switch_synonyms;
	
END;
GO
------------------------------------------------------------------------------------------
-- Name        : STAGING$get_live_table_cons
-- Description : This function returns all foreign keys referencing the live tables
--               assigned to staging group with given uuid.
-- Input       : aStagingGroupID - the uuid of staging group
-- Output      : a list of foreign keys
-- example		: exec  dbo.STAGING$get_live_table_cons 'PrMKgzxpzCQAAAFdZSUdBFA8',''
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE  dbo.STAGING$get_live_table_cons
(
	@aStagingGroupID VARCHAR(100),
	@aType VARCHAR(100)
)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @DDL_type_object_name_list DDL$type_object_name_list,
			@count INT;

	INSERT INTO @DDL_type_object_name_list
		SELECT  dbo.STAGING$get_live_tables(@aStagingGroupID 	)

	SELECT @count=COUNT(1) FROM  @DDL_type_object_name_list

	IF(@count=0)
		RETURN;

	DECLARE @columnList VARCHAR(4000),
			@sqlQuery NVARCHAR(MAX),
			@objectname	VARCHAR(4000);
	SELECT  @columnList =dbo.DDL$get_cons_columns_str('C')

	SELECT 	@objectname= STUFF((
					SELECT ',' + ''''+T.objectname+''''
					FROM @DDL_type_object_name_list T
					WHERE T.row = T1.row
					ORDER BY T.objectname
					FOR XML PATH('')),1,1,'') 
					FROM @DDL_type_object_name_list T1
					GROUP BY row;
	SELECT @sqlQuery = CONCAT('SELECT ', @columnList, ' FROM   INFORMATION_SCHEMA.TABLE_CONSTRAINTS C WHERE C.TABLE_NAME in (', @objectname, ')');
	EXECUTE SP_EXECUTESQL @sqlQuery	     
END;
GO
-----------------------------------------------------------------------------------------
-- Name        : STAGING$create_synonyms
-- Description : This procedure switches all synonyms returned by given query for
--               staging gropu with given identifier.
-- Input       : query     - the query returning the synonym name and new table name
--               groupid   - the UUID of staging group
-- Output      : none
--Example      : EXEC STAGING$create_synonyms 'SELECT ''A'',''B'' WHERE ''1''','1'
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.STAGING$create_synonyms
(			
	@query		NVARCHAR(MAX),
	@groupid	VARCHAR(100)
)
AS
BEGIN
	DECLARE @sqlQuery		NVARCHAR(MAX),
			@aSynonymName	VARCHAR(256),
			@aTableName		VARCHAR(256),
			@count			INT,
			@i				INT=1;
			
	IF @query IS NULL 
	BEGIN
		EXEC LOGGER$log 'Mandatory input parameter "query" is null.', 0;
		RETURN;
	END
        
	IF @groupid IS NULL 
	BEGIN
		EXEC LOGGER$log 'Mandatory input parameter "groupid" is null.', 0;
		RETURN;
	END
		
	DECLARE @synonym TABLE 
	(
		rowid INT IDENTITY(1,1),
		SynonymName VARCHAR(256),
		TableName VARCHAR(256)
	);
	--'Insert into #synonym(SynonymName,TableName) SELECT ''A'',''B'' FROM ABCDEMO WHERE @groupid='
	SET @sqlQuery = CONCAT(@query, '''', @groupid, '''')
	INSERT INTO @synonym
		EXECUTE SQL_UTIL$execute3 @sqlQuery 

	IF(SELECT COUNT(1) FROM @synonym) = 0
		RETURN;

	SELECT @count=COUNT(1) FROM @synonym
	WHILE(@i<=@count)
	BEGIN
		SELECT @aSynonymName = SynonymName, @aTableName = TableName FROM @synonym WHERE rowid = @i
		EXEC STAGING$create_synonym @aSynonymName, @aTableName
		SET @i=@i+1;
	END
	
END;
GO