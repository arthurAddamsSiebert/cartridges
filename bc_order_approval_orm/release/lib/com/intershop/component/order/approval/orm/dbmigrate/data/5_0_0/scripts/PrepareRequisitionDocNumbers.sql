set serveroutput on;
DECLARE
  /* The double select is used here to ensure that a row will be returned. */
  selectStatement VARCHAR2(128 CHAR) := 'SELECT (SELECT 1 FROM BasicSeriesEntry WHERE identifier = :1) FROM Dual';
  insertStatement VARCHAR2(128 CHAR) := 'INSERT INTO BasicSeriesEntry(identifier, numberPattern, sequenceName, oca) VALUES(:1,:2,:3,0)';
  createSequenceStatement VARCHAR2(256 CHAR);
  selectSequenceStatement VARCHAR2(128 CHAR) := 'SELECT * FROM User_Sequences WHERE sequence_name = :1';
  
  requisitionEntryID BasicSeriesEntry.identifier%Type;
  existsRequisitionEntry NUMBER;
  sequenceName VARCHAR2(30 CHAR);
  basketSequence user_sequences%ROWTYPE;
  startWithVal NUMBER;
BEGIN
  /*FOR each basket basic series entries*/
  FOR basketSeriesEntry IN (SELECT * FROM BasicSeriesEntry basketEntries WHERE identifier like 'Basket.DocumentNo.%') LOOP
  
    /* Check if a corresponding requisition series entry exists and create it if it doesn't. */
    requisitionEntryID := concat('Requisition', substr(basketSeriesEntry.identifier, 7));
    EXECUTE IMMEDIATE selectStatement INTO existsRequisitionEntry USING requisitionEntryID;
    IF (existsRequisitionEntry IS NULL) THEN
    
      /* Get the existing basket sequence. Its values will be used when creating the requisition sequence. */
      EXECUTE IMMEDIATE selectSequenceStatement into basketSequence using upper(basketSeriesEntry.sequenceName);
      EXECUTE IMMEDIATE 'SELECT '||basketSequence.sequence_name||'.nextval FROM Dual' into startWithVal;
      
      sequenceName := 'SQ'||replace(uuid.create_uuid(), '.', 'x');
      /* Offset the requisition sequence start value so that there is no clash with old document number values. */
      startWithVal := startWithVal + 1000;
      
      createSequenceStatement := 'CREATE SEQUENCE '||sequenceName||
            ' START WITH '||startWithVal||
            ' INCREMENT BY '||basketSequence.increment_by||
            ' MINVALUE '||basketSequence.min_value||
            ' MAXVALUE '||basketSequence.max_value;
      
      IF (basketSequence.cache_size > 0) THEN
        createSequenceStatement := createSequenceStatement||' CACHE '||basketSequence.cache_size;
      ELSE
        createSequenceStatement := createSequenceStatement||' NOCACHE';
      END IF;
            
      IF (basketSequence.cycle_flag = 'Y') THEN
        createSequenceStatement := createSequenceStatement||' CYCLE';
      ELSE
        createSequenceStatement := createSequenceStatement||' NOCYCLE';
      END IF;
      
      IF (basketSequence.order_flag = 'Y') THEN
        createSequenceStatement := createSequenceStatement||' ORDER';
      ELSE
        createSequenceStatement := createSequenceStatement||' NOORDER';
      END IF;
      
      EXECUTE IMMEDIATE createSequenceStatement;
      EXECUTE IMMEDIATE insertStatement using requisitionEntryID, basketSeriesEntry.numberPattern, sequenceName;
      
    END IF;
  END LOOP;
END;
/