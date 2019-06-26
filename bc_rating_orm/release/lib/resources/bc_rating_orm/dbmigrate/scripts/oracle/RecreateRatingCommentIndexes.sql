SET SERVEROUTPUT ON SIZE UNLIMITED
DECLARE
  COUNT_IND_CONS INTEGER;
BEGIN
  FOR t IN (SELECT uc1.CONSTRAINT_NAME as name FROM USER_CONSTRAINTS uc1 JOIN USER_CONSTRAINTS uc2 ON (uc1.R_CONSTRAINT_NAME = uc2.CONSTRAINT_NAME) WHERE uc1.CONSTRAINT_NAME IN ('RATINGCOMMENT_AV_CO_001', 'RATINGCOMMENT_AV_CO001') AND uc1.TABLE_NAME = 'RATINGCOMMENT_AV' AND uc1.CONSTRAINT_TYPE = 'R' AND uc2.TABLE_NAME = 'RATINGCOMMENT' AND uc2.CONSTRAINT_TYPE = 'P')
  LOOP
    EXECUTE IMMEDIATE 'ALTER TABLE RATINGCOMMENT_AV DROP CONSTRAINT '||t.name;
  END LOOP;
  
  FOR t IN (SELECT uc1.CONSTRAINT_NAME as name FROM USER_CONSTRAINTS uc1 JOIN USER_CONSTRAINTS uc2 ON (uc1.R_CONSTRAINT_NAME = uc2.CONSTRAINT_NAME) WHERE uc1.CONSTRAINT_NAME IN ('PRODUCTRATINGASSIGNMENT_CO_002', 'PRODUCTRATINGASSIGNMENT_CO002') AND uc1.TABLE_NAME = 'PRODUCTRATINGASSIGNMENT' AND uc1.CONSTRAINT_TYPE = 'R' AND uc2.TABLE_NAME = 'RATINGCOMMENT' AND uc2.CONSTRAINT_TYPE = 'P')
  LOOP
    EXECUTE IMMEDIATE 'ALTER TABLE PRODUCTRATINGASSIGNMENT DROP CONSTRAINT '||t.name;
  END LOOP;
  
  EXECUTE IMMEDIATE 'ALTER TABLE RATINGCOMMENT DROP PRIMARY KEY';

  SELECT COUNT(*) INTO COUNT_IND_CONS FROM USER_INDEXES WHERE TABLE_NAME = 'RATINGCOMMENT' AND INDEX_NAME = 'RATINGCOMMENT_CI099';
  IF COUNT_IND_CONS > 0 THEN
    EXECUTE IMMEDIATE 'DROP INDEX RATINGCOMMENT_CI099';
  END IF;

  SELECT COUNT(*) INTO COUNT_IND_CONS FROM USER_INDEXES WHERE TABLE_NAME = 'RATINGCOMMENT' AND INDEX_NAME = 'RATINGCOMMENT_CI100';
  IF COUNT_IND_CONS > 0 THEN
    EXECUTE IMMEDIATE 'DROP INDEX RATINGCOMMENT_CI100';
  END IF;

  EXECUTE IMMEDIATE 'ALTER TABLE RATINGCOMMENT ADD PRIMARY KEY(UUID) USING INDEX TABLESPACE "&index_tablespace" LOGGING ENABLE';

  EXECUTE IMMEDIATE 'ALTER TABLE RATINGCOMMENT_AV ADD CONSTRAINT RATINGCOMMENT_AV_CO_001 FOREIGN KEY (OWNERID) REFERENCES RATINGCOMMENT(UUID) DEFERRABLE INITIALLY DEFERRED ENABLE NOVALIDATE';

  EXECUTE IMMEDIATE 'ALTER TABLE PRODUCTRATINGASSIGNMENT ADD CONSTRAINT PRODUCTRATINGASSIGNMENT_CO_002 FOREIGN KEY (RATINGCOMMENTUUID) REFERENCES RATINGCOMMENT(UUID) DEFERRABLE INITIALLY DEFERRED ENABLE NOVALIDATE';
END;
/
