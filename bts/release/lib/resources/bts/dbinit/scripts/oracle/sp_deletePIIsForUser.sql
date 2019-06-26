------------------------------------------------------------------------------------------
-- Name        : sp_deletePIIsForUser
-- Created     : Emil Petkov
-- Description : This procedure deletes payment instrument infos for a specific user
-- Input       : userID   The user id.
-- Output      : none
-- Example     : exec sp_deletePIIsForUser(userID)
------------------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE sp_deletePIIsForUser
(
  userID                            IN VARCHAR2
)
AS
  in_userid                         Basket.userid%TYPE := userid;
  parameter_null                    EXCEPTION;
BEGIN
    --
    -- If Input NULL raise an EXCEPTION
    --
    IF (in_userid IS NULL) THEN
      BEGIN
        RAISE parameter_null;
      END;
    END IF;

    --
    -- delete payment instrument infos
    --
    delete from paymentinstrumentinf_av piiav where ownerid in (select pii.uuid from paymentinstrumentinfo pii where pii.userid=in_userid);
    delete from paymentinstrumentinfo pii where pii.userid =in_userid;

    commit;
    
EXCEPTION
  WHEN parameter_null THEN
    BEGIN
      RAISE_APPLICATION_ERROR(-20101, 'User id is NULL.');
    END;
  WHEN OTHERS THEN
    BEGIN
      ROLLBACK;
      RAISE_APPLICATION_ERROR(-20101, SQLERRM);
    END;
END sp_deletePIIsForUser; 
/
show errors
