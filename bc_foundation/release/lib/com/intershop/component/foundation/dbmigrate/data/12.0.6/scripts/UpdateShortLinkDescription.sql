
BEGIN
	
	FOR i IN (SELECT LOCALEID FROM (  
		  SELECT COUNT(sl_av.OWNERID), sl_av.LOCALEID  FROM SHORTLINK_AV sl_av, SHORTLINK sl, LOCALEINFORMATION li
		    WHERE sl_av.OWNERID = sl.UUID
		      AND sl_av.LOCALEID = li.LOCALEID
		      AND li.LEADLOCALEFLAG=0
		    GROUP BY sl_av.LOCALEID
		    ))
	
		LOOP
			INSERT INTO SHORTLINK_AV      
  				SELECT  sl_av.OWNERID, 
       				sl_av.NAME, 
       				(SELECT LOCALEID FROM LOCALEINFORMATION WHERE LOCALEINFORMATION.LEADLOCALEFLAG=1),
       				sl_av.LOCALIZEDFLAG, 
       				sl_av.TYPE, 
       				sl_av.INTVALUE, 
       				sl_av.DOUBLEVALUE, 
       				sl_av.STRINGVALUE, 
       				sl_av.OBJECTVALUE, 
       				sl_av.OBJECTTYPE,  
       				sl_av.DECIMALVALUE, 
       				sl_av.DATEVALUE, 
       				sl_av.TEXTVALUE, 
       				sl_av.OCA, 
       				sl_av.LASTMODIFIED
  				FROM    SHORTLINK_AV sl_av
  				WHERE   sl_av.LOCALEID = i.localeid AND
    				sl_av.OWNERID NOT IN 
    					(SELECT OWNERID FROM SHORTLINK_AV WHERE SHORTLINK_AV.LOCALEID = (SELECT LOCALEID FROM LOCALEINFORMATION WHERE LOCALEINFORMATION.LEADLOCALEFLAG=1));
	END LOOP;
	
	COMMIT;
	
	DELETE FROM (
		SELECT *
		FROM
	    	SHORTLINK_AV sl_av
		INNER JOIN
			SHORTLINK sl
	  	ON
	    	sl_av.OWNERID = sl.UUID  
	  	WHERE 
			sl_av.LOCALEID != (SELECT LOCALEID FROM LOCALEINFORMATION WHERE LOCALEINFORMATION.LEADLOCALEFLAG=1))
			
	COMMIT;
END;
/

