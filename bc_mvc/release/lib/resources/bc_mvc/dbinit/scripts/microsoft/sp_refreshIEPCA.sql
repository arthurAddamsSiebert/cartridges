CREATE OR ALTER FUNCTION sp_refreshIEPCA$syncCtxIndex()
RETURNS BIT AS
BEGIN
	--DECLARE  @ctxIdxName VARCHAR(256);
	--SELECT @ctxIdxName = idx_name
	--FROM ctx_user_indexes
	--WHERE  idx_text_name='ATTRIBUTES'
	--AND idx_table = dbo.STAGING$get_live_table_name('PRODUCT');
	----ctx_ddl.sync_index(ctxIdxName);

	--SELECT @ctxIdxName = idx_name
	--FROM ctx_user_indexes
	--WHERE  idx_text_name='ATTRIBUTES'
	--AND idx_table=dbo.STAGING$get_live_table_name('DERIVEDPRODUCT');
--	ctx_ddl.sync_index(ctxIdxName);
	RETURN 1;
END;
GO
CREATE OR ALTER PROCEDURE sp_refreshIEPCA
(
	@full_refresh BIT = 0
)
AS
BEGIN
	DECLARE
	@sourceTable     VARCHAR(256),
	@targetTable     VARCHAR(256),
	@synonymName     VARCHAR(256) = UPPER('iproductcategoryassignment'),
	@maxLMCategories DATE,
	@cCategory#      NUMERIC,
	@maxLMProducts   DATE,
	@cProduct#       NUMERIC,
	@maxLMDProducts  DATE,
	@cDProduct#      NUMERIC,
	@pba             NUMERIC, --productbindingattribute%ROWTYPE, -- Convert to table variable
	@isNative        NUMERIC(10,0),
	@sqlQuery		 NVARCHAR(3000),
	@comment		 NVARCHAR(3000),
	@counter		 INT = 1,
	@count			 INT,
	@name			NVARCHAR(400),
	@maxcategorylm	DATETIME2,
	@category#		FLOAT,
	@maxproductlm	DATETIME2,
	@product#		FLOAT,
	@condition		VARCHAR;
	DECLARE @ProductBinding TABLE
	(
		ID				INT IDENTITY,
		NAME			NVARCHAR(400),
		MAXCATEGORYLM	DATETIME2,
		CATEGORY#		FLOAT,
		MAXPRODUCTLM	DATETIME2,
		PRODUCT#		FLOAT
	);

    SELECT @sourceTable = base_object_name FROM sys.synonyms WHERE name = @synonymName;
    IF LEFT(@sourceTable, 1) = '['
		SET @sourceTable = SUBSTRING(@sourceTable, 2, LEN(@sourceTable))
	IF RIGHT(@sourceTable, 1) = ']'
		SET @sourceTable = SUBSTRING(@sourceTable, 1, LEN(@sourceTable)-1)
    IF SUBSTRING(@sourceTable, LEN(@sourceTable)-1, 1) = '1' 
        SET @targetTable = CONCAT(SUBSTRING(@sourceTable, 1, LEN(@sourceTable)-1), '2');
    ELSE
        SET @targetTable = CONCAT(SUBSTRING(@sourceTable, 1, LEN(@sourceTable)-1), '1');
	BEGIN TRAN
		-- update product binding attribute table
		DELETE FROM productbindingattribute WHERE name NOT IN (SELECT bindingkey FROM iepca_bindingkeys);
		INSERT INTO productbindingattribute (name) SELECT bindingkey FROM iepca_bindingkeys WHERE bindingkey NOT IN (SELECT name FROM productbindingattribute);
    COMMIT;

	SET @sqlQuery = CONCAT('TRUNCATE TABLE ', @targetTable)
    EXEC SQL_UTIL$execute @sqlQuery, 0;

	INSERT INTO @ProductBinding
		SELECT * FROM productbindingattribute
    -- for each binding attribute
	SELECT @count = COUNT(1) FROM @ProductBinding
	WHILE @counter <= @count
	BEGIN
		SELECT @name = name, @maxcategorylm = MAXCATEGORYLM, @category# = CATEGORY#, @maxproductlm = MAXPRODUCTLM, @product# = PRODUCT# FROM @ProductBinding WHERE ID = @counter;

        SELECT @isNative = COUNT(*) FROM sys.columns WHERE name = @name and OBJECT_NAME(object_id) = dbo.STAGING$get_live_table_name('PRODUCT');
        SELECT @maxLMCategories = MAX(lastmodified), @cCategory# = COUNT(*)  FROM catalogcategory WHERE productbindingattribute = @name;
        SET @condition = concat('HASPATH (/attrs/attr[@name="', @name, '"])')
		SELECT @maxLMProducts = MAX(lastmodified), @cProduct# = COUNT(*) FROM product WHERE attributes.exist('//attr/attr[@name=sql:variable("@name")]') > 0
		SELECT @maxLMDProducts = MAX(lastmodified), @cDProduct# = COUNT(*)  FROM derivedproduct WHERE attributes.exist('//attr/attr[@name=sql:variable("@name")]') > 0
		SET @comment = CONCAT('*** ', @name, ': c=(', @cCategory#, ',', @maxLMCategories, '), p=(', @cProduct#, ',', @maxLMProducts, '), dp=(', @cDProduct#, ',', @maxLMDProducts, ')');
        EXEC LOGGER$log @comment, 0;

        SET @cProduct# = @cProduct# + @cDProduct#;
        IF @maxLMDProducts >= ISNULL(@maxLMProducts, @maxLMDProducts)
            SET @maxLMProducts = @maxLMDProducts;

        IF @cProduct# = 0 OR @cCategory# = 0
		BEGIN
			SET @comment = CONCAT('No implicit assignments for attribute ', @name, ' were found.');
            EXEC LOGGER$log @comment, 0;
		END
        ELSE
		BEGIN
            IF NOT @full_refresh = 1 AND @maxcategorylm = @maxLMCategories AND @maxproductlm = @maxLMProducts AND @product# = @cProduct# AND @category# = @cCategory#
			BEGIN
				BEGIN TRAN
					SET @comment = CONCAT('*** The product binding attribute ''', @name, ''' has not changed!');
					EXEC LOGGER$log @comment, 0;
					SET @sqlQuery = CONCAT('INSERT /*+ APPEND */ INTO ', @targetTable, ' (categoryid,productid,productdomainid,productbindingattribute) ', 
						'SELECT categoryid,productid,productdomainid,productbindingattribute FROM ', @sourceTable, 
						' WHERE productbindingattribute=''', @name, '''');
					EXEC SQL_UTIL$execute @sqlQuery, 0;
                COMMIT;
			END
            ELSE IF @isNative = 0
			BEGIN
                IF dbo.sp_refreshIEPCA$syncCtxIndex() = 1
				BEGIN
					BEGIN TRAN
						-- get attribute value from XML attributes
						SET @sqlQuery = CONCAT('INSERT /*+ APPEND */ INTO ', @targetTable, ' (categoryid,productid,productdomainid, productbindingattribute) ', 
							'SELECT c.uuid, p.uuid, p.domainid, c.productbindingattribute ', 
							' FROM catalogcategory c ', 
							' JOIN (SELECT * FROM product WHERE attributes.exist(''//attr/attr[@name=sql:variable("@name")]'') > 0) p ', 
							' ON (c.productbindingvalue=extractValue(XMLType(p.attributes), ''/attrs/attr[@name="', @name, '"]/string'')) ', 
							'WHERE NOT EXISTS ', 
							'( ', 
							' SELECT 1 FROM ', @targetTable, 
							' WHERE categoryid=c.uuid AND productid=p.uuid AND productdomainid=p.domainid ', 
							') ');
						EXEC SQL_UTIL$execute @sqlQuery, 0;
                    COMMIT;
					BEGIN TRAN
						SET @sqlQuery = CONCAT('INSERT /*+ APPEND */ INTO ', @targetTable, ' (categoryid,productid,productdomainid, productbindingattribute) ',
							'SELECT c.uuid, p.baseproductid, p.domainid, c.productbindingattribute ',
							' FROM catalogcategory c ',
							' JOIN (SELECT * FROM derivedproduct WHERE attributes.exist(''//attr/attr[@name=sql:variable("@name")]'') > 0) p ',
							' ON (c.productbindingvalue=extractValue(XMLType(p.attributes), ''/attrs/attr[@name="', @name, '"]/string'')) ',
							'WHERE NOT EXISTS ',
							'( ',
							' SELECT 1 FROM ', @targetTable,
							' WHERE categoryid=c.uuid AND productid=p.baseproductid AND productdomainid=p.domainid ',
							') ');
						EXEC SQL_UTIL$execute @sqlQuery, 0;
                    COMMIT;
				END
                ELSE
				BEGIN
					SET @comment = CONCAT('Error determining implicit pcas for ', @name, ', because context index on product.attributes is not available.');
					EXEC LOGGER$log @comment, 0;
                END
			END
            ELSE
			BEGIN
				BEGIN TRAN
					-- get attribute value from native attribute
					SET @sqlQuery = CONCAT('INSERT /*+ APPEND */ INTO ', @targetTable, ' (categoryid,productid,productdomainid, productbindingattribute) ',
						'SELECT c.uuid, p.uuid, p.domainid, c.productbindingattribute ',
						' FROM catalogcategory c ',
						' JOIN product p ON (c.productbindingvalue=p.', @name, ')',
						'WHERE NOT EXISTS ',
						'( ',
						' SELECT 1 FROM ', @targetTable,
						' WHERE categoryid=c.uuid AND productid=p.uuid AND productdomainid=p.domainid ',
						') ');
					EXEC SQL_UTIL$execute @sqlQuery, 0;
                COMMIT;
            END
        END
		BEGIN TRAN
			UPDATE productbindingattribute SET
			maxcategorylm=@maxLMCategories,
            category#=@cCategory#,
            maxproductlm=@maxLMProducts,
            product#=@cProduct#
			WHERE name = @name;
        COMMIT;

    END

    UPDATE stagingtable SET livetablenamesuffix = SUBSTRING(@targetTable, LEN(@targetTable) - 1, 2), oca = oca+1, lastmodified = GETUTCDATE() WHERE tableName = 'IPRODUCTCATEGORYASSIGNMENT';
    EXEC DDL$replace_synonym @synonymName, @targetTable;
END