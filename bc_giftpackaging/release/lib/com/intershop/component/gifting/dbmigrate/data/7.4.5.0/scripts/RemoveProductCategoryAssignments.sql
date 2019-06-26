-- Deletes all product category assignments for gift wrap ant gift message types.
DECLARE
  in_typecodedefinition1 VARCHAR2(16) := 'ES_GiftWrap';
  in_typecodedefinition2 VARCHAR2(16) := 'ES_GiftMessage';
  in_typecodegroup VARCHAR2(32)      := 'TypedProductCategoryAssignment';
BEGIN
  IF sf_is_staging_table('TYPEDPRODUCTCATEGORYASSM') THEN
      --
      -- try to clean up staging tables ($1 resp. $2 tables)
      --
      EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('TYPEDPRODUCTCATEGORYASSM', '$1')||' WHERE TYPECODE IN (SELECT TYPECODE FROM TYPECODEDEFINITION WHERE NAME in (:in_typecodedefinition1, :in_typecodedefinition2) AND TYPECODEGROUP = :typecodegroup)' USING in_typecodedefinition1, in_typecodedefinition2, in_typecodegroup;
      EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('TYPEDPRODUCTCATEGORYASSM', '$2')||' WHERE TYPECODE IN (SELECT TYPECODE FROM TYPECODEDEFINITION WHERE NAME in (:in_typecodedefinition1, :in_typecodedefinition2) AND TYPECODEGROUP = :typecodegroup)' USING in_typecodedefinition1, in_typecodedefinition2, in_typecodegroup;
  ELSE
      --
      -- staging tables do not exist -> try to DELETE FROM
      -- original table
      --
      EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('TYPEDPRODUCTCATEGORYASSM', '')||' WHERE TYPECODE IN (SELECT TYPECODE FROM TYPECODEDEFINITION WHERE NAME in (:in_typecodedefinition1, :in_typecodedefinition2) AND TYPECODEGROUP = :typecodegroup)' USING in_typecodedefinition1, in_typecodedefinition2, in_typecodegroup;
  END IF;
  
  COMMIT;
END;
/