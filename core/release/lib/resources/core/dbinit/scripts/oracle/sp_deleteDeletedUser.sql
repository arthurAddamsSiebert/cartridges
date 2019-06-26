CREATE OR REPLACE PROCEDURE sp_deleteDeletedUser (in_userID IN VARCHAR2) AS
  
------------------------------------------------------------------------------------------
-- Name        : sp_deleteDeletedUser
-- Created     : Dirk Kassner
-- Description : This procedure deletes an user from the user deletion tracking table.
-- Input       : in_userID   The user id.
-- Output      : none
-- Example     : exec sp_deleteDeletedUser(userID)
------------------------------------------------------------------------------------------

BEGIN
    --
    -- If Input NULL or staging already initialized
    -- -> do nothing
    --
    IF (in_userID IS NULL OR staging.is_staging_initialized) THEN
        RETURN;
    END IF;

    --
    -- delete given user
    --
    DELETE FROM deleteduser WHERE userid = in_userID;
    COMMIT;

END sp_deleteDeletedUser; 
/

show errors
