--
-- Creates sequences
--

-- sequence used for ABTestEvents
-- ignore ORA-00955: name is already used by an existing object
-- ignore MSSQL-exception numbered 2714. 
-- ...
BEGIN
	IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE name = 'createABTestEventID')
		EXEC sql_util$execute 'CREATE SEQUENCE createABTestEventID INCREMENT BY 1 START WITH 1 CACHE 1000', -2714
END
GO

exit