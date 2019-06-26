DECLARE
  v_batchSize NUMBER  := 1000;
  v_loopCnt   INTEGER := 0;
  v_updatedOrdersCnt NUMBER := 0;
  
  v_customerUUID customerprofileassignment.customerid%type;
  
  hasRowsToUpdate     BOOLEAN;
  
  CURSOR curUser
  IS
    SELECT userid
    FROM isorder
    WHERE customerid IS NULL
    AND rownum        < v_batchSize + 1;
    
    BEGIN LOOP
	    hasRowsToUpdate    := FALSE;
	    v_loopCnt          := v_loopCnt + 1;
	    v_updatedOrdersCnt := 0;
	    
	    FOR recUser                  IN curUser
	    LOOP
	      BEGIN
	
	        -- get the value of customerid from customer profile assignment
	        SELECT cpa.customerid
	        INTO v_customerUUID
	        FROM customerprofileassignment cpa
	        WHERE cpa.profileid = recUser.userid;
	        
	        IF v_customerUUID IS NOT NULL THEN
	          hasRowsToUpdate := TRUE;
	          
	          -- set customer to the order
	          UPDATE isorder
	          SET customerid = v_customerUUID
	          WHERE userid = recUser.userid;
	          
	          v_updatedOrdersCnt := v_updatedOrdersCnt + 1;
	        END IF;
	        
	      EXCEPTION
	      WHEN OTHERS THEN
	        logger.log('Can not set customer to order!');
	      END;
        END LOOP;
    
    COMMIT;
    
    IF NOT hasRowsToUpdate THEN EXIT;
    END IF;
    
    logger.log('Loop #' || v_loopCnt || ' Orders updated in this batch: '||v_updatedOrdersCnt);
  END LOOP;
END;
/