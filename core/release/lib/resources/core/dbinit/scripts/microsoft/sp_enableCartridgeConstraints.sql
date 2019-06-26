CREATE OR ALTER PROCEDURE sp_enableCartridgeConstraints
	 @CartridgeName NVARCHAR(100)
AS
BEGIN
	DECLARE @constraints DDL$ENABLE_CONSTRAINTS_type_constraints;

	insert into @constraints (CONSTRAINT_CATALOG, CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_TYPE, IS_DEFERRABLE, INITIALLY_DEFERRED)
	exec ddl$get_cartridge_foreign_keys @CartridgeName, ''

	EXEC ddl$enable_constraints @constraints
END;
GO

