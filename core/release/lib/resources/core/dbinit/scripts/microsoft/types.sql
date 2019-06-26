------------------------------------------------------------------------------------------
-- Name        : TYPES_init_types
-- Description : this collection type is to create unique types
-- Example     : EXEC Types_init_types
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.TYPES_init_types
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @l_types TABLE
	(
		ID INT IDENTITY,
		TypeName VARCHAR(50),
		TypeDataType	VARCHAR(50)
	);
	------------------------------------------------------------------------------------------
	-- Name        : collectionOfUUIDs
	-- Description : this collection type is for aggregation of UUIDs
	-- Example     : select cast(collect(uuid) as collectionOfUUIDs) as uuids from domain
	------------------------------------------------------------------------------------------
	INSERT INTO @l_types
		SELECT 'collectionOfUUIDs', 'as table (value VARCHAR(112))';
	------------------------------------------------------------------------------------------
	-- Name        : collectionOfSKUs
	-- Description : this collection type is for aggregation of SKUs
	-- Example     : select cast(collect(sku) as collectionOfSKUs) as skus from product
	------------------------------------------------------------------------------------------
	--INSERT INTO @l_types
	--	SELECT 'collectionOfSKUs', 'VARCHAR(1024)';
	SELECT * FROM @l_types;
END;
GO
------------------------------------------------------------------------------------------
-- Name        : TYPES_drop_types
-- Description : this collection type is to drop types
-- Example     : EXEC TYPES_drop_types
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.TYPES_drop_types
AS
BEGIN
	SET NOCOUNT ON;	
	DECLARE @l_types TABLE
	(
		ID INT,
		TypeName VARCHAR(50),
		TypeDataType	VARCHAR(300)
	); 
	DECLARE @count		INT,
			@counter	INT = 1,
			@query		NVARCHAR(400),
			@typeName	NVARCHAR(50);
    
	INSERT INTO @l_types
		EXEC TYPES_init_types;
	SELECT @count = COUNT(1) FROM @l_types;
	WHILE (@counter <= @count)
	BEGIN
		SELECT @typeName = TypeName FROM @l_types WHERE ID = @counter;
		SET @query = CONCAT('DROP TYPE IF EXISTS ', @typeName);
		EXEC SQL_UTIL$executeDDL @query, 4043;
		SET @counter = @counter + 1;
	END
END;
GO
------------------------------------------------------------------------------------------
-- Name        : TYPES_create_types
-- Description : this collection type is to create types
-- Example     : EXEC TYPES_create_types
------------------------------------------------------------------------------------------
CREATE OR ALTER PROCEDURE dbo.TYPES_create_types AS
BEGIN
	SET NOCOUNT ON;
    DECLARE @l_types TABLE
	(
		ID INT,
		TypeName VARCHAR(50),
		TypeDataType	VARCHAR(300)
	); 
	DECLARE @count		INT,
			@counter	INT = 1,
			@query		NVARCHAR(400),
			@typeName	NVARCHAR(50),
			@dataType	NVARCHAR(50);
    
	EXEC TYPES_drop_types;
	
	INSERT INTO @l_types
		EXEC TYPES_init_types;
	
	SELECT @count = COUNT(1) FROM @l_types;
	WHILE (@counter <= @count)
	BEGIN
		SELECT @typeName = TypeName, @dataType = TypeDataType FROM @l_types WHERE ID = @counter;
		SET @query = CONCAT('CREATE TYPE ', @typeName, ' ', @dataType);
		EXEC SQL_UTIL$executeDDL @query, 4043;
		SET @counter = @counter + 1;
	END
END;
GO