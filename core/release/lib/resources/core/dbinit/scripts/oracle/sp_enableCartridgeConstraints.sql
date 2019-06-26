CREATE OR REPLACE PROCEDURE sp_enableCartridgeConstraints(cartridge_name VARCHAR2) AS
BEGIN
  ddl.enable_constraints(ddl.get_cartridge_foreign_keys(cartridge_name));
END;
/

show errors;