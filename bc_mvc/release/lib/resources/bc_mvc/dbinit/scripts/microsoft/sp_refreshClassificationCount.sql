CREATE OR ALTER PROCEDURE sp_refreshClassificationCount AS
BEGIN
	DECLARE @sourceTable	VARCHAR(256),
			@targetTable	VARCHAR(256),
			@synonymName	VARCHAR(256) = 'CLASSIFICATIONCOUNT',
			@sqlQuery		NVARCHAR(3000),
			@counter		INT = 1,
			@count			INT,
			@catid			NVARCHAR(30),
			@domid			NVARCHAR(30),
			@cnt			INT;
	DECLARE @TargetDomain TABLE
	(
		ID		INT IDENTITY,
		CatID	NVARCHAR(30),
		DomID	NVARCHAR(30),
		Cnt		INT
	);

    SELECT @sourceTable = PARSENAME(base_object_name, 1) FROM sys.synonyms WHERE name = 'CLASSIFICATIONCOUNT';
    
	IF SUBSTRING(@sourceTable, LEN(@sourceTable) -1, 1) = '1'
        SET @targetTable = CONCAT(SUBSTRING(@sourceTable, 1, LEN(@sourceTable)-1), '2');
    ELSE
        SET @targetTable = CONCAT(SUBSTRING(@sourceTable, 1, LEN(@sourceTable)-1), '1');
	SET @sqlQuery = CONCAT('TRUNCATE TABLE ', @targetTable);
    EXEC SQL_UTIL$execute @sqlQuery, 0;
	IF EXISTS(SELECT 1 FROM sys.tables WHERE name = 'CATALOGCATEGORY_SPREFRESH')
		DROP TABLE [dbo].[CATALOGCATEGORY_SPREFRESH]

	CREATE TABLE [dbo].[CATALOGCATEGORY_SPREFRESH](
		[NAME] [nvarchar](256) NULL,
		[TEMPLATE] [nvarchar](256) NULL,
		[PRODUCTQUERYSTRING] [nvarchar](4000) NULL,
		[ONLINEFLAG] [numeric](1, 0) NULL,
		[HOTDEALSCATEGORYFLAG] [numeric](1, 0) NULL,
		[PARENTCATEGORYID] [nvarchar](28) NULL,
		[HOTDEALSCATEGORYID] [nvarchar](28) NULL,
		[ROOTCATEGORYFLAG] [numeric](1, 0) NULL,
		[POSITION] [float] NULL,
		[PRODUCTBINDINGATTRIBUTE] [nvarchar](30) NULL,
		[PRODUCTBINDINGVALUE] [nvarchar](4000) NULL,
		[PRODUCTBINDINGTYPE] [numeric](11, 0) NULL,
		[SEARCHQUERYDEFINITIONNAME] [nvarchar](256) NULL,
		[UUID] [nvarchar](28) NOT NULL,
		[DOMAINID] [nvarchar](28) NOT NULL,
		[OCA] [numeric](11, 0) NOT NULL,
		[LASTMODIFIED] [datetime2](7) NOT NULL
	)

	INSERT INTO @TargetDomain
		SELECT iepca.categoryid AS catid, iepca.productdomainid AS domid, count(iepca.productid) AS cnt
		FROM ieproductcategoryassignment iepca
		JOIN catalogcategory cc ON (cc.uuid = iepca.categoryid COLLATE database_default)
		JOIN catalog c ON (c.catalogdomainid = cc.domainid COLLATE database_default AND c.typecode = 2 AND c.proxyflag = 0)
		GROUP BY iepca.categoryid, iepca.productdomainid
	WHILE @counter <= @count
	BEGIN
		SELECT @catid = CatID, @domid = DomID, @cnt = Cnt  FROM @TargetDomain WHERE ID = @counter;
		WITH abc (name, template, productquerystring, onlineflag, hotdealscategoryflag, parentcategoryid, hotdealscategoryid, rootcategoryflag,
				  position, productbindingattribute, productbindingvalue, productbindingtype, searchquerydefinitionname, uuid, domainid, oca, lastmodified) AS
		(
			SELECT name, template, productquerystring, onlineflag, hotdealscategoryflag, parentcategoryid, hotdealscategoryid, rootcategoryflag,
				  position, productbindingattribute, productbindingvalue, productbindingtype, searchquerydefinitionname, uuid, domainid, oca, lastmodified FROM catalogcategory cc WHERE cc.uuid = @catid
			UNION ALL
			SELECT cc.name, cc.template, cc.productquerystring, cc.onlineflag, cc.hotdealscategoryflag, cc.parentcategoryid, cc.hotdealscategoryid, cc.rootcategoryflag,
				  cc.position, cc.productbindingattribute, cc.productbindingvalue, cc.productbindingtype, cc.searchquerydefinitionname, cc.uuid, cc.domainid, cc.oca, cc.lastmodified FROM catalogcategory cc 
			INNER JOIN abc a ON a.parentcategoryid = cc.uuid
		)
		INSERT INTO CATALOGCATEGORY_SPREFRESH
			SELECT * FROM abc;
		SET @sqlQuery = CONCAT('MERGE ', @targetTable, ' AS clcnt ' ,
                'USING (SELECT uuid',  ' AS catid, ''' ,@domid ,  ''' AS domid FROM CATALOGCATEGORY_SPREFRESH) c ', 
                'ON (clcnt.categoryid = c.catid AND clcnt.domainid = c.domid) ' ,
                'WHEN MATCHED THEN ', 
                    'UPDATE SET clcnt.cnt = clcnt.cnt + ' ,  @cnt,  ' ',
                'WHEN NOT MATCHED THEN ',
                   'INSERT (clcnt.categoryid, clcnt.domainid, clcnt.cnt) VALUES (c.catid, c.domid, ',  @cnt, ')');
		EXEC SQL_UTIL$execute @sqlQuery, 0;
		SET @counter = @counter + 1;
	END

	UPDATE stagingtable SET livetablenamesuffix = SUBSTRING(@targetTable, LEN(@targetTable)-1, 2), oca = oca + 1, lastmodified=GETUTCDATE() WHERE tableName = 'CLASSIFICATIONCOUNT';
	EXEC DDL$replace_synonym @synonymName, @targetTable;

END
GO