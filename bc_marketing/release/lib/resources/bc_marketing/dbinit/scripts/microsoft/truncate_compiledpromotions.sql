BEGIN
    DECLARE @sqlQuery NVARCHAR(MAX);
    IF dbo.STAGING$is_prepared('COMPILEDPROMOTION') = 1
    BEGIN
        SET @sqlQuery = CONCAT('TRUNCATE TABLE  ', dbo.STAGING$get_table_name('COMPILEDPROMOTION', '$1'));
        EXEC SQL_UTIL$execute @sqlQuery, 0;
        SET @sqlQuery = CONCAT('TRUNCATE TABLE  ', dbo.STAGING$get_table_name('COMPILEDPROMOTION', '$2'));
        EXEC SQL_UTIL$execute @sqlQuery, 0;
    END
    ELSE
    BEGIN
        SET @sqlQuery = 'TRUNCATE TABLE COMPILEDPROMOTION';
        EXEC SQL_UTIL$execute @sqlQuery, 0;
    END
END;