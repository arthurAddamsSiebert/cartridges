------------------------------------------------------------------------------------------
-- Name        : DDL$ENABLE_CONSTRAINTS_type_constraints
-- Description : The table type is created to pass an array input to Functions.
------------------------------------------------------------------------------------------
IF TYPE_ID(N'DDL$ENABLE_CONSTRAINTS_type_constraints') IS NULL
BEGIN
	CREATE TYPE DDL$ENABLE_CONSTRAINTS_type_constraints
	AS TABLE (
				row					INT IDENTITY(1,1),
				CONSTRAINT_CATALOG  VARCHAR(100),
				CONSTRAINT_SCHEMA	VARCHAR(100),
				CONSTRAINT_NAME		VARCHAR(100),
				R_CONSTRAINT_NAME	VARCHAR(100),
				TABLE_CATALOG		VARCHAR(100),
				TABLE_SCHEMA		VARCHAR(100),
				TABLE_NAME			VARCHAR(100),
				CONSTRAINT_TYPE		VARCHAR(100),
				IS_DEFERRABLE		VARCHAR(100),
				INITIALLY_DEFERRED  VARCHAR(100),
				STATUS				BIT
			)
END
GO
------------------------------------------------------------------------------------------
-- Name        : ConstraintList
-- Description : The table type is created to pass an array input to Functions.
------------------------------------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM sys.types WHERE is_table_type = 1 AND name ='TypeTableColumns')
CREATE TYPE TypeTableColumns AS TABLE 
(
	ID		  INT IDENTITY,
	TableName VARCHAR(256),
	ColumnName VARCHAR(256),
	DataType	VARCHAR(100)
)
GO 
------------------------------------------------------------------------------------------
-- Name        : ConstraintList
-- Description : The table type is created to pass an array input to Functions.
------------------------------------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM sys.types WHERE is_table_type = 1 AND name ='ConstraintList')
	CREATE TYPE ConstraintList AS TABLE (TableName VARCHAR(256), ConstraintName VARCHAR(256))
GO 
------------------------------------------------------------------------------------------
-- Name        : ColumnListType
-- Description : The table type is created to pass an array input to Functions.
------------------------------------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM sys.types WHERE is_table_type = 1 AND name ='ColumnListType')
	CREATE TYPE ColumnListType AS TABLE (ColumnName VARCHAR(200))
GO
------------------------------------------------------------------------------------------
-- Name        : DDL$type_constraints
-- Description : Creates types to be passed as a input table in procedure.
------------------------------------------------------------------------------------------
IF TYPE_ID(N'DDL$type_constraints') IS NULL
BEGIN
		CREATE TYPE DDL$type_constraints
		AS TABLE (row int identity(1,1),
					CONSTRAINT_CATALOG  VARCHAR(100),
					CONSTRAINT_SCHEMA  VARCHAR(100),
					CONSTRAINT_NAME  VARCHAR(100),
					TABLE_CATALOG  VARCHAR(100),
					TABLE_SCHEMA  VARCHAR(100),
					TABLE_NAME  VARCHAR(100),
					CONSTRAINT_TYPE  VARCHAR(100),
					IS_DEFERRABLE  VARCHAR(100),
					INITIALLY_DEFERRED  VARCHAR(100)
				)
END
GO
------------------------------------------------------------------------------------------
-- Name        : DDL$type_object_name_list
-- Description : Creates types to be passed as a input table in procedure.
------------------------------------------------------------------------------------------
IF TYPE_ID(N'DDL$type_object_name_list') IS NULL
BEGIN
	CREATE TYPE DDL$type_object_name_list AS TABLE (row INT IDENTITY(1,1), objectName VARCHAR(100))
END
GO 
------------------------------------------------------------------------------------------
-- Name        : DDL$type_constraints_list
-- Description : Creates types to be passed as a input table in procedure.
------------------------------------------------------------------------------------------
IF TYPE_ID(N'DDL$type_constraints_list') IS NULL
BEGIN
	CREATE TYPE DDL$type_constraints_list AS TABLE (row INT IDENTITY(1,1), objectName VARCHAR(100), objectConstraint varchar(100))
END
GO
------------------------------------------------------------------------------------------
-- Name			: DDL$get_domainid 
-- Description	: Returns the domainid for domain with given name
-- Input		: aDomainName - a domain name
-- Output		: The domain identifier of domain with given name.
-- Example		: SELECT dbo.DDL$get_domainid('abc')
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION DDL$get_domainid 
(
	@aDomainName VARCHAR(200)
)
RETURNs VARCHAR(200)
AS
BEGIN
	DECLARE @aDomainID VARCHAR(30);

	SELECT @aDomainID = DOMAINID FROM  DOMAININFORMATION(NOLOCK) WHERE DOMAINNAME = @aDomainName

	RETURN @aDomainID;
END;
GO
------------------------------------------------------------------------------------------
-- Name        : get_string_preference
-- Description : Returns the string value of given preference.
-- Input       : aName       - the preference name
--               aDomainName - a domain name
-- Output      : The value of given preference.
-- Example     : SELECT dbo.DDL$get_string_preference ('abc','abcd')
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION DDL$get_string_preference 
(
	@aName VARCHAR(256), 
	@aDomainName VARCHAR(256)
)
RETURNS VARCHAR(4000)
AS        
BEGIN
	DECLARE @aValue VARCHAR(4000),
			@aDomainID VARCHAR(30);

	SELECT @aDomainID = dbo.DDL$get_domainid(@aDomainName);
	SELECT @aValue = STRINGVALUE FROM PREFERENCE(NOLOCK) WHERE PREFERENCENAME = @aName AND DOMAINID = @aDomainID
	RETURN @aValue;
END;
GO

------------------------------------------------------------------------------------------
-- Name        : set_string_preference
-- Description : Returns the string value of given preference.
-- Input       : aName       - the preference name
--               aDomainName - a domain name
-- Output      : The value of given preference.
--Example		: exec DDL$set_string_preference 'a','b','v'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$set_string_preference 
(
	@aName VARCHAR(256),
	@aDomainName VARCHAR(256),
	@aValue VARCHAR(4000)
)
AS        
BEGIN
	SET NOCOUNT ON ;
	DECLARE @aDomainID VARCHAR(30);
	SELECT @aDomainID = dbo.DDL$get_domainid(@aDomainName);
	UPDATE PREFERENCE WITH(ROWLOCK) SET STRINGVALUE = @aValue WHERE PREFERENCENAME = @aName AND DOMAINID = @aDomainID
END;
GO
------------------------------------------------------------------------
-- Name        : DDL$set_fk_constraint_properties
-- Description : This method is used to set the 'EnableFKConstraints' and
--               'ValidateFKConstraints' property  for foreign key constraints
--               within preferences for Domain 'system'.
-- Input       : enable_value - 'true' or 'false', default is 'true'
-- Input       : validate_value - 'true' or 'false', default is 'true'
-- Example	   : EXEC DDL$set_fk_constraint_properties 'true', 'true'
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$set_fk_constraint_properties
(
	@enable_value VARCHAR(4000) = 'true',
	@validate_value VARCHAR(4000) = 'true'
)
AS
BEGIN
    -- enable value
	SET @enable_value = LOWER(@enable_value)
    EXEC DDL$set_string_preference 'EnableFKConstraints', 'system', @enable_value;
    -- validate  value
	SET @validate_value = LOWER(@validate_value)
    EXEC DDL$set_string_preference 'ValidateFKConstraints', 'system', @validate_value;
END;
GO
------------------------------------------------------------------------------------------
-- Name        : DDL$to_string
-- Description : Returns string representation of object list
-- Input       : none
-- Output      : string representation of given object name list
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION DDL$to_string
(
	@objects DDL$type_object_name_list READONLY
)
RETURNS VARCHAR(4000)
AS
BEGIN
	--RETURN 'ABC'
	DECLARE @str				VARCHAR(4000) = NULL,
			@NumberofUserType	INT;
	SET @NumberofUserType = (SELECT  COUNT(*)  FROM @objects)

	IF @NumberofUserType = 0 
	BEGIN
		EXEC LOGGER$log 'No objects found.', 0;
		RETURN NULL;
	END
	ELSE
	BEGIN
		DECLARE @I INT = 1;
		WHILE(@I <= @NumberofUserType)
		BEGIN
			DECLARE @subString VARCHAR(100);
			SELECT @subString = objectName FROM @objects WHERE row = @I
			SET @str = CONCAT(@str, ',', ISNULL(@subString,''))
			SET @I = @I + 1;
		END
	END 
	RETURN SUBSTRING(@str, 2,LEN(@str));
END;
GO
------------------------------------------------------------------------------------------
-- Name        : DDL$get_cons_columns_str
-- Description : This function returns the comma separated list of constraints columns
-- Input       : the prefix before each column name
-- Output      : the constraints columns
--exec			:select dbo.DDL$get_cons_columns_str('p')
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION DDL$get_cons_columns_str
(
	@p VARCHAR(4000) = ''
)
RETURNS VARCHAR(4000)
BEGIN
	DECLARE @string VARCHAR(4000)='CONSTRAINT_CATALOG,CONSTRAINT_SCHEMA,CONSTRAINT_NAME,TABLE_CATALOG,TABLE_SCHEMA,TABLE_NAME,CONSTRAINT_TYPE,IS_DEFERRABLE,INITIALLY_DEFERRED'
	IF(@p = '')
		RETURN @string 
	ELSE
	BEGIN
		SELECT @string =REPLACE(@string, ',', ',' + @p + '.')
		SELECT @string =STUFF(@string, 1, 0, '' + @p + '.')
	END
	RETURN @string
END
GO
------------------------------------------------------------------
--Name        : DDL$create_object_name_list
--Description : To create object name list based on the tablename and query.
--Input       :                   
--Output      : 
--Example	  : EXEC dbo.DDL$create_object_name_list 'myproduct', 'myproduct'
------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$create_object_name_list 
(
	@query NVARCHAR(1000),
	@aTableName VARCHAR(256) = ''
)
AS
BEGIN
	EXEC SQL_UTIL$execute3 @query;
END
GO
------------------------------------------------------------------
--Name        : DDL$create_constraints_list
--Description : To create object name list based on the tablename and query.
--Input       :                   
--Output      : 
--Example	  : EXEC dbo.DDL$create_constraints_list 'myproduct', 'myproduct'
------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$create_constraints_list 
(
	@query NVARCHAR(1000),
	@aTableName VARCHAR(256)
)
AS
BEGIN
	EXEC SQL_UTIL$execute3 @query;
END
GO
------------------------------------------------------------------------
-- Name        : DDL$get_staging_fk_constraints
-- Description : This method returns all foreign keys referencing staging tables.
-- Output      : the list of all foreign keys
--Example      :exec DDL$get_staging_fk_constraints 'C'
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$get_staging_fk_constraints 
(
	@prefix  VARCHAR(100)
)
AS
BEGIN
	
	DECLARE @columnList VARCHAR(4000),
	@sqlQuery NVARCHAR(MAX)
	
	SELECT  @columnList =dbo.DDL$get_cons_columns_str('C')

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
						WHERE  C.CONSTRAINT_TYPE = ''FOREIGN KEY'' AND  (C.table_name LIKE ''%$1'' OR C.table_name LIKE ''%$2'')'
	EXEC SQL_UTIL$execute3 @sqlQuery
END;
GO
------------------------------------------------------------------------
-- Name        : DDL$is_recyclebin
-- Description : The recycle bin concept does not exist in SQL Server, it will always return 0.
-- Input       : @i 
-- Example     : SELECT dbo.DDL$is_recyclebin(1)
------------------------------------------------------------------------
CREATE OR ALTER FUNCTION DDL$is_recyclebin
(
	@i NUMERIC(1)
)
RETURNS  INT
AS
BEGIN
	RETURN 0;
END;
GO
------------------------------------------------------------------------------------------
-- Name        : DDL$is_synonym
-- Description : This function returns true if given object is an synonym.
-- Input       : objectName - the object name
-- Output      : true if given object is a synonym
-- Example     : SELECT dbo.DDL$is_synonym('abc')
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION DDL$is_synonym
(
     @objectName varchar(100)
)
RETURNS INT
AS
BEGIN
    DECLARE @i INT;
	SELECT @i = COUNT(*) FROM  sys.synonyms WHERE [name] = UPPER(@objectName);
    RETURN 
		CASE 
            WHEN @i > 0 THEN 1
            ELSE 0
         END;
END;
GO
------------------------------------------------------------------------------------------
-- Name        : DDL$is_object_exists
-- Description : This function returns TRUE if given object exists.
-- Input       : objectName - the object name
-- Input       : objectType - the object type or null
-- Output      : TRUE if given object of type exists.
-- Example	   : SELECT dbo.DDL$is_object_exists('USER_SYNONYMS',NULL)
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.DDL$is_object_exists 
( 
	@objectName VARCHAR(MAX),
	@objectType VARCHAR(MAX) = NULL
)
RETURNS BIT
AS
BEGIN
	DECLARE	@aCnt BIGINT;
	IF @objectType IS NULL
		SELECT @aCnt = COUNT_BIG(*) FROM sys.objects WHERE UPPER(name) = UPPER(@objectName);
	ELSE
		SELECT @aCnt = COUNT_BIG(*)	FROM sys.objects WHERE UPPER(name) = UPPER(@objectName) AND TYPE = UPPER(@objectType);

	RETURN
		CASE 
			WHEN @aCnt > 0 THEN 
				1
			ELSE 
				0
		END;
