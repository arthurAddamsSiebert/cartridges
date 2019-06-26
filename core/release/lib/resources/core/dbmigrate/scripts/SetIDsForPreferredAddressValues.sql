BEGIN
    DDL.drop_table('temp_address');

	IF staging.is_prepared('BasicProfile_AV') THEN
		BEGIN
		    execute immediate 'CREATE GLOBAL TEMPORARY TABLE temp_address
		    (
		        addressID VARCHAR2(28) NOT NULL,
		        profileID VARCHAR2(28) NOT NULL
		    )
		    ON COMMIT DELETE ROWS';
		    
		    execute immediate 'insert into temp_address
		    SELECT ba.uuid as addressID, bpav.ownerid as profileID
		    FROM basicaddress ba, basicprofile_av$1 bpav
		    WHERE ba.profileid = bpav.ownerid
		      and ba.addressname = bpav.stringvalue';
		    
		    execute immediate 'MERGE INTO basicprofile_av$1 bpav
		    USING (select distinct profileid from temp_address) ta
		        ON (ta.profileid = bpav.ownerid)
		    WHEN MATCHED THEN UPDATE SET bpav.stringvalue = (select addressid from temp_address where profileid = ta.profileid and ROWNUM = 1) 
								WHERE bpav.name LIKE ''Default Address%''';
		    
		    execute immediate 'DROP TABLE temp_address';
		    
		    COMMIT;
		    
		    execute immediate 'CREATE GLOBAL TEMPORARY TABLE temp_address
		    (
		        addressID VARCHAR2(28) NOT NULL,
		        profileID VARCHAR2(28) NOT NULL
		    )
		    ON COMMIT DELETE ROWS';
		    
		    execute immediate 'insert into temp_address
		    SELECT ba.uuid as addressID, bpav.ownerid as profileID
		    FROM basicaddress ba, basicprofile_av$2 bpav
		    WHERE ba.profileid = bpav.ownerid
		      and ba.addressname = bpav.stringvalue';
		    
		    execute immediate 'MERGE INTO basicprofile_av$2 bpav
		    USING (select distinct profileid from temp_address) ta
		        ON (ta.profileid = bpav.ownerid)
		    WHEN MATCHED THEN UPDATE SET bpav.stringvalue = (select addressid from temp_address where profileid = ta.profileid and ROWNUM = 1) 
								WHERE bpav.name LIKE ''Default Address%''';
		    
		    execute immediate 'DROP TABLE temp_address';
		    
		    COMMIT;
		END;
	ELSE
		BEGIN
		    execute immediate 'CREATE GLOBAL TEMPORARY TABLE temp_address
		    (
		        addressID VARCHAR2(28) NOT NULL,
		        profileID VARCHAR2(28) NOT NULL
		    )
		    ON COMMIT DELETE ROWS';
		    
		    execute immediate 'insert into temp_address
		    SELECT ba.uuid as addressID, bpav.ownerid as profileID
		    FROM basicaddress ba, basicprofile_av bpav
		    WHERE ba.profileid = bpav.ownerid
		      and ba.addressname = bpav.stringvalue';
		    
		    execute immediate 'MERGE INTO basicprofile_av bpav
		    USING (select distinct profileid from temp_address) ta
		        ON (ta.profileid = bpav.ownerid)
		    WHEN MATCHED THEN UPDATE SET bpav.stringvalue = (select addressid from temp_address where profileid = ta.profileid and ROWNUM = 1) 
								WHERE bpav.name LIKE ''Default Address%''';
		    
		    execute immediate 'DROP TABLE temp_address';
		    
		    COMMIT;
		END;
	END IF;
END;
/
