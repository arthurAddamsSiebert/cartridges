-- Deletes all product category assignments for warranty type.
DECLARE
  in_typecodedefinition VARCHAR2(16) := 'ES_Warranty';
  in_typecodegroup VARCHAR2(32)      := 'TypedProductCategoryAssignment';
BEGIN
  IF sf_is_staging_table('TYPEDPRODUCTCATEGORYASSM') THEN
      --
      -- try to clean up staging tables ($1 resp. $2 tables)
      --
      EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('TYPEDPRODUCTCATEGORYASSM', '$1')||' WHERE TYPECODE IN (SELECT TYPECODE FROM TYPECODEDEFINITION WHERE NAME = :typecodedefinition AND TYPECODEGROUP = :typecodegroup)' USING in_typecodedefinition, in_typecodegroup;
      EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('TYPEDPRODUCTCATEGORYASSM', '$2')||' WHERE TYPECODE IN (SELECT TYPECODE FROM TYPECODEDEFINITION WHERE NAME = :typecodedefinition AND TYPECODEGROUP = :typecodegroup)' USING in_typecodedefinition, in_typecodegroup;
  ELSE
      --
      -- staging tables do not exist -> try to DELETE FROM
      -- original table
      --
      EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('TYPEDPRODUCTCATEGORYASSM', '')||' WHERE TYPECODE IN (SELECT TYPECODE FROM TYPECODEDEFINITION WHERE NAME = :typecodedefinition AND TYPECODEGROUP = :typecodegroup)' USING in_typecodedefinition, in_typecodegroup;
  END IF;
  
  COMMIT;
END;
/