END
GO
------------------------------------------------------------------------
-- Name        : DDL$get_constraints 
-- Description : This method returns a list of object names returned
--               by given query.
-- Input       : query     - the object name query
--               @aTableName - a TABLE value
-- Output      : the list of object names
--Example	   : EXEC DDL$get_constraints 'myproduct','',''
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$get_constraints 
(
	@aTableName VARCHAR(100),
	@aType VARCHAR(200),
	@prefix VARCHAR(200)
)
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(MAX),
			@contraintsColumns VARCHAR(4000) = dbo.DDL$get_cons_columns_str('');
   
	SELECT @aType = CASE
						WHEN @aType='PK' THEN 'PRIMARY KEY' 
				 		WHEN @aType ='F' THEN 'FOREIGN KEY'
						WHEN @aType='UQ'  THEN 'UNIQUE'
					END 	
					
	IF @aType IS NOT NULL
		SET @sqlQuery = CONCAT('SELECT ', @contraintsColumns, ' FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_TYPE=''', @aType, ''' AND  TABLE_NAME');
  	ELSE 
		SET @sqlQuery = CONCAT('SELECT ', @contraintsColumns, ' FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE TABLE_NAME');

	DECLARE @exist INT = dbo.DDL$is_synonym(@aTableName);

	IF (@exist=0)
	BEGIN
		SET @sqlQuery = CONCAT(@sqlQuery, '=''', @aTableName, '''');
	END
	ELSE
	BEGIN
		DECLARE @actual_table VARCHAR(200)
		SELECT @actual_table = parsename(base_object_name, 1) FROM sys.synonyms WHERE NAME = CAST(@aTableName AS VARCHAR(200))
		SET @sqlQuery = CONCAT(@sqlQuery, '=''', @actual_table, '''');
	END
	
	EXEC SQL_UTIL$execute3 @sqlQuery;
END
GO
------------------------------------------------------------------------------------------
-- Name        : DDL$execute
-- Description : This procedure is used to drop given materialized view.
-- Input       : name  - the name of materialized view
-- Example     : EXEC DDL$execute 'SELECT * FROM DEMO'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$execute(@stmt NVARCHAR(MAX))
AS
BEGIN
    EXEC SQL_UTIL$executeDDL @stmt, -1;
END
GO
------------------------------------------------------------------------
-- Name        : DDL$drop_procedure
-- Description : This procedure is used to drop all constraints defined by given list.
-- Input       : constraints - list of constraints
--Example      :exec DDL$drop_procedure 'DDL$drop_procedure'
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$drop_procedure
(			
	@name VARCHAR(100)
)
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(MAX)
			
	IF OBJECT_ID(@name, 'P') IS NOT NULL
	BEGIN
		SET @sqlQuery = CONCAT('DROP PROCEDURE IF EXISTS  ', @name, '')
		EXEC SQL_UTIL$execute @sqlQuery, -4043 
	END
END;
GO
------------------------------------------------------------------------
-- Name        : DDL$create_synonym
-- Description : This procedure is used to drop all constraints defined by given list.
-- Input       : constraints - list of constraints
--Example      :exec dbo.DDL$create_synonym 'USER_SYNONYMSTEST','USER_SYNONYMS'
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$create_synonym
(			
	@synonym_name VARCHAR(100),
	@object_name VARCHAR(100)
)
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(MAX);
			
	IF OBJECT_ID(@synonym_name, 'SN') IS NULL
	BEGIN
		SET @sqlQuery = CONCAT('CREATE SYNONYM ', @synonym_name, ' FOR ', @object_name)
		EXEC SQL_UTIL$execute3 @sqlQuery
	END	  
END;
GO
------------------------------------------------------------------------
-- Name        : DDL$drop_sequence
-- Description : This procedure is used to drop all constraints defined by given list.
-- Input       : constraints - list of constraints
--Example      :exec dbo.DDL$drop_sequence 'MyProduct'
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$drop_sequence
(			
	@name VARCHAR(100)
)
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(MAX)
			
	IF OBJECT_ID(@name, 'SO') IS NOT NULL
	BEGIN
		SET @sqlQuery = CONCAT('DROP SEQUENCE  IF EXISTS ', @name)
		EXEC SQL_UTIL$execute @sqlQuery, -2289
	END
END;
GO
------------------------------------------------------------------------------------------
-- Name        : DDL$drop_materialized_view
-- Description : This procedure is used to drop given materialized view.
-- Input       : name  - the name of materialized view
-- Example     : EXEC DDL$drop_materialized_view 'vOrders'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$drop_materialized_view(@name VARCHAR(256)) AS
BEGIN
	DECLARE @query NVARCHAR(200);
	SET @query = CONCAT('DROP VIEW IF EXISTS ', @name);
	EXEC SQL_UTIL$execute @query, -12003
END;
GO
------------------------------------------------------------------------
-- Name        : DDL$clear_table
-- Description : This procedure is used to drop all constraints defined by given list.
-- Input       : constraints - list of constraints
--Example      : exec DDL$clear_table 'test'
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$clear_table
(
	@aTableName VARCHAR(256)
)
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(300),
			@schmaName VARCHAR(256);
	SELECT @schmaName = SCHEMA_NAME(SCHEMA_ID) FROM sys.tables WHERE name = @aTableName
	IF @schmaName IS NULL 
		SET @schmaName = SCHEMA_NAME()
	IF EXISTS(SELECT 1 FROM sys.tables WHERE name = @aTableName)
	BEGIN
		SET @sqlQuery = CONCAT('TRUNCATE TABLE ', @schmaName, '.', UPPER(@aTableName)) 
		EXEC SQL_UTIL$execute3 @sqlQuery
	END
END;
GO
------------------------------------------------------------------------
-- Name        : DDL$compile_object
-- Description : Compiles given and dependent objects in database.
-- Input       : aType    - the type of object
--               anObject - the name of object
------------------------------------------------------------------------
CREATE  OR ALTER PROCEDURE [dbo].[FindDependency]
(
	@aType VARCHAR(256),
	@anObject NVARCHAR(256)
)
AS
BEGIN
	CREATE TABLE #tempdep (objid int NOT NULL, objname sysname NOT NULL, objschema sysname NULL, objdb sysname NOT NULL, objtype smallint NOT NULL)
	exec sp_executesql N'INSERT INTO #tempdep 
	SELECT
	tbl.object_id AS [ID],
	tbl.name AS [Name],
	SCHEMA_NAME(tbl.schema_id) AS [Schema],
	db_name(),
	3
	FROM
	sys.tables AS tbl
	LEFT OUTER JOIN sys.periods as periods ON periods.object_id = tbl.object_id
	LEFT OUTER JOIN sys.tables as historyTable ON historyTable.object_id = tbl.history_table_id
	WHERE
	(tbl.name=@_msparam_0 and SCHEMA_NAME(tbl.schema_id)=@_msparam_1)',N'@_msparam_0 nvarchar(4000),@_msparam_1 nvarchar(4000)',@_msparam_0= @anObject, @_msparam_1=N'dbo'

	declare @find_referencing_objects int
	set @find_referencing_objects = 1
	-- parameters:
	-- 1. create table #tempdep (objid int NOT NULL, objtype smallint NOT NULL)
	--    contains source objects
	-- 2. @find_referencing_objects defines ordering
	--    1 order for drop
	--    0 order for script

	declare @must_set_nocount_off bit
	set @must_set_nocount_off = 0

	IF @@OPTIONS & 512 = 0 
	   set @must_set_nocount_off = 1
	set nocount on

	declare @u int
	declare @udf int
	declare @v int
	declare @sp int
	declare @def int
	declare @rule int
	declare @tr int
	declare @uda int
	declare @uddt int
	declare @xml int
	declare @udt int
	declare @assm int
	declare @part_sch int
	declare @part_func int
	declare @synonym int
	declare @sequence int
	declare @udtt int
	declare @ddltr int
	declare @unknown int
	declare @pg int

	set @u = 3
	set @udf = 0
	set @v = 2
	set @sp = 4
	set @def = 6
	set @rule = 7
	set @tr = 8
	set @uda = 11
	set @synonym = 12
	set @sequence = 13
	--above 100 -> not in sys.objects
	set @uddt = 101
	set @xml = 102
	set @udt = 103
	set @assm = 1000
	set @part_sch = 201
	set @part_func = 202
	set @udtt = 104
	set @ddltr = 203
	set @unknown = 1001
	set @pg = 204

	-- variables for referenced type obtained from sys.sql_expression_dependencies
	declare @obj int
	set @obj = 20
	declare @type int
	set @type = 21
	-- variables for xml and part_func are already there

	create table #t1
	(
		object_id int NULL,
		object_name sysname collate database_default NULL,
		object_schema sysname collate database_default NULL,
		object_db sysname NULL,
		object_svr sysname NULL,
		object_type smallint NOT NULL,
		relative_id int NOT NULL,
		relative_name sysname collate database_default NOT NULL,
		relative_schema sysname collate database_default NULL,
		relative_db sysname NULL,
		relative_svr sysname NULL,
		relative_type smallint NOT NULL,
		schema_bound bit NOT NULL,
		rank smallint NULL,
		degree int NULL
	)

	-- we need to create another temporary table to store the dependencies from sys.sql_expression_dependencies till the updated values are inserted finally into #t1
	create table #t2
	(
		object_id int NULL,
		object_name sysname collate database_default NULL,
		object_schema sysname collate database_default NULL,
		object_db sysname NULL,
		object_svr sysname NULL,
		object_type smallint NOT NULL,
		relative_id int NOT NULL,
		relative_name sysname collate database_default NOT NULL,
		relative_schema sysname collate database_default NULL,
		relative_db sysname NULL,
		relative_svr sysname NULL,
		relative_type smallint NOT NULL,
		schema_bound bit NOT NULL,
		rank smallint NULL
	)

	-- This index will ensure that we have unique parent-child relationship
	create unique clustered index i1 on #t1(object_name, object_schema, object_db, object_svr, object_type, relative_name, relative_schema, relative_type) with IGNORE_DUP_KEY

	declare @iter_no int
	set @iter_no = 1

	declare @rows int
	set @rows = 1

	insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank) 
	   select l.objid, l.objname, l.objschema, l.objdb, l.objtype, l.objid, l.objname, l.objschema, l.objdb, l.objtype, 1, @iter_no from #tempdep l

	-- change the object_id of table types to their user_defined_id
	update #t1 set object_id = tt.user_type_id, relative_id = tt.user_type_id
	from sys.table_types as tt where tt.type_table_object_id = #t1.object_id and object_type = @udtt

	while @rows > 0
	begin
		set @rows = 0
		if (1 = @find_referencing_objects)
		begin
			-- HARD DEPENDENCIES
			-- these dependencies have to be in the same database only

			-- tables that reference uddts or udts
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select tbl.object_id, tbl.name, SCHEMA_NAME(tbl.schema_id), t.object_db, @u, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.columns as c on c.user_type_id = t.object_id
				join sys.tables as tbl on tbl.object_id = c.object_id
				where @iter_no = t.rank and (t.object_type = @uddt OR t.object_type = @udt) and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- udtts that reference uddts or udts
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select tt.user_type_id, tt.name, SCHEMA_NAME(tt.schema_id), t.object_db, @udtt, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.columns as c on c.user_type_id = t.object_id
				join sys.table_types as tt on tt.type_table_object_id = c.object_id
				where @iter_no = t.rank and (t.object_type = @uddt OR t.object_type = @udt) and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- tables/views that reference triggers
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select o.object_id, o.name, SCHEMA_NAME(o.schema_id), t.object_db, @tr, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.objects as o on o.parent_object_id = t.object_id and o.type = 'TR'
				where @iter_no = t.rank and (t.object_type = @u OR  t.object_type = @v) and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- tables that reference defaults (only default objects)
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select o.object_id, o.name, SCHEMA_NAME(o.schema_id), t.object_db, @u, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.columns as clmns on clmns.default_object_id = t.object_id
				join sys.objects as o on o.object_id = clmns.object_id and 0 = isnull(o.parent_object_id, 0)
				where @iter_no = t.rank and t.object_type = @def and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- types that reference defaults (only default objects)
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select tp.user_type_id, tp.name, SCHEMA_NAME(tp.schema_id), t.object_db, @uddt, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.types as tp on tp.default_object_id = t.object_id
				join sys.objects as o on o.object_id = t.object_id and 0 = isnull(o.parent_object_id, 0)
				where @iter_no = t.rank and t.object_type = @def and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- tables that reference rules
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select tbl.object_id, tbl.name, SCHEMA_NAME(tbl.schema_id), t.object_db, @u, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.columns as clmns on clmns.rule_object_id = t.object_id
				join sys.tables as tbl on tbl.object_id = clmns.object_id
				where @iter_no = t.rank and t.relative_type = @rule and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- types that reference rules
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select tp.user_type_id, tp.name, SCHEMA_NAME(tp.schema_id), t.object_db, @uddt, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.types as tp on tp.rule_object_id = t.object_id
				where @iter_no = t.rank and t.object_type = @rule and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- tables that reference XmlSchemaCollections
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select tbl.object_id, tbl.name, SCHEMA_NAME(tbl.schema_id), t.object_db, @u, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.columns as c on c.xml_collection_id = t.object_id
				join sys.tables as tbl on tbl.object_id = c.object_id -- eliminate views
				where @iter_no = t.rank and t.object_type = @xml and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- table types that reference XmlSchemaCollections
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select tt.user_type_id, tt.name, SCHEMA_NAME(tt.schema_id), t.object_db, @udtt, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.columns as c on c.xml_collection_id = t.object_id
				join sys.table_types as tt on tt.type_table_object_id = c.object_id
				where @iter_no = t.rank and t.object_type = @xml and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- procedures that reference XmlSchemaCollections
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select o.object_id, o.name, SCHEMA_NAME(o.schema_id), t.object_db, (case when o.type in ( 'P', 'RF', 'PC') then @sp else @udf end), t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.parameters as c on c.xml_collection_id = t.object_id
				join sys.objects as o on o.object_id = c.object_id
				where @iter_no = t.rank and t.object_type = @xml and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount
			-- udf, sp, uda, trigger all that reference assembly
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select o.object_id, o.name, SCHEMA_NAME(o.schema_id), t.object_db, (case o.type when 'AF' then @uda when 'PC' then @sp when 'FS' then @udf when 'FT' then @udf when 'TA' then @tr else @udf end), t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.assembly_modules as am on ((am.assembly_id = t.object_id) and (am.assembly_id >= 65536))
				join sys.objects as o on am.object_id = o.object_id
				where @iter_no = t.rank and t.object_type = @assm and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount
			-- udt that reference assembly
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select at.user_type_id, at.name, SCHEMA_NAME(at.schema_id), t.object_db, @udt, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.assembly_types as at on ((at.assembly_id = t.object_id) and (at.is_user_defined = 1))
				where @iter_no = t.rank and t.object_type = @assm and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- assembly that reference assembly
			insert #t1 (object_id, object_name, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select asm.assembly_id, asm.name, t.object_db, @assm, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.assembly_references as ar on ((ar.referenced_assembly_id = t.object_id) and (ar.referenced_assembly_id >= 65536))
				join sys.assemblies as asm on asm.assembly_id = ar.assembly_id
				where @iter_no = t.rank and t.object_type = @assm and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- table references table
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select tbl.object_id, tbl.name, SCHEMA_NAME(tbl.schema_id), t.object_db, @u, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.foreign_keys as fk on fk.referenced_object_id = t.object_id
				join sys.tables as tbl on tbl.object_id = fk.parent_object_id
				where @iter_no = t.rank and t.object_type = @u and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- uda references types
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select o.object_id, o.name, SCHEMA_NAME(o.schema_id), t.object_db, @uda, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.parameters as p on p.user_type_id = t.object_id
				join sys.objects as o on o.object_id = p.object_id and o.type = 'AF'
				where @iter_no = t.rank and t.object_type in (@udt, @uddt, @udtt) and (t.object_svr IS null and t.object_db = db_name())

			-- table,view references partition scheme
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select o.object_id, o.name, SCHEMA_NAME(o.schema_id), t.object_db, (case o.type when 'V' then @v else @u end), t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.indexes as idx on idx.data_space_id = t.object_id
				join sys.objects as o on o.object_id = idx.object_id
				where @iter_no = t.rank and t.object_type = @part_sch and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- partition scheme references partition function
			insert #t1 (object_id, object_name, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select ps.data_space_id, ps.name, t.object_db, @part_sch, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.partition_schemes as ps on ps.function_id = t.object_id
				where @iter_no = t.rank and t.object_type = @part_func and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount
		
			-- plan guide references sp, udf, triggers
			insert #t1 (object_id, object_name, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select pg.plan_guide_id, pg.name, t.object_db, @pg, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.plan_guides as pg on pg.scope_object_id = t.object_id
				where @iter_no = t.rank and t.object_type in (@sp, @udf, @tr) and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- synonym refrences object
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select s.object_id, s.name, SCHEMA_NAME(s.schema_id), t.object_db, @synonym, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 0, @iter_no + 1
				from #t1 as t
				join sys.synonyms as s on object_id(s.base_object_name) = t.object_id
				where @iter_no = t.rank and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount						
		
			--  sequences that reference uddts 
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select s.object_id, s.name, SCHEMA_NAME(s.schema_id), t.object_db, @sequence, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 0, @iter_no + 1
				from #t1 as t
				join sys.sequences as s on s.user_type_id = t.object_id
				where @iter_no = t.rank and (t.object_type = @uddt) and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount	
		

			-- SOFT DEPENDENCIES
			DECLARE name_cursor CURSOR
			FOR
				SELECT DISTINCT t.object_id, t.object_name, t.object_schema, t.object_type
				FROM #t1 as t
				WHERE @iter_no = t.rank and (t.object_svr IS null and t.object_db = db_name()) and t.object_type NOT IN (@part_sch, @assm, @tr, @ddltr)
			OPEN name_cursor
			DECLARE @objid int
			DECLARE @objname sysname
			DECLARE @objschema sysname
			DECLARE @objtype smallint
			DECLARE @fullname sysname
			DECLARE @objecttype sysname
			FETCH NEXT FROM name_cursor INTO @objid, @objname, @objschema, @objtype
			WHILE (@@FETCH_STATUS <> -1)
			BEGIN
				SET @fullname = case when @objschema IS NULL then quotename(@objname)
								else quotename(@objschema) + '.' + quotename(@objname) end
				SET @objecttype = case when @objtype in (@uddt, @udt, @udtt) then 'TYPE'
									when @objtype = @xml then 'XML_SCHEMA_COLLECTION'
									when @objtype = @part_func then 'PARTITION_FUNCTION'
									else 'OBJECT' end
				insert #t2 (object_type, object_id, object_name, object_schema, object_db, object_svr, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
					select
						case dep.referencing_class when 1 then (select
							case when obj.type = 'U' then @u
							when obj.type = 'V' then @v
							when obj.type = 'TR' then @tr
							when obj.type in ('P', 'RF', 'PC') then @sp
							when obj.type in ('AF') then @uda
							when obj.type in ('TF', 'FN', 'IF', 'FS', 'FT') then @udf
							when obj.type = 'D' then @def
							when obj.type = 'SN' then @synonym
							when obj.type = 'SO' then @sequence
							else @obj
							end
						from sys.objects as obj where obj.object_id = dep.referencing_id)
					when 6 then (select 
							case when (tp.is_assembly_type = 1) then @udt
							when (tp.is_table_type = 1) then @udtt
							else @uddt
							end
						from sys.types as tp where tp.user_type_id = dep.referencing_id)
					when 7 then @u
					when 9 then @u	
					when 10 then @xml 
					when 12 then @ddltr 
					when 21 then @part_func 
					end,
				dep.referencing_id,
				dep.referencing_entity_name,
				dep.referencing_schema_name,
				db_name(), null,
				@objid, @objname,
				@objschema, db_name(), @objtype, 
				0, @iter_no + 1
				from sys.dm_sql_referencing_entities(@fullname, @objecttype) dep

				FETCH NEXT FROM name_cursor INTO @objid, @objname, @objschema, @objtype
			END
			CLOSE name_cursor
			DEALLOCATE name_cursor

			update #t2 set object_id = obj.object_id, object_name = obj.name, object_schema = schema_name(obj.schema_id), object_type = case when obj.type = 'U' then @u when obj.type = 'V' then @v end		
			from sys.objects as o
			join sys.objects as obj on obj.object_id = o.parent_object_id
			where o.object_id = #t2.object_id and (#t2.object_type = @obj OR o.parent_object_id != 0) and #t2.rank = @iter_no + 1

			insert #t1 (object_id, object_name, object_schema, object_db, object_svr, object_type, relative_id, relative_name, relative_schema, relative_db, relative_svr, relative_type, schema_bound, rank)
				select object_id, object_name, object_schema, object_db, object_svr, object_type, relative_id, relative_name, relative_schema, relative_db, relative_svr, relative_type, schema_bound, rank 
				from #t2 where @iter_no + 1 = rank and #t2.object_id != #t2.relative_id
			set @rows = @rows + @@rowcount

		end
		else
		begin
			-- SOFT DEPENDENCIES
			-- insert all values from sys.sql_expression_dependencies for the corresponding object
			-- first insert them in #t2, update them and then finally insert them in #t1
			insert #t2 (object_type, object_name, object_schema, object_db, object_svr, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select 
					case dep.referenced_class when 1 then @obj
					when 6 then @type
					when 7 then @u
					when 9 then @u	
					when 10 then @xml
					when 21 then @part_func
					end,
				dep.referenced_entity_name,
				dep.referenced_schema_name,
				dep.referenced_database_name,
				dep.referenced_server_name,
				t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type,
				dep.is_schema_bound_reference, @iter_no + 1
				from #t1 as t
				join sys.sql_expression_dependencies as dep on dep.referencing_id = t.object_id
				where @iter_no = t.rank and t.object_svr IS NULL and t.object_db = db_name()

			-- insert all the dependency values in case of a table that references a check
			insert #t2 (object_type, object_name, object_schema, object_db, object_svr, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select 
					case dep.referenced_class when 1 then @obj
					when 6 then @type
					when 7 then @u
					when 9 then @u	
					when 10 then @xml
					when 21 then @part_func
					end,
				dep.referenced_entity_name,
				dep.referenced_schema_name,
				dep.referenced_database_name,
				dep.referenced_server_name,
				t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type,
				dep.is_schema_bound_reference, @iter_no + 1
				from #t1 as t
				join sys.sql_expression_dependencies as d on d.referenced_id = t.object_id
				join sys.objects as o on o.object_id = d.referencing_id and o.type = 'C'
				join sys.sql_expression_dependencies as dep on dep.referencing_id = d.referencing_id and dep.referenced_id != t.object_id
				where @iter_no = t.rank and t.object_svr IS NULL and t.object_db = db_name() and t.object_type = @u

			-- insert all the dependency values in case of an object that belongs to another object whose dependencies are being found
			insert #t2 (object_type, object_name, object_schema, object_db, object_svr, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select
					case dep.referenced_class when 1 then @obj
					when 6 then @type
					when 7 then @u
					when 9 then @u	
					when 10 then @xml
					when 21 then @part_func
					end,
				dep.referenced_entity_name,
				dep.referenced_schema_name,
				dep.referenced_database_name,
				dep.referenced_server_name,
				t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type,
				dep.is_schema_bound_reference, @iter_no + 1
				from #t1 as t
				join sys.objects as o on o.parent_object_id = t.object_id
				join sys.sql_expression_dependencies as dep on dep.referencing_id = o.object_id
				where @iter_no = t.rank and t.object_svr IS NULL and t.object_db = db_name()

			-- queries for objects with object_id null and object_svr null - resolve them
			-- we will build the query to resolve the objects 
			-- increase @rows as we bind the objects
		
			DECLARE db_cursor CURSOR
			FOR
				select distinct ISNULL(object_db, db_name()) from #t2 as t
				where t.rank = (@iter_no+1) and t.object_id IS NULL and t.object_svr IS NULL
			OPEN db_cursor
			DECLARE @dbname sysname		
			FETCH NEXT FROM db_cursor INTO @dbname
			WHILE (@@FETCH_STATUS <> -1)
			BEGIN
				IF (db_id(@dbname) IS NULL) 
				BEGIN
					FETCH NEXT FROM db_cursor INTO @dbname
					CONTINUE
				END
				DECLARE @query nvarchar(MAX)
				-- when schema is not null 
				-- @obj
				SET @query = 'update #t2 set object_db = N' + quotename(@dbname, '''') + ', object_id = obj.object_id, object_type = 
								case when obj.type = ''U'' then ' + CAST(@u AS nvarchar(8)) +
								' when obj.type = ''V'' then ' + CAST(@v AS nvarchar(8)) +
								' when obj.type = ''TR'' then ' + CAST(@tr AS nvarchar(8)) +
								' when obj.type in ( ''P'', ''RF'', ''PC'' ) then ' + CAST(@sp AS nvarchar(8)) +
								' when obj.type in ( ''AF'' ) then ' + CAST(@uda AS nvarchar(8)) +
								' when obj.type in ( ''TF'', ''FN'', ''IF'', ''FS'', ''FT'' ) then ' + CAST(@udf AS nvarchar(8)) +
								' when obj.type = ''D'' then ' + CAST(@def AS nvarchar(8)) +
								' when obj.type = ''SN'' then ' + CAST(@synonym AS nvarchar(8)) +
								' when obj.type = ''SO'' then ' + CAST(@sequence AS nvarchar(8)) +
								' else ' + CAST(@unknown AS nvarchar(8)) +
								' end
					from ' + quotename(@dbname) + '.sys.objects as obj 
					join ' + quotename(@dbname) + '.sys.schemas as sch on sch.schema_id = obj.schema_id
					where obj.name = #t2.object_name collate database_default
					and sch.name = #t2.object_schema collate database_default
					and #t2.object_type = ' + CAST(@obj AS nvarchar(8)) + ' and #t2.object_schema IS NOT NULL 
					and (#t2.object_db IS NULL or #t2.object_db = ''' + @dbname + ''')
					and #t2.rank = (' + CAST(@iter_no AS nvarchar(8)) + '+1) and #t2.object_id IS NULL and #t2.object_svr IS NULL'
				EXEC (@query)
				-- @type
				SET @query = 'update #t2 set object_db = N' + quotename(@dbname, '''') + ', object_id = t.user_type_id, object_type = case when t.is_assembly_type = 1 then ' + CAST(@udt AS nvarchar(8)) + ' when t.is_table_type = 1 then ' + CAST(@udtt AS nvarchar(8)) + ' else ' + CAST(@uddt AS nvarchar(8)) + ' end
					from ' + quotename(@dbname) + '.sys.types as t
					join ' + quotename(@dbname) + '.sys.schemas as sch on sch.schema_id = t.schema_id
					where t.name = #t2.object_name collate database_default
					and sch.name = #t2.object_schema collate database_default
					and #t2.object_type = ' + CAST(@type AS nvarchar(8)) + ' and #t2.object_schema IS NOT NULL 
					and (#t2.object_db IS NULL or #t2.object_db = ''' + @dbname + ''')
					and #t2.rank = (' + CAST(@iter_no AS nvarchar(8)) + '+1) and #t2.object_id IS NULL and #t2.object_svr IS NULL'
				EXEC (@query)

				-- @xml
				SET @query = 'update #t2 set object_db = N' + quotename(@dbname, '''') + ', object_id = x.xml_collection_id 
					from ' + quotename(@dbname) + '.sys.xml_schema_collections as x
					join ' + quotename(@dbname) + '.sys.schemas as sch on sch.schema_id = x.schema_id
					where x.name = #t2.object_name collate database_default
					and sch.name = #t2.object_schema collate database_default
					and #t2.object_type = ' + CAST(@xml AS nvarchar(8)) + ' and #t2.object_schema IS NOT NULL 
					and (#t2.object_db IS NULL or #t2.object_db = ''' + @dbname + ''')
					and #t2.rank = (' + CAST(@iter_no AS nvarchar(8)) + '+1) and #t2.object_id IS NULL and #t2.object_svr IS NULL'
				EXEC (@query)
				-- @part_func - schema is always null
				-- @schema is null
				-- consider schema as 'dbo'
				-- @obj
				SET @query = 'update #t2 set object_db = N' + quotename(@dbname, '''') + ', object_id = obj.object_id, object_schema = SCHEMA_NAME(obj.schema_id), object_type = 
								case when obj.type = ''U'' then ' + CAST(@u AS nvarchar(8)) +
								' when obj.type = ''V'' then ' + CAST(@v AS nvarchar(8)) +
								' when obj.type = ''TR'' then ' + CAST(@tr AS nvarchar(8)) +
								' when obj.type in ( ''P'', ''RF'', ''PC'' ) then ' + CAST(@sp AS nvarchar(8)) +
								' when obj.type in ( ''AF'' ) then ' + CAST(@uda AS nvarchar(8)) +
								' when obj.type in ( ''TF'', ''FN'', ''IF'', ''FS'', ''FT'' ) then ' + CAST(@udf AS nvarchar(8)) +
								' when obj.type = ''D'' then ' + CAST(@def AS nvarchar(8)) +
								' when obj.type = ''SN'' then ' + CAST(@synonym AS nvarchar(8)) +
								' when obj.type = ''SO'' then ' + CAST(@sequence AS nvarchar(8)) +
								' else ' + CAST(@unknown AS nvarchar(8)) +
								' end
					from ' + quotename(@dbname) + '.sys.objects as obj 
					where obj.name = #t2.object_name collate database_default
					and SCHEMA_NAME(obj.schema_id) = ''dbo''
					and #t2.object_type = ' + CAST(@obj AS nvarchar(8)) + ' and #t2.object_schema IS NULL 
					and (#t2.object_db IS NULL or #t2.object_db = ''' + @dbname + ''')
					and #t2.rank = (' + CAST(@iter_no AS nvarchar(8)) + '+1) and #t2.object_id IS NULL and #t2.object_svr IS NULL'
				EXEC (@query)
				-- @type
				SET @query = 'update #t2 set object_db = N' + quotename(@dbname, '''') + ', object_id = t.user_type_id, object_schema = SCHEMA_NAME(t.schema_id), object_type = case when t.is_assembly_type = 1 then ' + CAST(@udt AS nvarchar(8)) + ' when t.is_table_type = 1 then ' + CAST(@udtt AS nvarchar(8)) + ' else ' + CAST(@uddt AS nvarchar(8)) + ' end
					from ' + quotename(@dbname) + '.sys.types as t
					where t.name = #t2.object_name collate database_default
					and SCHEMA_NAME(t.schema_id) = ''dbo''
					and #t2.object_type = ' + CAST(@type AS nvarchar(8)) + ' and #t2.object_schema IS NULL 
					and (#t2.object_db IS NULL or #t2.object_db = ''' + @dbname + ''')
					and #t2.rank = (' + CAST(@iter_no AS nvarchar(8)) + '+1) and #t2.object_id IS NULL and #t2.object_svr IS NULL'
				EXEC (@query)
				-- @xml
				SET @query = 'update #t2 set object_db = N' + quotename(@dbname, '''') + ', object_id = x.xml_collection_id, object_schema = SCHEMA_NAME(x.schema_id)
					from ' + quotename(@dbname) + '.sys.xml_schema_collections as x
					where x.name = #t2.object_name collate database_default
					and SCHEMA_NAME(x.schema_id) = ''dbo''
					and #t2.object_type = ' + CAST(@xml AS nvarchar(8)) + ' and #t2.object_schema IS NULL 
					and (#t2.object_db IS NULL or #t2.object_db = ''' + @dbname + ''')
					and #t2.rank = (' + CAST(@iter_no AS nvarchar(8)) + '+1) and #t2.object_id IS NULL and #t2.object_svr IS NULL'
				EXEC (@query)

				-- consider schema as t.relative_schema
				-- the parent object will have the default schema of user in case of dynamic schema binding
				-- @obj
				SET @query = 'update #t2 set object_db = N' + quotename(@dbname, '''') + ', object_id = obj.object_id, object_schema = SCHEMA_NAME(obj.schema_id), object_type = 
								case when obj.type = ''U'' then ' + CAST(@u AS nvarchar(8)) +
								' when obj.type = ''V'' then ' + CAST(@v AS nvarchar(8)) +
								' when obj.type = ''TR'' then ' + CAST(@tr AS nvarchar(8)) +
								' when obj.type in ( ''P'', ''RF'', ''PC'' ) then ' + CAST(@sp AS nvarchar(8)) +
								' when obj.type in ( ''AF'' ) then ' + CAST(@uda AS nvarchar(8)) +
								' when obj.type in ( ''TF'', ''FN'', ''IF'', ''FS'', ''FT'' ) then ' + CAST(@udf AS nvarchar(8)) +
								' when obj.type = ''D'' then ' + CAST(@def AS nvarchar(8)) +
								' when obj.type = ''SN'' then ' + CAST(@synonym AS nvarchar(8)) +
								' when obj.type = ''SO'' then ' + CAST(@sequence AS nvarchar(8)) +
								' else ' + CAST(@unknown AS nvarchar(8)) +
								' end
					from ' + quotename(@dbname) + '.sys.objects as obj 
					join ' + quotename(@dbname) + '.sys.schemas as sch on sch.schema_id = obj.schema_id
					where obj.name = #t2.object_name collate database_default
					and sch.name = #t2.relative_schema collate database_default
					and #t2.object_type = ' + CAST(@obj AS nvarchar(8)) + ' and #t2.object_schema IS NULL 
					and (#t2.object_db IS NULL or #t2.object_db = ''' + @dbname + ''')
					and #t2.rank = (' + CAST(@iter_no AS nvarchar(8)) + '+1) and #t2.object_id IS NULL and #t2.object_svr IS NULL'
				EXEC (@query)

				-- @type
				SET @query = 'update #t2 set object_db = N' + quotename(@dbname, '''') + ', object_id = t.user_type_id, object_schema = SCHEMA_NAME(t.schema_id), object_type = case when t.is_assembly_type = 1 then ' + CAST(@udt AS nvarchar(8)) + ' when t.is_table_type = 1 then ' + CAST(@udtt AS nvarchar(8)) + ' else ' + CAST(@uddt AS nvarchar(8)) + ' end
					from ' + quotename(@dbname) + '.sys.types as t
					join ' + quotename(@dbname) + '.sys.schemas as sch on sch.schema_id = t.schema_id
					where t.name = #t2.object_name collate database_default
					and sch.name = #t2.relative_schema collate database_default
					and #t2.object_type = ' + CAST(@type AS nvarchar(8)) + ' and #t2.object_schema IS NULL 
					and (#t2.object_db IS NULL or #t2.object_db = ''' + @dbname + ''')
					and #t2.rank = (' + CAST(@iter_no AS nvarchar(8)) + '+1) and #t2.object_id IS NULL and #t2.object_svr IS NULL'
				EXEC (@query)

				-- @xml
				SET @query = 'update #t2 set object_db = N' + quotename(@dbname, '''') + ', object_id = x.xml_collection_id, object_schema = SCHEMA_NAME(x.schema_id)
					from ' + quotename(@dbname) + '.sys.xml_schema_collections as x
					join ' + quotename(@dbname) + '.sys.schemas as sch on sch.schema_id = x.schema_id
					where x.name = #t2.object_name collate database_default
					and sch.name = #t2.relative_schema collate database_default
					and #t2.object_type = ' + CAST(@xml AS nvarchar(8)) + ' and #t2.object_schema IS NULL 
					and (#t2.object_db IS NULL or #t2.object_db = ''' + @dbname + ''')
					and #t2.rank = (' + CAST(@iter_no AS nvarchar(8)) + '+1) and #t2.object_id IS NULL and #t2.object_svr IS NULL'
				EXEC (@query)

				-- @part_func always have schema as null
				SET @query = 'update #t2 set object_db = N' + quotename(@dbname, '''') + ', object_id = p.function_id
					from ' + quotename(@dbname) + '.sys.partition_functions as p
					where p.name = #t2.object_name collate database_default
					and #t2.object_type = ' + CAST(@part_func AS nvarchar(8)) + 
					' and (#t2.object_db IS NULL or #t2.object_db = ''' + @dbname + ''')
					and #t2.rank = (' + CAST(@iter_no AS nvarchar(8)) + '+1) and #t2.object_id IS NULL and #t2.object_svr IS NULL'
				EXEC (@query)

				-- update the shared object if any (schema is not null)
				update #t2 set object_db = 'master', object_id = o.object_id, object_type = @sp
				from master.sys.objects as o 
				join master.sys.schemas as sch on sch.schema_id = o.schema_id
				where o.name = #t2.object_name collate database_default and sch.name = #t2.object_schema collate database_default and 
				o.type in ('P', 'RF', 'PC') and #t2.object_id IS null and
				#t2.object_name LIKE 'sp/_%' ESCAPE '/' and #t2.object_db IS null and #t2.object_svr IS null

				-- update the shared object if any (schema is null)
				update #t2 set object_db = 'master', object_id = o.object_id, object_schema = SCHEMA_NAME(o.schema_id), object_type = @sp
				from master.sys.objects as o 
				where o.name = #t2.object_name collate database_default and SCHEMA_NAME(o.schema_id) = 'dbo' collate database_default  and 
				o.type in ('P', 'RF', 'PC') and 
				#t2.object_schema IS null and #t2.object_id IS null and
				#t2.object_name LIKE 'sp/_%' ESCAPE '/' and #t2.object_db IS null and #t2.object_svr IS null

				FETCH NEXT FROM db_cursor INTO @dbname
			END
			CLOSE db_cursor
			DEALLOCATE db_cursor

		update #t2 set object_type = @unknown where object_id IS NULL

			insert #t1 (object_id, object_name, object_schema, object_db, object_svr, object_type, relative_id, relative_name, relative_schema, relative_db, relative_svr, relative_type, schema_bound, rank)
				select object_id, object_name, object_schema, object_db, object_svr, object_type, relative_id, relative_name, relative_schema, relative_db, relative_svr, relative_type, schema_bound, rank 
				from #t2 where @iter_no + 1 = rank
			SET @rows = @rows + @@rowcount


			-- HARD DEPENDENCIES
			-- uddt or udt referenced by table
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select tp.user_type_id, tp.name, SCHEMA_NAME(tp.schema_id), t.object_db, case tp.is_assembly_type when 1 then @udt else @uddt end, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.columns as col on col.object_id = t.object_id
				join sys.types as tp on tp.user_type_id = col.user_type_id and tp.schema_id != 4
				where @iter_no = t.rank and t.object_type = @u and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- uddt or udt referenced by table type
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select tp.user_type_id, tp.name, SCHEMA_NAME(tp.schema_id), t.object_db, case tp.is_assembly_type when 1 then @udt else @uddt end, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.table_types as tt on tt.user_type_id = t.object_id
				join sys.columns as col on col.object_id = tt.type_table_object_id
				join sys.types as tp on tp.user_type_id = col.user_type_id and tp.schema_id != 4
				where @iter_no = t.rank and t.object_type = @udtt and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- table or view referenced by trigger
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select o.object_id, o.name, SCHEMA_NAME(o.schema_id), t.object_db, case o.type when 'V' then @v else @u end, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.triggers as tr on tr.object_id = t.object_id
				join sys.objects as o on o.object_id = tr.parent_id
				where @iter_no = t.rank and t.object_type = @tr and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- defaults (only default objects) referenced by tables
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select o.object_id, o.name, SCHEMA_NAME(o.schema_id), t.object_db, @def, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.columns as clmns on clmns.object_id = t.object_id
				join sys.objects as o on o.object_id = clmns.default_object_id and 0 = isnull(o.parent_object_id, 0)
				where  @iter_no = t.rank and t.object_type = @u and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- defaults (only default objects) referenced by types
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select o.object_id, o.name, SCHEMA_NAME(o.schema_id), t.object_db, @def, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.types as tp on tp.user_type_id = t.object_id
				join sys.objects as o on o.object_id = tp.default_object_id and 0 = isnull(o.parent_object_id, 0)
				where @iter_no = t.rank and t.object_type = @uddt and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount
      
			-- rules referenced by tables
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select o.object_id, o.name, SCHEMA_NAME(o.schema_id), t.object_db, @rule, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.columns as clmns on clmns.object_id = t.object_id
				join sys.objects as o on o.object_id = clmns.rule_object_id and 0 = isnull(o.parent_object_id, 0)
				where @iter_no = t.rank and t.relative_type = @u and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- rules referenced by types
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select o.object_id, o.name, SCHEMA_NAME(o.schema_id), t.object_db, @rule, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.types as tp on tp.user_type_id = t.object_id
				join sys.objects as o on o.object_id = tp.rule_object_id and 0 = isnull(o.parent_object_id, 0)
				where @iter_no = t.rank and t.relative_type = @uddt and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount
		
			-- XmlSchemaCollections referenced by tables
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select x.xml_collection_id, x.name, SCHEMA_NAME(x.schema_id), t.object_db, @xml, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.columns as c on c.object_id = t.object_id
				join sys.xml_schema_collections as x on x.xml_collection_id = c.xml_collection_id and x.schema_id != 4
				where @iter_no = t.rank and t.object_type = @u and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- XmlSchemaCollections referenced by tabletypes
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select x.xml_collection_id, x.name, SCHEMA_NAME(x.schema_id), t.object_db, @xml, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.table_types as tt on tt.user_type_id = t.object_id
				join sys.columns as c on c.object_id = tt.type_table_object_id
				join sys.xml_schema_collections as x on x.xml_collection_id = c.xml_collection_id and x.schema_id != 4
				where @iter_no = t.rank and t.object_type = @udtt and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- XmlSchemaCollections referenced by procedures
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select x.xml_collection_id, x.name, SCHEMA_NAME(x.schema_id), t.object_db, @xml, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.parameters as c on c.object_id = t.object_id
				join sys.xml_schema_collections as x on x.xml_collection_id = c.xml_collection_id and x.schema_id != 4
				where @iter_no = t.rank and t.object_type in (@sp, @udf) and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- table referenced by table
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select tbl.object_id, tbl.name, SCHEMA_NAME(tbl.schema_id), t.object_db, @u, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.foreign_keys as fk on fk.parent_object_id = t.object_id
				join sys.tables as tbl on tbl.object_id = fk.referenced_object_id
				where @iter_no = t.rank and t.object_type = @u and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- uddts referenced by uda
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select tp.user_type_id, tp.name, SCHEMA_NAME(tp.schema_id), t.object_db, case when tp.is_table_type = 1 then @udtt when tp.is_assembly_type = 1 then @udt else @uddt end, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.parameters as p on p.object_id = t.object_id
				join sys.types as tp on tp.user_type_id = p.user_type_id
				where @iter_no = t.rank and t.object_type = @uda and t.object_type = @uda and tp.user_type_id>256
			set @rows = @rows + @@rowcount

			-- assembly referenced by assembly
			insert #t1 (object_id, object_name, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select asm.assembly_id, asm.name, t.object_db, @assm, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.assembly_references as ar on ((ar.assembly_id = t.object_id) and (ar.referenced_assembly_id >= 65536))
				join sys.assemblies as asm on asm.assembly_id = ar.referenced_assembly_id
				where @iter_no = t.rank and t.object_type = @assm and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- assembly referenced by udt
			insert #t1 (object_id, object_name, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select asm.assembly_id, asm.name, t.object_db, @assm, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.assembly_types as at on ((at.user_type_id = t.object_id) and (at.is_user_defined = 1))
				join sys.assemblies as asm on asm.assembly_id = at.assembly_id
				where @iter_no = t.rank and t.object_type = @udt and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- assembly referenced by udf, sp, uda, trigger
			insert #t1 (object_id, object_name, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select asm.assembly_id, asm.name, t.object_db, @assm, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.assembly_modules as am on ((am.object_id = t.object_id) and (am.assembly_id >= 65536))
				join sys.assemblies as asm on asm.assembly_id = am.assembly_id
				where @iter_no = t.rank and t.object_type in ( @udf, @sp, @uda, @tr) and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- Partition Schemes referenced by tables/views
			insert #t1 (object_id, object_name, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select ps.data_space_id, ps.name, t.object_db, @part_sch, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.indexes as idx on idx.object_id = t.object_id
				join sys.partition_schemes as ps on ps.data_space_id = idx.data_space_id
				where @iter_no = t.rank and t.object_type in (@u, @v) and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- Partition Function referenced by Partition Schemes
			insert #t1 (object_id, object_name, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select pf.function_id, pf.name, t.object_db, @part_func, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.partition_schemes as ps on ps.data_space_id = t.object_id
				join sys.partition_functions as pf on pf.function_id = ps.function_id
				where @iter_no = t.rank and t.object_type = @part_sch and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount
		
			-- sp, udf, triggers referenced by plan guide
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select o.object_id, o.name, SCHEMA_NAME(o.schema_id), t.object_db, (case o.type when 'P' then @sp when 'TR' then @tr else @udf end), t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.plan_guides as pg on pg.plan_guide_id = t.object_id
				join sys.objects as o on o.object_id = pg.scope_object_id
				where @iter_no = t.rank and t.object_type = @pg and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount

			-- objects referenced by synonym
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select o.object_id, o.name, SCHEMA_NAME(o.schema_id), t.object_db, (case when o.type = 'U' then @u when o.type = 'V' then @v when o.type in ('P', 'RF', 'PC') then @sp when o.type = 'AF' then @uda else @udf end), t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 0, @iter_no + 1
				from #t1 as t
				join sys.synonyms as s on s.object_id = t.object_id
				join sys.objects as o on o.object_id = OBJECT_ID(s.base_object_name) and o.type in ('U', 'V', 'P', 'RF', 'PC', 'AF', 'TF', 'FN', 'IF', 'FS', 'FT')
				where @iter_no = t.rank and t.object_type = @synonym and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount
		
			-- uddt referenced by sequence. Used to find UDDT that is in sequence dependencies.
			insert #t1 (object_id, object_name, object_schema, object_db, object_type, relative_id, relative_name, relative_schema, relative_db, relative_type, schema_bound, rank)
				select tp.user_type_id, tp.name, SCHEMA_NAME(tp.schema_id), t.object_db, case tp.is_assembly_type when 1 then @udt else @uddt end, t.object_id, t.object_name, t.object_schema, t.object_db, t.object_type, 1, @iter_no + 1
				from #t1 as t
				join sys.sequences as s on s.object_id = t.object_id
				join sys.types as tp on tp.user_type_id = s.user_type_id and tp.schema_id != 4
				where @iter_no = t.rank and t.object_type = @sequence and (t.object_svr IS null and t.object_db = db_name())
			set @rows = @rows + @@rowcount						
		
		end
		set @iter_no = @iter_no + 1
	end

	update #t1 set rank = 0
	-- computing the degree of the nodes
	update #t1 set degree = (
		select count(*) from #t1 t
		where t.relative_id = #t1.object_id and t.object_id != t.relative_id)

	-- perform the topological sorting
	set @iter_no = 1
	while 1 = 1
	begin
		update #t1 set rank=@iter_no where degree = 0
		-- end the loop if no more rows left to process
		if (@@rowcount = 0) break
		update #t1 set degree = NULL where rank = @iter_no

		update #t1 set degree = (
			select count(*) from #t1 t
			where t.relative_id = #t1.object_id and t.object_id != t.relative_id
			and t.object_id in (select tt.object_id from #t1 tt where tt.rank = 0))
			where degree is not null

		set @iter_no = @iter_no + 1
	end

	--correcting naming mistakes of objects present in current database 
	--This part need to be removed once SMO's URN comparision gets fixed
			DECLARE @collation sysname;
			DECLARE db_cursor CURSOR
			FOR
				select distinct ISNULL(object_db, db_name()) from #t1 as t
				where t.object_id IS NOT NULL and t.object_svr IS NULL
			OPEN db_cursor
			FETCH NEXT FROM db_cursor INTO @dbname
			WHILE (@@FETCH_STATUS <> -1)
			BEGIN
				IF (db_id(@dbname) IS NULL) 
				BEGIN
					FETCH NEXT FROM db_cursor INTO @dbname
					CONTINUE
				END
			
				SET @collation = (select convert(sysname,DatabasePropertyEx(@dbname,'Collation')));
				SET @query = 'update #t1 set #t1.object_name = o.name,#t1.object_schema = sch.name from #t1  inner join '+ quotename(@dbname)+ '.sys.objects as o on #t1.object_id = o.object_id inner join '+ quotename(@dbname)+ '.sys.schemas as sch on sch.schema_id = o.schema_id  where o.name = #t1.object_name collate '+  @collation +' and sch.name = #t1.object_schema collate '+ @collation
				EXEC (@query)	


				FETCH NEXT FROM db_cursor INTO @dbname
			END
			CLOSE db_cursor
			DEALLOCATE db_cursor
	
		--final select
		--Commented the following code as this is not required as of now, might be needed in future.
		--select ISNULL(t.object_id, 0) as [object_id], t.object_name, ISNULL(t.object_schema, '') as [object_schema], ISNULL(t.object_db, '') as [object_db], ISNULL(t.object_svr, '') as [object_svr], o.type, ISNULL(t.relative_id, 0) as [relative_id], t.relative_name, ISNULL(t.relative_schema, '') as [relative_schema], relative_db, ISNULL(t.relative_svr, '') as [relative_svr], t.relative_type, t.schema_bound, ISNULL(CASE WHEN p.type= 'U' then @u when p.type = 'V' then @v end, 0) as [ptype], ISNULL(p.name, '') as [pname], ISNULL(SCHEMA_NAME(p.schema_id), '') as [pschema]
		-- from #t1 as t
		-- left join sys.objects as o on (t.object_type = @tr and o.object_id = t.object_id) or (t.relative_type = @tr and o.object_id = t.relative_id)
		-- left join sys.objects as p on p.object_id = o.parent_object_id
		-- order by rank desc
	SELECT o.name, o.type FROM #t1 INNER JOIN sys.objects o on #t1.object_id = o.object_id

	drop table #t1
	drop table #t2
	drop table #tempdep

	IF @must_set_nocount_off > 0 
		set nocount off
END
GO
------------------------------------------------------------------------
-- Name        : DDL$compile_object
-- Description : Compiles given and dependent objects in database.
-- Input       : aType    - the type of object
--               anObject - the name of object
-- Example		: EXEC DDL$compile_object '', 'PLSQLLOG'
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$compile_object
(
	@aType VARCHAR(256) = '',
	@anObject VARCHAR(256)
)
AS
BEGIN
	SET NOCOUNT ON;
	SET ANSI_WARNINGS ON;
	DECLARE @logMessage VARCHAR(4000),
			@compileObject NVARCHAR(256) = @anObject,
			@counter INT,
			@count INT = 1;
	DECLARE @Dependency TABLE
	(
		ID INT IDENTITY,
		objectName VARCHAR(256),
		objectType VARCHAR(10)
	);

	INSERT INTO @Dependency
		EXEC FindDependency ' ', @anObject;
	
	SELECT @counter = COUNT(1) FROM @Dependency
	
	WHILE @count < @counter
	BEGIN
		SELECT @aType = objectType, @compileObject = objectName FROM @Dependency WHERE ID = @count
		IF @anObject = UPPER('sp_monitor')
		BEGIN
			SET @logMessage = CONCAT('Ignore ', @aType, ' ', @anObject)
			EXEC LOGGER$log @logMessage, 0;
			RETURN;
		END
		ELSE IF @aType IN ('TR','P', 'FN', 'IF')
		BEGIN
			SET @logMessage = CONCAT('Compile ', @aType, ' ', @anObject)
			EXEC LOGGER$log @logMessage, 0;
			EXEC sp_recompile @compileObject;
		END
		ELSE IF @aType IN ('V')
		BEGIN
			SET @logMessage = CONCAT('Refresh ', @aType, ' ', @anObject)
			EXEC LOGGER$log @logMessage, 0;
			EXEC sp_refreshview @compileObject;
		END
		SET @count = @count + 1;
	END
	SET NOCOUNT OFF;
	SET ANSI_WARNINGS OFF;
END
GO
------------------------------------------------------------------------------------------
-- Name        : DDL$drop_ctx_indexes
-- Description : This procedure is used to drop all context (text) indexes of a table
-- Input       : aTableName  - the name of table
-- Example     : EXEC DDL$drop_ctx_indexes 'DOMAIN_AV'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$drop_ctx_indexes(@aTableName  VARCHAR(200)) AS
BEGIN
	DECLARE @query NVARCHAR(500),
			@catalogName NVARCHAR(100) = CONCAT(@aTableName, 'FTCat');

    -- SET IMPLICIT_TRANSACTIONS OFF

    IF EXISTS (select * from sys.fulltext_index_columns where object_name(object_id) = @aTableName)
	BEGIN
		SET @query = concat('DROP FULLTEXT INDEX ON ', @aTableName);
		EXEC SQL_UTIL$execute @query;
	END
	IF EXISTS (select * from sys.fulltext_catalogs where name = @catalogName)
	BEGIN
		SET @query = concat('DROP FULLTEXT CATALOG ', @catalogName);
		EXEC SQL_UTIL$execute @query;
	END
END
GO
------------------------------------------------------------------------------------------
-- Name        : DDL$drop_all_ctx_indexes
-- Description : This procedure is used to drop all context (text) indexes of a SCHEMA.
-- Input       : aTableName  - the name of table
-- Example     : EXEC DDL$drop_all_ctx_indexes 
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$drop_all_ctx_indexes AS
BEGIN
	DECLARE @qry NVARCHAR(2000),
			@schema_id INT = (SELECT SCHEMA_ID());
	SELECT @qry = 
	(SELECT  'DROP INDEX [' + ix.name + '] ON ' + OBJECT_NAME(ix.object_id) + '; '
	FROM  sys.indexes ix
	INNER JOIN sys.objects o ON o.object_id = ix.object_id AND o.type <> 'S'
	INNER JOIN sys.schemas s on s.schema_id = o.schema_id AND s.name <> 'sys'
	WHERE   ix.Name IS NOT NULL AND is_primary_key<>1 AND index_id>0 AND s.name<>'sys' AND s.schema_id = @schema_id
	FOR XML PATH(''));
	EXEC SQL_UTIL$executeDDL @qry;
END;
GO

------------------------------------------------------------------------------------------
-- Name        : DDL$get_column_name_list_as_str
-- Description : This function is used to get column name list in a string.
-- Input       : @column_name_list  - the list of columns in table.
-- Example     : SELECT dbo.DDL$get_column_name_list_as_str 
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION DDL$get_column_name_list_as_str(@column_name_list ColumnListType READONLY)
RETURNS  VARCHAR(4000)
AS
BEGIN
	DECLARE @column_list VARCHAR(500),
			@column_list_sep VARCHAR(1);

	SELECT @column_list = STUFF((
		SELECT ',', + ColumnName FROM @column_name_list FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 1, '')
	RETURN @column_list;
END
GO
------------------------------------------------------------------------------------------
-- Name        : DDL$get_column_name_list
-- Description : This function is used to get column name list in a string based on the criteria provided by user.
-- Input       : @column_name_list  - the list of columns in table.
-- Example     : SELECT * FROM dbo.DDL$get_column_name_list ('(aa)') 
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION DDL$get_column_name_list(@clause VARCHAR(400))
RETURNS @columnList TABLE(
	ColValue VARCHAR(200)
)
AS
BEGIN
	DECLARE	@sep_list VARCHAR(2000);
	SET @sep_list = SUBSTRING(@clause, CHARINDEX('(', @clause) + 1, CHARINDEX(')', @clause) - (CHARINDEX('(', @clause) + 1))
	INSERT INTO @columnList
		SELECT value FROM STRING_SPLIT(@sep_list, ',')  WHERE RTRIM(value) <> '';  
	RETURN;
END
GO
------------------------------------------------------------------------------------------
--
-- !!!!!!!!! TODO: Needs to be a function
--
-- Name        : DDL$get_fk_const_by_tab_col_names
-- Description : This function returns the fk constraint for given tablename
--               and given position sorted column list.
-- Input       : aTableName
-- Input       : aColumnNameList
-- Output      : the constraint name
------------------------------------------------------------------------------------------

CREATE OR ALTER PROCEDURE DDL$get_fk_const_by_tab_col_names
(
	@aTableName			VARCHAR(256),
	@aColumnNameList	DDL$type_object_name_list READONLY,
	@prefix				VARCHAR(256) = ''
)
AS        
BEGIN
	DECLARE @constraint_name VARCHAR(100)
		,@bind_column_list NVARCHAR(MAX) = ''
		,@column_list_sep VARCHAR(100) = ''
		,@columnlistName VARCHAR(100)
		,@tableName VARCHAR(100) = UPPER(@aTableName)
		,@count INT
		,@i INT = 1
		,@sqlQuery NVARCHAR(MAX)
		,@_bind_column_pos_list NVARCHAR(MAX);

	SELECT @sqlQuery = 
	'select c.CONSTRAINT_NAME
	 from INFORMATION_SCHEMA.TABLE_CONSTRAINTS c
	   	INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE kcu ON (c.CONSTRAINT_SCHEMA = kcu.CONSTRAINT_SCHEMA and c.CONSTRAINT_NAME = kcu.CONSTRAINT_NAME)
	 WHERE c.CONSTRAINT_TYPE = ''FOREIGN KEY''
	   and c.TABLE_NAME = ''_tableName''
	   and (_bind_column_pos_list)
	 GROUP BY c.CONSTRAINT_NAME
	 HAVING COUNT(*) = _pos_count'

	IF (SELECT COUNT(1)	FROM @aColumnNameList) = 0	OR @aTableName IS NULL
		RETURN NULL;

	SELECT @count = COUNT(1) FROM @aColumnNameList

	WHILE (@i <= @count)
	BEGIN
		SELECT @columnlistName = TRIM(objectName) FROM @aColumnNameList WHERE row = @i
		SET @bind_column_list = CONCAT(@bind_column_list, @column_list_sep, '(kcu.column_name = ''', UPPER(@columnlistName), ''' and kcu.ordinal_position = ', @i, ')')
		SET @column_list_sep = ' OR ';
		SET @i = @i + 1;
	END

	-- insert dynamic bind column position list into query
	SET @sqlQuery = REPLACE(@sqlQuery, '_bind_column_pos_list', @bind_column_list);
	SET @sqlQuery = REPLACE(@sqlQuery, '_tableName', @tableName);
	SET @sqlQuery = REPLACE(@sqlQuery, '_pos_count', @count);
	
	insert into #temptable
	EXECUTE SQL_UTIL$execute3 @sqlQuery 
END
GO
------------------------------------------------------------------------------------------
-- Name        : DDL$migrate_constraint
-- Description : This procedure is used to drop and recreate constraints on a table.
-- Input       : aTableName  - the name of table
-- Example     : EXEC DDL$migrate_constraint 
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE [DDL$migrate_constraint]
(
	@aTableName VARCHAR(256),
	@aConstraintName VARCHAR(256),
	@clause VARCHAR(4000)
)
AS
BEGIN
	DECLARE @cnt		INTEGER,
	@i					INT = 1,
	@l_cons_name_byCols	DDL$type_constraints_list,
	@l_cons_name_byName VARCHAR(200) = UPPER(@aConstraintName),
	@l_table_name		VARCHAR(200) = UPPER(@aTableName),
	@l_query			NVARCHAR(400),
	@column_name_list	DDL$type_object_name_list;
	
	CREATE TABLE #temptable (objectConstraint NVARCHAR(200), row int IDENTITY(1,1));
	
	-- determine fk constraint for given name, if exists drop it
	SELECT @cnt = COUNT(*)  FROM sys.objects WHERE OBJECT_NAME(OBJECT_ID) = @l_cons_name_byName AND [type] ='F';
	IF @cnt > 0 
	BEGIN
		SET @l_query = CONCAT('ALTER TABLE ', @aTableName, ' DROP CONSTRAINT ', @l_cons_name_byName)
		EXEC SQL_UTIL$executeDDL @l_query
	END
	 
	-- determine fk constraint for given column list, if exists drop it
	INSERT INTO @column_name_list
	SELECT * FROM dbo.DDL$get_column_name_list(@clause)

	EXEC DDL$get_fk_const_by_tab_col_names @l_table_name, @column_name_list, ''

	SELECT @cnt = COUNT(1) FROM #temptable 
	WHILE(@i<=@cnt)
	BEGIN
		DECLARE @cons_name VARCHAR(200)
		SELECT 	@cons_name=objectConstraint FROM #temptable WHERE row=@i
		SET @l_query = CONCAT('ALTER TABLE ', @l_table_name, ' DROP CONSTRAINT ', @cons_name)
		EXEC SQL_UTIL$executeDDL @l_query
		SET @i=@i+1;
	END
	
	-- create constraint
	SET @l_query = CONCAT('ALTER TABLE ', @l_table_name, ' ADD CONSTRAINT ', @l_cons_name_byName, ' ', @clause)
	EXEC SQL_UTIL$executeDDL @l_query
END
GO
------------------------------------------------------------------------------------------
-- Name        : DDL$get_cons_columns
-- Description : This function returns the list of all columns of given constraint.
-- Input       : aConstraintName - the constraint name
--               prefix          - the prefix used in comma separated list for each column
-- Output      : comma separated list of constraint columns
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$get_cons_columns(@aConstraintName VARCHAR(256), @prefix VARCHAR(100) = '')
AS
BEGIN
	--@prefix might be needed, if SCHEMA need to be checked.
	DECLARE @query VARCHAR(1000) = CONCAT('SELECT column_name FROM ',  'INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE WHERE CONSTRAINT_NAME = ''', @aConstraintName, '''');
		EXEC dbo.DDL$create_object_name_list @query, @aConstraintName;
END
GO
------------------------------------------------------------------------------------------
-- Name        : DDL$get_tab_columns
-- Description : This function returns the columns of given table.
-- Input       : @aTableName - the table name
-- Output      : table columns
-- Example	   : SELECT * from DDL$get_tab_columns('DOMAININFORMATION')
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION DDL$get_tab_columns
(
	@aTableName VARCHAR(256)
)
RETURNS @ColumnList TABLE
(
	ColumnName VARCHAR(256)
)
AS
BEGIN
	DECLARE @tab VARCHAR(256);
	--Check whether table is synonym.
	IF dbo.DDL$is_synonym(@aTableName) <> '' 
		SET @tab = (SELECT PARSENAME(base_object_name, 1) FROM sys.synonyms WHERE [name] = @aTableName AND type = 'SN');
	ELSE
		SET @tab = UPPER(@aTableName);
	INSERT INTO @ColumnList
		SELECT column_name 	FROM INFORMATION_SCHEMA.COLUMNS	WHERE table_name = @tab	ORDER BY ORDINAL_POSITION;
	RETURN;
END
GO
------------------------------------------------------------------------------------------
-- Name        : DDL$get_constraint
-- Description : This function returns the columns of given table.
-- Input       : @aTableName - the table name
-- Output      : table columns
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$get_constraint
(
	@aConstraintName VARCHAR(256),
	@prefix VARCHAR(100) = ''
)
AS
BEGIN
	--@prefix cannot be used with Informaton Schema, if needed will be used to check schema.
	DECLARE @query NVARCHAR(400) = CONCAT('SELECT ', dbo.DDL$get_cons_columns_str(''),' FROM ',  'INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME = ''', @aConstraintName, '''');
	EXEC SQL_UTIL$execute @query;
END
GO
------------------------------------------------------------------------
-- Name        : DDL$disable_constraints
-- Description : This method is used to disable all constraints
--               of given list.
-- Input       : constraints - list of constraints
--------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$disable_constraints
(
	@constraintName ConstraintList READONLY
)
AS
BEGIN
	IF (SELECT COUNT(1) FROM @constraintName) <= 0
		RETURN;
	DECLARE @tableName VARCHAR(250),
			@constraint VARCHAR(250),
			@query		NVARCHAR(3000);

	DECLARE intListCursor CURSOR LOCAL FAST_FORWARD FOR
		SELECT TableName, ConstraintName FROM @constraintName;
	OPEN intListCursor;

	FETCH NEXT FROM intListCursor INTO @tableName, @constraint;
	
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @query = CONCAT('ALTER TABLE ',  @tableName, ' NOCHECK CONSTRAINT ', @constraint);
		EXEC SQL_UTIL$execute3 @query
		FETCH NEXT FROM intListCursor INTO @tableName, @constraint;
	END
	CLOSE intListCursor;
	DEALLOCATE intListCursor;
END
GO

------------------------------------------------------------------------------------------
-- Name        : DDL$drop_table
-- Description : This procedure is used to drop a table.
-- Input       : table_name  - the name of table
-- Example     : exec DDL$drop_table 'RESOURCEPO'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$drop_table(@table_name VARCHAR(256))
AS
BEGIN
	DECLARE @drop_stmt NVARCHAR(100) = CONCAT('DROP TABLE IF EXISTS ', @table_name);
	EXEC SQL_UTIL$execute @drop_stmt, -942
END
GO
------------------------------------------------------------------------
-- Name        : DDL$drop_view
-- Name        : drop_view
-- Description : This procedure is used to drop all constraints defined by given list.
-- Input       : constraints - list of constraints
--Example      :exec dbo.DDL$drop_view 'VW_USER_SYNONYMS'
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$drop_view
(
	@table_name VARCHAR(100)							
)
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(MAX);

	SELECT @sqlQuery = CONCAT('DROP VIEW IF EXISTS ', @table_name);
	EXEC SQL_UTIL$execute @sqlQuery, -942
END;
GO
------------------------------------------------------------------------
-- Name        : DDL$update_table
-- Description : This procedure is used to drop all constraints defined by given list.
-- Input       : constraints - list of constraints
--Example      : exec dbo.DDL$update_table 'USER_SYNONYMS1'
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$update_table
(			
	@dictView VARCHAR(100),
	@srcName VARCHAR(100),
	@dstName VARCHAR(100)
)
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(MAX);
			
	IF EXISTS(select 1 from sys.tables where name = @srcName) 
	BEGIN
		IF NOT EXISTS(select 1 from sys.tables where name = @dstName)
		BEGIN
			DECLARE @schema NVARCHAR(30) = SCHEMA_NAME();
			DECLARE	@OldValue NVARCHAR(300) = CONCAT('[', @schema, '].[', @srcName, ']');
			EXEC sp_rename @OldValue, @dstName;
		END
	END	 
END;
GO
------------------------------------------------------------------------
-- Name        : DDL$rename_table
-- Description : This procedure is used to drop all constraints defined by given list.
-- Input       : constraints - list of constraints
--Example      :exec dbo.DDL$rename_table 'abcdemo1', 'abcdemo3'
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$rename_table
(
	@srcName VARCHAR(100),
	@dstName VARCHAR(100),
	@dict_view_prefix VARCHAR(100) = ''
)
AS
BEGIN
	IF(@dict_view_prefix IS NOT NULL)
	BEGIN
		EXEC  DDL$update_table @dict_view_prefix, @srcName, @dstName;
	END
END
GO
------------------------------------------------------------------------------------------
-- Name        : DDL$drop_trigger
-- Description : This procedure is used to drop a trigger.
-- Input       : trigger_name  - the name of trigger
-- Example     : exec DDL$drop_trigger 'T$BASICADDRESS'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$drop_trigger(@trigger_name VARCHAR(256))
AS
BEGIN
	DECLARE @drop_stmt NVARCHAR(100) = CONCAT('DROP TRIGGER IF EXISTS ', @trigger_name);
	EXEC SQL_UTIL$execute @drop_stmt, -4080
END
GO
------------------------------------------------------------------------------------------
-- Name        : DDL$replace_synonym
-- Description : This procedure is used to replace given synonym.
-- Input       : @synonym_name  - the name of synonym
--               @object_name   - the name of object
-- Example     : exec DDL$replace_synonym 'PRODUCT', 'PRODUCT$1'
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$replace_synonym(@synonym_name VARCHAR(256), @object_name VARCHAR(256))
AS
BEGIN
	BEGIN TRY
		BEGIN TRAN
			DECLARE @dropCreate_stmt NVARCHAR(200) = CONCAT('DROP SYNONYM IF EXISTS ', @synonym_name, ';');
			EXEC SQL_UTIL$execute @dropCreate_stmt
			--Create the synonym
			SET @dropCreate_stmt = CONCAT('CREATE SYNONYM ', @synonym_name, ' FOR ', @object_name, ';' );
			EXEC SQL_UTIL$execute3 @dropCreate_stmt
		COMMIT TRAN
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0 
			ROLLBACK TRAN
	END CATCH
END
GO
------------------------------------------------------------------------
-- Name        : DDL$drop_synonym
-- Description : This procedure is used to drop all constraints defined by given list.
-- Input       : constraints - list of constraints
--Example      :exec dbo.DDL$drop_synonym 'MyProduct'
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$drop_synonym
(			
@synonym_name VARCHAR(100)
)
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(MAX);
	
	IF OBJECT_ID(@synonym_name, 'SN') IS NOT NULL
	BEGIN
		SET @sqlQuery = CONCAT('DROP SYNONYM  IF EXISTS ', @synonym_name);
		EXEC SQL_UTIL$execute @sqlQuery, -1434;
	END
END;
GO
------------------------------------------------------------------------
-- Name        : DDL$cache_index_dict_views
-- Name        : drop_view
-- Description : This procedure is used to drop all constraints defined by given list.
-- Input       : constraints - list of constraints
--Example      :exec dbo.DDL$cache_index_dict_views 'test.'
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$cache_index_dict_views
(
	@prefix VARCHAR(100)
)
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(MAX),
			@tableName VARCHAR(100);

	IF(@prefix IS NOT NULL)
	BEGIN
		SET @sqlQuery = CONCAT('DROP TABLE IF EXISTS [', @prefix, 'MY_USER_IND_COLUMNS]');
		EXEC SQL_UTIL$execute @sqlQuery;

		SET @sqlQuery = CONCAT('DROP TABLE IF EXISTS [', @prefix, 'MY_USER_INDEXES]');
		EXEC SQL_UTIL$execute @sqlQuery;
	END

	SET @sqlQuery = CONCAT('SELECT * INTO  [', @prefix, 'MY_USER_IND_COLUMNS] FROM MY_USER_IND_COLUMNS');
	EXEC SQL_UTIL$execute @sqlQuery;

	SET @sqlQuery = CONCAT('CREATE INDEX [', @prefix, 'uic_iname] ON [', @prefix, 'MY_USER_IND_COLUMNS](INDEX_NAME)');
	EXEC SQL_UTIL$execute @sqlQuery;

	SET @sqlQuery = CONCAT('CREATE INDEX [', @prefix, 'uic_tname] ON [', @prefix, 'MY_USER_IND_COLUMNS](TABLE_NAME)');
	EXEC SQL_UTIL$execute @sqlQuery;

	SET @sqlQuery = CONCAT('SELECT * INTO  [', @prefix, 'MY_USER_INDEXES] FROM MY_USER_INDEXES');
	EXEC SQL_UTIL$execute @sqlQuery;

	SET @sqlQuery = CONCAT('CREATE INDEX [', @prefix, 'ui_iname] ON [', @prefix, 'MY_USER_INDEXES](INDEX_NAME)');
	EXEC SQL_UTIL$execute @sqlQuery;

	SET @sqlQuery = CONCAT('CREATE INDEX [', @prefix, 'uic_tname] ON [', @prefix, 'MY_USER_INDEXES](TABLE_NAME)');
	EXEC SQL_UTIL$execute @sqlQuery;
END;
GO
------------------------------------------------------------------------
-- Name        : DDL$cache_cons_dict_views
-- Description : caches the dictionary views containing constraints
--               information.
-- Input       : prefix - the prefix of cache tables
-- Example     : EXEC DDL$cache_cons_dict_views 'abc'
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$cache_cons_dict_views(@prefix VARCHAR(256))
AS
BEGIN
	IF @prefix IS NOT NULL AND LEN(@prefix) > 0
	BEGIN
		BEGIN TRY
			BEGIN TRAN
				DECLARE @query NVARCHAR(500);
				SET @query = CONCAT(@prefix, 'user_constraints');
				EXEC DDL$drop_table @query;
				SET @query = CONCAT(@prefix, 'user_cons_columns');
				EXEC DDL$drop_table @query;
				--Commented the following statement as confirmaton is needed, whether empty table need to be created.
				--SET @query = CONCAT('CREATE TABLE ', @prefix,  'user_constraints', '')
				SET @query = CONCAT('SELECT ', dbo.DDL$get_cons_columns_str(''), ' INTO [', @prefix, 'user_constraints] FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS');
				PRINT @query
				EXEC SQL_UTIL$execute @query;
				SET @query = CONCAT('CREATE INDEX ', @prefix, 'co_cname ON [', @prefix, 'user_constraints](constraint_name)');
				EXEC SQL_UTIL$execute @query;
				SET @query = CONCAT('CREATE INDEX [', @prefix, 'co_ctype] ON [', @prefix, 'user_constraints](constraint_type)');
				EXEC SQL_UTIL$execute @query;
				SET @query = CONCAT('CREATE INDEX [', @prefix, 'co_ctable] ON [', @prefix, 'user_constraints](table_name)');
				EXEC SQL_UTIL$execute @query;

				SET @query = CONCAT('SELECT * ', ' INTO [', @prefix, 'user_cons_columns] FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE');
				EXEC SQL_UTIL$execute @query;
				SET @query = CONCAT('CREATE INDEX [', @prefix, 'cco_cname] ON [', @prefix, 'user_cons_columns](constraint_name)');
				EXEC SQL_UTIL$execute @query;
				SET @query = CONCAT('CREATE INDEX [', @prefix, 'cco_ctable] ON [', @prefix, 'user_cons_columns](table_name)');
				EXEC SQL_UTIL$execute @query;
				--SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
			COMMIT TRAN
		END TRY
		BEGIN CATCH
			IF @@TRANCOUNT > 0 
				ROLLBACK TRAN
		END CATCH
	END
END
GO
------------------------------------------------------------------------
-- Name        : DDL$get_indexes
-- Description : This method returns all indexes of a given table.
-- Input       : aTableName - the name of table
-- Output      : the list of all indexes belonging to given table
--Example	   : EXEC DDL$get_indexes 'PLSQLLOG',''
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$get_indexes 
(
	@aTableName VARCHAR(256),
	@prefix VARCHAR(100)
)
AS
BEGIN
	-- @prefix has no role if need to be pick from sys.indexes.
	DECLARE @query NVARCHAR(1000) = CONCAT('SELECT name FROM ',  ' sys.indexes WHERE OBJECT_ID ');
	 IF dbo.DDL$is_synonym(@aTableName) = 1
		SET @query = CONCAT(@query,  ' IN (SELECT OBJECT_ID(PARSENAME(base_object_name, 1)) FROM sys.synonyms WHERE [name] = ''', @aTableName, ''' AND type = ''SN'')');
     ELSE
		SET @query = CONCAT(@query, ' = OBJECT_ID(''', @aTableName, ''')');
	EXEC dbo.DDL$create_object_name_list @query, @aTableName
END
GO
------------------------------------------------------------------------
-- Name        : DDL$get_index_columns 
-- Description : This method returns a list of object names returned
--               by given query.
-- Input       : query     - the object name query
--               @aTableName - a TABLE value
-- Output      : the list of object names
--Example	   : SELECT dbo.DDL$get_index_columns('PAYMENTSERVICECONFIG_AV_IE002','')
------------------------------------------------------------------------
CREATE OR ALTER FUNCTION DDL$get_index_columns 
(
	@aIndexName VARCHAR(200),
	@prefix VARCHAR(10)	=NULL
)
RETURNS VARCHAR(4000)
AS
BEGIN
	DECLARE @NumberofUserType	INT,
			@cur_cols			DDL$type_object_name_list,
			@returnIndex		VARCHAR(4000) = '';
		   
	INSERT INTO @cur_cols(objectName)
	SELECT C.[NAME] FROM  SYS.INDEXES I
		JOIN SYS.INDEX_COLUMNS IC ON (IC.OBJECT_ID = I.OBJECT_ID AND I.INDEX_ID = IC.INDEX_ID)
		JOIN SYS.COLUMNS C ON (IC.OBJECT_ID = C.OBJECT_ID AND IC.COLUMN_ID = C.COLUMN_ID)
	WHERE OBJECTPROPERTY(I.[OBJECT_ID],'ISUSERTABLE') = 1 
	  AND i.name = CAST(@aIndexName AS VARCHAR(100))
					
	SET @NumberOfUserType = (SELECT  COUNT(*) FROM @cur_cols)
	IF @NumberOfUserType > 0
	BEGIN
		SELECT  @returnIndex = dbo.DDL$to_string(@cur_cols)
	END
	
	RETURN @returnIndex
END
GO
------------------------------------------------------------------------
-- Name        : DDL$drop_index
-- Description : This procedure is used to drop all constraints defined by given list.
-- Input       : constraints - list of constraints
--Example      :exec dbo.DDL$drop_index 'IX_USER_SYNONYMS'
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$drop_index
(			
	@Index_name VARCHAR(100)
)
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(MAX),
			@tableName VARCHAR(100);
	
	SET @sqlQuery = CONCAT('SELECT @tableName = OBJECT_NAME(OBJECT_ID) FROM sys.indexes where name=''', @Index_name, '''');

	EXECUTE SP_EXECUTESQL @sqlQuery, N'@tableName VARCHAR(100) OUTPUT', @tableName OUTPUT;
	IF LEN (@tableName) > 0
	BEGIN
		SET @sqlQuery = CONCAT('DROP INDEX IF EXISTS ', @tableName, '.', @Index_name, '');
		EXEC SQL_UTIL$execute @sqlQuery, -1418;
	END
END;
GO
------------------------------------------------------------------------
-- Name        : DDL$rename_index
-- Description : This procedure is used to rename an index.
-- Input       : oldIndexName - the old or current name
--               newIndexName -  the new name  
--Example      :exec dbo.DDL$rename_index 'IX_USER_SYNONYMS1','IX_USER_SYNONYMS',1
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$rename_index
(
	@oldIndexName VARCHAR(100),
	@newIndexName VARCHAR(100),
	@force BIT = 1
)
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(MAX),
			@tableName VARCHAR(100);
	
	SET @sqlQuery = CONCAT('SELECT @tableName = OBJECT_NAME(OBJECT_ID) FROM sys.indexes where name = ''', @oldIndexName+'''');
	
	EXECUTE SP_EXECUTESQL @sqlQuery, N'@tableName VARCHAR(100) OUTPUT', @tableName OUTPUT


	IF @oldIndexName = @newIndexName 
		RETURN;
	--Removed the below code as it would cause to break the functionality. As already dropped index cannot be renamed.
	--ELSE IF (@force =1)
	--BEGIN
	--	EXEC DDL$drop_index @oldIndexName
	--END 

	DECLARE @schema NVARCHAR(30) = SCHEMA_NAME();
	DECLARE	@OldValue NVARCHAR(300) = CONCAT('[', @schema, '].[', @tableName, '].[', @oldIndexName, ']');
	IF LEN(@tableName) > 0
	BEGIN
		IF(@OldValue  IS NOT NULL)
			EXEC sp_rename @OldValue, @newIndexName, N'INDEX';
	END
END;
GO
------------------------------------------------------------------------
-- Description : This procedure is used to migrate an index for a table.
-- Input       : aIndexName  - the index name
--               aTableName  - the name of table or (for staging) the synonym name
--               aColumnsDef - the list of indexed columns
--               aTableSpace - the tablespace of index
--               uniqueness  - uniqueness of index, values UNIQUE or NONUNIQUE, default is NONUNIQUE
--               clustered   - clustered/unclustered option
--Example      :exec DDL$migrate_index 'ServiceLineItem_FK003', 'ServiceLineItem', '(lineItemGroupID)', 'IS_INDX', 'NONUNIQUE'
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$migrate_index
(			
	@aIndexName VARCHAR(100),
	@aTableName VARCHAR(100),
	@aColumnsDef VARCHAR(100),
	@aTableSpace VARCHAR(100),
	@uniqueness VARCHAR(100) = 'NONUNIQUE',
	@clustered VARCHAR(100)  = 'NONCLUSTERED'
)
AS
BEGIN
	BEGIN TRY
		DECLARE @sqlQuery NVARCHAR(MAX),
				@i VARCHAR(2000),
				@def NVARCHAR(max),
				@idx_unique VARCHAR(200) = @uniqueness,
				@table_name varchar(20);

		SET @def = CONCAT(' ', @aColumnsDef, ' ')
		IF(OBJECT_ID('INDEX_INFO') IS NOT NULL)
			DROP TABLE INDEX_INFO
							 
		SET @sqlQuery='SELECT OBJECT_NAME(i.[object_id]) AS [ObjectName]
						,i.[index_id] AS [IndexID]
						,CASE WHEN I.[IS_UNIQUE] = 1 THEN ''UNIQUE'' ELSE ''NONUNIQUE'' END as UNIQUENESS,
						c.[name] ColumnName 
						,i.[name] AS [IndexName]
						,i.[type_desc] AS [IndexType]
						,i.[data_space_id] AS [DatabaseSpaceID]
						,f.[name] AS [FileGroup]
						,d.[physical_name] AS [DatabaseFileName] 
						INTO INDEX_INFO
						FROM [sys].[indexes] i
						JOIN sys.index_columns ic ON ic.object_id = i.object_id and i.index_id = ic.index_id
						INNER JOIN [sys].[filegroups] f
						ON f.[data_space_id] = i.[data_space_id]
						JOIN sys.columns c ON ic.object_id = c.object_id AND ic.column_id = c.column_id
						INNER JOIN [sys].[database_files] d
						ON f.[data_space_id] = d.[data_space_id]
						INNER JOIN [sys].[data_spaces] s
						ON f.[data_space_id] = s.[data_space_id]
						WHERE OBJECTPROPERTY(i.[object_id], ''IsUserTable'') = 1 AND OBJECT_NAME(i.[object_id])=''' + ISNULL(@aTableName,'')+'''
						and concat(''('', dbo.DDL$get_index_columns(i.[name],''''), '')'')=''' + REPLACE(@def, ' ', '')+'''
						ORDER BY OBJECT_NAME(i.[object_id])
						,f.[name]
						,i.[data_space_id]'

		EXEC SQL_UTIL$executeDDL @sqlQuery;
	
		DECLARE @index_Name varchar(100),
				@Object_Name varchar(100),
				@index_Uniqueness varchar(20),
				@file_group varchar(20)

		SELECT @index_name = IndexName, @object_Name = ObjectName, @index_Uniqueness = UNIQUENESS, @file_group = [FileGroup] FROM INDEX_INFO

		IF UPPER(@uniqueness) <> 'UNIQUE'
			SET @idx_unique = ''

		IF(SELECT COUNT(IndexName) FROM INDEX_INFO WHERE (IndexName  LIKE 'SYS%' OR IndexName  LIKE 'PK%'))>0
		BEGIN
			DECLARE @msg VARCHAR(2000) = CONCAT('Do not overwrite system index ', @index_name, ' on table ', @object_Name, '');
			EXEC LOGGER$log @msg, 0
		END
		ELSE IF (@index_Name=UPPER(@aIndexName) and  @index_Uniqueness=UPPER(@uniqueness) AND @file_group=UPPER(@file_group))
		BEGIN
			RETURN
		END
		ELSE IF (@index_Name<>UPPER(@aIndexName) and  @index_Uniqueness=UPPER(@uniqueness) AND @file_group=UPPER(@file_group))
		BEGIN
			EXEC DDL$rename_index @index_Name, @aIndexName
		END
		ELSE
		BEGIN
			EXEC DDL$drop_index @aIndexName
			SET @sqlQuery = CONCAT('CREATE ', @idx_unique, ' ', @clustered, ' INDEX ', @aIndexName, ' ON ', @aTableName, ' ', @def)
			EXEC SQL_UTIL$executeDDL @sqlQuery, 0
		END
	END TRY
	BEGIN CATCH
		EXEC DDL$drop_index @aIndexName
		SET @sqlQuery= CONCAT('CREATE ', @idx_unique, ' ', @clustered, ' INDEX ', @aIndexName, ' ON ', @aTableName, ' ', @def)
		EXEC SQL_UTIL$executeDDL @sqlQuery, 0
	END CATCH
END;
GO
------------------------------------------------------------------------
-- Name        : get_all_foreign_keys
-- Description : This method returns all constraints belonging to given
--               cartridge.
-- Input       : cartridge - the name of cartridge
-- Output      : the list of all constraints belonging to given cartridge
--Example      :exec dbo.DDL$get_cartridge_foreign_keys 'C',''
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$get_cartridge_foreign_keys 
(
	@cartridge VARCHAR(100),
	@prefix VARCHAR(100)
)
AS
BEGIN
	DECLARE @columnList VARCHAR(4000),
			@sqlQuery NVARCHAR(MAX);

	SELECT  @columnList =dbo.DDL$get_cons_columns_str('C')

	SELECT @sqlQuery = CONCAT('SELECT ', @columnList, ' FROM   INFORMATION_SCHEMA.TABLE_CONSTRAINTS C 
	INNER JOIN sys.extended_properties E ON C.TABLE_NAME=OBJECT_NAME(major_id)
	WHERE	C.CONSTRAINT_TYPE=''FOREIGN KEY'' AND  E.VALUE=''', @cartridge, '''');
	EXEC SQL_UTIL$execute @sqlQuery
END;
GO
------------------------------------------------------------------------
-- Name        : get_all_foreign_keys
-- Description : This method returns all foreign keys referencing staging tables.
-- Output      : the list of all foreign keys
--Example      :exec dbo.DDL$get_all_foreign_keys 'C'
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$get_all_foreign_keys 
(
	@prefix  VARCHAR(100)
)
AS
BEGIN
	DECLARE @columnList VARCHAR(4000),
			@sqlQuery NVARCHAR(MAX);

	SELECT  @columnList =dbo.DDL$get_cons_columns_str('C')

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
						WHERE  C.CONSTRAINT_TYPE = ''FOREIGN KEY'''
			
	EXEC SQL_UTIL$execute3 @sqlQuery
END;
GO
------------------------------------------------------------------------
-- Name        : get_references
-- Description : This function returns all foreign keys referencing given table.
-- Input       : aTableName  - the name of table
-- Output      : list of foreign keys referencing given table
--Example      : exec dbo.DDL$get_references 'DOMAININFORMATION',''
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$get_references 
(
	@aTableName VARCHAR(100),
	@prefix VARCHAR(100)
)
AS
BEGIN
	DECLARE @columnList VARCHAR(4000),
			@sqlQuery NVARCHAR(MAX)
	SELECT  @columnList =dbo.DDL$get_cons_columns_str('C')

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
						WHERE  C.CONSTRAINT_TYPE = ''FOREIGN KEY'' AND C.TABLE_NAME=''' + @aTableName + ''''

	EXEC SQL_UTIL$execute3 @sqlQuery
END;
GO
------------------------------------------------------------------------------------------
-- Name        : migrate_table_column
-- Description : migrates a table column to another datatype.
--               Reason: alter table <table> modify <column> <new_col_type>
--               throws generic ORA-22858: invalid alteration of datatype
-- Input       : table_name  - name of table
--               column_name - name of the column
--               data_type   - name of new datatype for column_name
--Example      : EXEC dbo.DDL$migrate_table_column 'stagingmview','query','CLOB'
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$migrate_table_column
(
	@table_name varchar(100),
	@column_name varchar(100),
	@data_type VARCHAR(100)							
)
AS
BEGIN
	DECLARE @sqlQuery NVARCHAR(MAX),
			@tmp_col VARCHAR(50) = 'tmp';
	IF EXISTS(SELECT 1 FROM sys.tables WHERE name = @table_name)
	BEGIN
		DECLARE @schema NVARCHAR(30);
		SELECT @schema = SCHEMA_NAME(SCHEMA_ID) FROM sys.tables WHERE name = @table_name

		SET @sqlQuery = CONCAT('ALTER TABLE ',@schema, '.', @table_name, ' ADD ', @tmp_col, '  ', @data_type);
		SELECT @sqlQuery
		EXEC SQL_UTIL$execute3 @sqlQuery
		
		SET @sqlQuery = CONCAT('UPDATE ',@schema, '.', @table_name, ' SET ', @tmp_col, ' = ', @column_name)
		SELECT @sqlQuery
		EXEC SQL_UTIL$execute3  @sqlQuery

		SET @sqlQuery = CONCAT('ALTER TABLE ',@schema, '.', @table_name, ' DROP COLUMN  ', @column_name)
		EXEC SQL_UTIL$execute3 @sqlQuery

		DECLARE @OldValue NVARCHAR(300) = CONCAT('[',  @schema, '].[',  @table_name,  '].[', @tmp_col+']')
		IF(@OldValue  IS NOT NULL)
			EXEC sp_rename @OldValue, @column_name, N'COLUMN';
	END
END;
GO

------------------------------------------------------------------------
-- Name        : log
-- Description : logs given array of object names
-- Input       : objects - array of objects
-- Example	   :
--				DECLARE @tab DDL$type_object_name_list
--				INSERT INTO @tab
--				SELECT 'A' UNION ALL
--				SELECT 'B' UNION ALL
--				SELECT 'C' UNION ALL
--				SELECT 'D'
--				EXEC DDL$LOG @tab
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$log
(
	@objects DDL$type_object_name_list READONLY
) AS
BEGIN
	DECLARE @logObjects VARCHAR(MAX);
	SELECT @logObjects = dbo.DDL$to_string(@objects);
   EXEC LOGGER$log @logObjects, 0;
END;
GO
------------------------------------------------------------------------
-- Name        : DDL$log2
-- Description : logs given array of columns
-- Input       : cols - the array of columns
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$log2
(
	@cols TypeTableColumns READONLY
)
AS
BEGIN
	DECLARE	@count INT = 1,
			@counter INT,
			@columnName VARCHAR(256),
			@dataType VARCHAR(100),
			@logMessage VARCHAR(600);
	IF (SELECT COUNT(1) FROM @cols) <= 0
		EXEC LOGGER$log 'Column array is empty.', 0;
	ELSE
	BEGIN
		SELECT @counter = COUNT(1) FROM @cols
		WHILE (@count <= @counter)
		BEGIN
			SELECT @columnName = ColumnName, @dataType = DataType FROM @cols WHERE ID = @count;
			SET @logMessage = CONCAT(@columnName, ' ', @dataType)
			EXEC LOGGER$log @logMessage, 0
			SET @count = @count + 1
		END
	END
END;
GO
------------------------------------------------------------------------
-- Name        : DDL$log3
-- Description : logs given array of constraints
-- Input       : cons - the array of constraints
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$log3
(
	@cons DDL$type_constraints_list READONLY
)
AS
BEGIN
	DECLARE @cols1				DDL$type_object_name_list,
			@cols2				DDL$type_object_name_list,
			@ref_cons			DDL$type_constraints,
			@count				INT = 1,
			@counter			INT,
			@constraintName		VARCHAR(256),
			@rconstraintName	VARCHAR(256),
			@tableName			VARCHAR(256),
			@rtableName			VARCHAR(256),
			@logMessage			VARCHAR(4000);
	IF (SELECT COUNT(1) FROM @cons) <= 0
		EXEC LOGGER$log 'Constraints array is empty.', 0;
	ELSE
	BEGIN
		SELECT @counter = COUNT(1) FROM @cons
		WHILE(@count < = @counter)
		BEGIN
			SELECT @constraintName = objectConstraint, @rconstraintName = objectConstraint, @tableName = objectName FROM @cons WHERE row = @count
			INSERT INTO @cols1
				EXEC DDL$get_cons_columns @constraintName, ''
			INSERT INTO @cols2
				EXEC DDL$get_cons_columns @rconstraintName, ''
			INSERT INTO @ref_cons
				EXEC DDL$get_constraint @rconstraintName, ''
			SET @count = @count + 1

			SELECT TOP 1 @rtableName = TABLE_NAME FROM @ref_cons

			SET @logMessage = CONCAT(@tableName, '(' , dbo.DDL$to_string(@cols1), ')', @rtableName, '(', dbo.DDL$to_string(@cols2), ')')

			EXEC LOGGER$log @logMessage, 0;
			DELETE FROM @ref_cons
			DELETE FROM @cols1
			DELETE FROM @cols2
		END
	END
	
END;
GO
------------------------------------------------------------------------
-- Name        : DDL$drop_constraints
-- Name        : drop_constraints
-- Description : This procedure is used to drop all constraints defined by given list.
-- Input       : constraints - list of constraints
--Example      :exec dbo.DDL$drop_constraints ''
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$drop_constraints 
(
	@constraints DDL$type_constraints READONLY
)
AS
BEGIN
	DECLARE @constraintList INT,
			@sqlQuery NVARCHAR(MAX)
	
	SELECT  @constraintList = COUNT(1) FROM  @constraints
	IF(@constraintList)=0
		RETURN;

	DECLARE @count INT =1
	WHILE(@count <= @constraintList)
	BEGIN
		DECLARE @tableName VARCHAR(100),
				@constraintName VARCHAR(100);
		SELECT @tableName = TABLE_NAME, @constraintName = CONSTRAINT_NAME FROM @constraints WHERE row = @count;
		SELECT @sqlQuery = CONCAT('ALTER TABLE ', @tableName, ' DROP CONSTRAINT  ', @constraintName, '');
		EXECUTE SQL_UTIL$execute3 @sqlQuery
		SET @count=@count+1
	END
END;
GO
------------------------------------------------------------------------------------------
-- Name        : DDL$is_staging_constraint
-- Description : This function returns the synonym name of given staging table. It does
--               not matter if table is active or inactive ($1 or $2).
-- Input       : tableName   - the name of staging table (live or shadow)
-- Output      : the synonym of given staging table
--Example	   : select [dbo].[DDL$is_staging_constraint]('[USER_SYNONYMS]')
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION DDL$is_staging_constraint 
(
	@constraints	DDL$ENABLE_CONSTRAINTS_type_constraints READONLY,
	@v_staging_fks	DDL$ENABLE_CONSTRAINTS_type_constraints READONLY
)
RETURNS BIT
AS
BEGIN
	DECLARE @msg				VARCHAR(500),
			@v_cnt				INT,
			@count				INT,
			@constraint_name	VARCHAR(50),
			@constraintName		VARCHAR(50),
			@r_constraintName	VARCHAR(50),
			@i					INT= 1;

	SELECT @count = COUNT(1) FROM @v_staging_fks

	IF @count > 0
	BEGIN
		WHILE(@i<=@count)
		BEGIN
			SELECT @constraint_name	 = CONSTRAINT_NAME FROM @v_staging_fks  WHERE ROW = @i
			SELECT @constraintName	 = CONSTRAINT_NAME FROM @constraints  WHERE ROW = @i
			SELECT @r_constraintName = R_CONSTRAINT_NAME FROM @constraints  WHERE ROW = @i
			IF(@constraint_name	 = @constraintName OR @constraint_name=@r_constraintName)
				SET @v_cnt=1
			ELSE 
				SET @v_cnt=0
		END
	END
	ELSE
		SET @v_cnt=0
	RETURN CASE WHEN @v_cnt=0 THEN 0 ELSE 1 END 
END;
GO
------------------------------------------------------------------------
-- Name        : DDL$get_enable_constraints
-- Description : This method returns all foreign keys referencing staging tables.
-- Output      : the list of all foreign keys
--Example      : EXEC DDL$get_enable_constraints 'FK__DOMAIN$1__DOMAIN__08F5448B',''
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$get_enable_constraints
(
	@aConstraintName VARCHAR(250),
	@prefix VARCHAR(50)=''
)
AS
BEGIN
	IF (OBJECT_ID('TEMP') IS NOT NULL)
		DROP TABLE TEMP

	SELECT tb.*
	,[Enabled]   = CASE WHEN ((C.Status & 0x4000)) = 0 THEN 1 ELSE 0 END 
	INTO TEMP
	FROM sys.tables AS t
	INNER JOIN sys.schemas AS s ON t.schema_id = s.schema_id
	INNER JOIN sys.sysconstraints C ON t.object_id = c.ID
	--INNER JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS tb ON object_id(tb.table_name) = c.parent_object_id
	INNER JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS tb ON object_id(tb.table_name) = t.object_id
	WHERE tb.CONSTRAINT_TYPE IN (
			'FOREIGN KEY'
			,'UNIQUE'
			,'PRIMARY KEY'
			)
		AND (
				tb.table_name LIKE '%$1'
				OR tb.table_name LIKE '%$2'
			)

	ALTER TABLE TEMP ADD R_CONSTRAINT_NAME VARCHAR(200)
	UPDATE T
	SET R_CONSTRAINT_NAME = J.CONSTRAINT_NAME
	FROM TEMP T
	INNER JOIN TEMP J ON T.TABLE_NAME = J.TABLE_NAME
	WHERE J.CONSTRAINT_TYPE = 'FOREIGN KEY'


	DELETE 
	FROM TEMP WHERE R_CONSTRAINT_NAME IS NULL

		IF @aConstraintName IS NOT NULL
			SELECT * FROM TEMP WHERE CONSTRAINT_NAME=@aConstraintName
			ELSE
	SELECT * FROM TEMP
END;
GO
------------------------------------------------------------------------
-- Name        : DDL$enable_constraints
-- Description : This method is used to enable all constraints
--               of given list.
-- Input       : constraints - list of constraints
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$enable_constraints 
(
	@constraints	DDL$ENABLE_CONSTRAINTS_type_constraints READONLY
)
AS
BEGIN
	DECLARE @v_staging_fks					DDL$ENABLE_CONSTRAINTS_type_constraints,
			@Constraint_v_staging_fks		DDL$ENABLE_CONSTRAINTS_type_constraints,
			@V_v_staging_fks				DDL$ENABLE_CONSTRAINTS_type_constraints,
			@count							INT,
			@i								INT=1,
			@status							BIT,
			@constraint_Type				VARCHAR(50),
			@constraint_name				VARCHAR(50),
			@msg							VARCHAR(500),
			@v_cnt							INT;
	DECLARE @v_enableFKConstraints			VARCHAR(50) = dbo.DDL$get_string_preference('EnableFKConstraints', 'system'),
			@v_validateFKConstraints		VARCHAR(50) = dbo.DDL$get_string_preference('ValidateFKConstraints', 'system'),
			@v_validate						VARCHAR(50) = 'NOVALIDATE';

	SELECT @count = COUNT(1) FROM @constraints
	IF @count = 0
		RETURN;

	SELECT @v_cnt = count(*) FROM process_av WHERE name='StagingSystemType' AND stringvalue='LIVE';
	IF @v_cnt > 0
	BEGIN
		INSERT INTO @v_staging_fks
			EXEC DDL$get_enable_constraints NULL,''
	END

    IF LOWER(@v_validateFKConstraints) = 'true' 
	BEGIN
        SET @v_validate = 'VALIDATE';
    END;

	WHILE(@i <= @count)
	BEGIN
		SELECT @status=STATUS FROM @v_staging_fks WHERE ROW = @i
		IF(@status = 0)
		BEGIN
			SELECT @constraint_Type = CONSTRAINT_TYPE FROM @v_staging_fks  WHERE ROW = @i
			SELECT @constraint_name	= CONSTRAINT_NAME FROM @v_staging_fks  WHERE ROW = @i
			DECLARE @table_name VARCHAR(100)
			SELECT @table_name=TABLE_NAME FROM @v_staging_fks  WHERE ROW=@i
			IF(@constraint_Type='FOREIGN KEY')
			BEGIN
								
				INSERT INTO @Constraint_v_staging_fks(CONSTRAINT_CATALOG,CONSTRAINT_SCHEMA,CONSTRAINT_NAME,R_CONSTRAINT_NAME,TABLE_CATALOG,TABLE_SCHEMA,TABLE_NAME,CONSTRAINT_TYPE,IS_DEFERRABLE,INITIALLY_DEFERRED  ,STATUS)
				SELECT CONSTRAINT_CATALOG,CONSTRAINT_SCHEMA,CONSTRAINT_NAME,R_CONSTRAINT_NAME,TABLE_CATALOG,TABLE_SCHEMA,TABLE_NAME,CONSTRAINT_TYPE,IS_DEFERRABLE,INITIALLY_DEFERRED  ,STATUS FROM @constraints WHERE ROW=@i

								
				INSERT INTO @V_v_staging_fks(CONSTRAINT_CATALOG,CONSTRAINT_SCHEMA,CONSTRAINT_NAME,R_CONSTRAINT_NAME,TABLE_CATALOG,TABLE_SCHEMA,TABLE_NAME,CONSTRAINT_TYPE,IS_DEFERRABLE,INITIALLY_DEFERRED  ,STATUS)
				SELECT CONSTRAINT_CATALOG,CONSTRAINT_SCHEMA,CONSTRAINT_NAME,R_CONSTRAINT_NAME,TABLE_CATALOG,TABLE_SCHEMA,TABLE_NAME,CONSTRAINT_TYPE,IS_DEFERRABLE,INITIALLY_DEFERRED  ,STATUS FROM @v_staging_fks WHERE ROW=@i

				IF @v_enableFKConstraints IS NULL OR lower(@v_enableFKConstraints) <> 'true' 
				BEGIN
					SET @msg = CONCAT('Do not enable ', @constraint_name, '.');
					EXEC LOGGER$log @msg, 0;
				END
				ELSE IF dbo.DDL$is_staging_constraint(@Constraint_v_staging_fks,@V_v_staging_fks) =1
				BEGIN
					SET @msg = CONCAT('Do not enable ', @constraint_name, ', because it references a staging table.');
					EXEC LOGGER$log @msg, 0;
				END
				ELSE
				BEGIN
					SET @msg = CONCAT('ALTER TABLE ', @table_name, ' CHECK CONSTRAINT', @constraint_name);
					EXEC SQL_UTIL$execute @msg, 0;
				END
			END
			ELSE
			BEGIN
				SET @msg = CONCAT('ALTER TABLE ', @table_name, ' CHECK CONSTRAINT', @constraint_name);
				EXEC SQL_UTIL$execute @msg, 0;
			END			
		END
		SET @i = @i+1;
	END
END;
GO

------------------------------------------------------------------------------------------
-- Name        : DDL$drop_xml_index
-- Description : This method is used to drop a xml index
-- Input       : index_name  - the index name
--               table_name  - the name of table or (for staging) the synonym name
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$drop_xml_index
(
	@index_name		VARCHAR(256),
	@table_name		VARCHAR(256)
)
AS
BEGIN
	DECLARE @query 			VARCHAR(256);
			
	BEGIN TRAN
		SET	@query = concat('DROP INDEX IF EXISTS ', @index_name, '_PROPERTY ON ', @table_name)
		EXEC SQL_UTIL$executeDDL @query

		SET	@query = concat('DROP INDEX IF EXISTS ', @index_name, '_VALUE ON ', @table_name)
		EXEC SQL_UTIL$executeDDL @query

		SET	@query = concat('DROP INDEX IF EXISTS ', @index_name, '_PATH ON ', @table_name)
		EXEC SQL_UTIL$executeDDL @query

		SET	@query = concat('DROP INDEX IF EXISTS ', @index_name, ' ON ', @table_name)
		EXEC SQL_UTIL$executeDDL @query
	COMMIT TRAN
END 

GO

------------------------------------------------------------------------------------------
-- Name        : DDL$create_xml_index
-- Description : This method is used to create a xml index
--               In case the index already exists it will be removed at first
-- Input       : index_name  - the index name
--               table_name  - the name of table or (for staging) the synonym name
--               column_name - the name of the column for which the index will be created
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$create_xml_index
(			
	@index_name		VARCHAR(256),
	@table_name		VARCHAR(256),
	@column_name	VARCHAR(256)
)
AS
BEGIN
	DECLARE @query VARCHAR(256);
			
	EXEC DDL$drop_xml_index @index_name, @table_name
	
	BEGIN TRAN
		-- create primary index
		SET @query = concat('CREATE PRIMARY XML INDEX ', @index_name, ' ON ', @table_name, ' ( ', @column_name, ' )')
		EXEC SQL_UTIL$executeDDL @query
		
		-- Create secondary indexes (PATH, VALUE)
		SET @query = concat('CREATE XML INDEX ', @index_name, '_PATH ON ', @table_name, ' ( ', @column_name, ' )', ' USING XML INDEX ', @index_name, ' FOR PATH')
		EXEC SQL_UTIL$executeDDL @query

		SET @query = concat('CREATE XML INDEX ', @index_name, '_VALUE ON ', @table_name, ' ( ', @column_name, ' )', ' USING XML INDEX ', @index_name, ' FOR VALUE')
		EXEC SQL_UTIL$executeDDL @query

		-- SET @query = concat('CREATE XML INDEX ', @index_name, '_PROPERTY ON ', @table_name, ' ( ', @column_name, ' )', ' USING XML INDEX ', @index_name, ' FOR PROPERTY')
		-- EXEC SQL_UTIL$executeDDL @query
		
	COMMIT TRAN
END
GO

------------------------------------------------------------------------
-- Name        : DDL$create_ft_index
-- Description : This method is used to create a fulltext index
-- Input         table_name  - the name of table or (for staging) the synonym name
--               column_name - the name(s) of the included table column(s)
--               doRecreate  - if the old index should be dropped before
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$create_ft_index
(
	@aTableName 		VARCHAR(100),
	@aColumnNamesString VARCHAR(100) = 'STRINGVALUE',
	@doRecreate 		BIT = 1
)
AS
BEGIN
	DECLARE @cnt INTEGER,
			@query NVARCHAR(500),
			@catalogName NVARCHAR(100) = CONCAT(@aTableName, 'FTCat'),
			@aColumnNames VARCHAR(8000),
			@indexName VARCHAR(100);
			
	-- remove fulltext indexes
	SET IMPLICIT_TRANSACTIONS OFF

	IF @doRecreate = 1 
	BEGIN
		IF EXISTS (select * from sys.fulltext_index_columns where object_name(object_id) = @aTableName)
		BEGIN
			SET @query = concat('DROP FULLTEXT INDEX ON ', @aTableName);
			EXEC SQL_UTIL$execute @query;
		END
		IF EXISTS (select * from sys.fulltext_catalogs where name = @catalogName)
		BEGIN
			SET @query = concat('DROP FULLTEXT CATALOG ', @catalogName);
			EXEC SQL_UTIL$execute @query;
		END
	END 
	
	-- prepare column names
	DECLARE @tempTable TABLE (columnname VARCHAR(500));
	INSERT into @tempTable
	select value from STRING_SPLIT(@aColumnNamesString, ',');
	SELECT @aColumnNames = COALESCE(@aColumnNames + ', ', '') + columnname + ' Language 1033' FROM @tempTable;
	
	select @indexName = i.name
	from sys.tables t
		 INNER JOIN sys.indexes i ON t.object_id = i.object_id
		 INNER JOIN sys.index_columns ic ON ic.object_id = i.object_id AND ic.index_id = i.index_id
	where t.name = @aTableName
	  and i.is_primary_key = 1
	GROUP BY t.name, i.name 
	HAVING count(*) = 1;
	
	-- use a computed unique index
	IF (@indexName IS NULL)
	BEGIN
		SET @indexName = 'FT_INDEX_' + @aTableName;
		
		IF @doRecreate = 1 
			EXEC DDL$drop_index @indexName;			
		
		IF (NOT EXISTS(SELECT 1 FROM sys.columns 
          WHERE Name = N'FT_INDEX'
          AND Object_ID = Object_ID(@aTableName)))
        BEGIN
		    DECLARE @columnStr NVARCHAR(500) = '';
	        SELECT @columnStr=@columnStr + ',''|'',' + COLUMN_NAME
			FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
			WHERE OBJECTPROPERTY(OBJECT_ID(CONSTRAINT_SCHEMA + '.' + QUOTENAME(CONSTRAINT_NAME)), 'IsPrimaryKey') = 1
			AND TABLE_NAME = @aTableName

			SET @query = CONCAT('ALTER TABLE ', @aTableName, ' ADD FT_INDEX AS CONCAT(', RIGHT(@columnStr,LEN(@columnStr)-5), ')');
			EXEC SQL_UTIL$executeDDL @query
        END
        
        IF (NOT EXISTS (SELECT name from sys.indexes  
           WHERE name = @indexName))
        BEGIN
  		 	SET @query = CONCAT('CREATE UNIQUE INDEX ',@indexName,' ON ',@aTableName,'(FT_INDEX)');
  		 	EXEC SQL_UTIL$executeDDL @query
  		END
	END
	
	-- create fulltext indexes (if missing)
	IF NOT EXISTS (select * from sys.fulltext_catalogs where name = @catalogName)
	BEGIN
		SET @query = CONCAT('CREATE FULLTEXT CATALOG ', @catalogName, ' WITH ACCENT_SENSITIVITY = ON');
		EXEC SQL_UTIL$executeDDL @query
	END
	
	IF NOT EXISTS (select * from sys.fulltext_index_columns where object_name(object_id) = @aTableName)
	BEGIN
		SET @query = CONCAT('CREATE FULLTEXT INDEX ON ', @aTableName, '( ', @aColumnNames, ') KEY INDEX ', @indexName, ' ON ', @catalogName, ' WITH CHANGE_TRACKING AUTO');
		EXEC SQL_UTIL$executeDDL @query
	END
END

GO

------------------------------------------------------------------------
-- Name        : DDL$drop_ft_index
-- Description : This method is used to drop a fulltext index
-- Input         table_name  - the name of table or (for staging) the synonym name
--               column_name - the name(s) of the included table column(s)
------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE DDL$drop_ft_index
(
	@aTableName VARCHAR(100)
)
AS
BEGIN
	DECLARE @query NVARCHAR(500),
			@catalogName NVARCHAR(100) = CONCAT(@aTableName, 'FTCat');

	BEGIN
		IF EXISTS (select * from sys.fulltext_index_columns where object_name(object_id) = @aTableName)
		BEGIN
			SET @query = concat('DROP FULLTEXT INDEX ON ', @aTableName);
			EXEC SQL_UTIL$execute @query;
		END
		IF EXISTS (select * from sys.fulltext_catalogs where name = @catalogName)
		BEGIN
			SET @query = concat('DROP FULLTEXT CATALOG ', @catalogName);
			EXEC SQL_UTIL$execute @query;
		END
	END 
END

GO