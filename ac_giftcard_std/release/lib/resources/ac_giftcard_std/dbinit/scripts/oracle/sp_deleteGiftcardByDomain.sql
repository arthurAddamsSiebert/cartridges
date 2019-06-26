CREATE OR REPLACE PROCEDURE sp_deleteGiftcardByDomain (domainID IN VARCHAR2)


------------------------------------------------------------------------------------------
-- Name        : sp_deleteGiftcardByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : Thomas Kober
-- Description : This procedure deletes
--
-- * GiftCard
-- * GiftCard_AV
--
-- * ...
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteGiftcardByDomain('wvAKAB2ZWz4AAAEu.zggFNzi')
------------------------------------------------------------------------------------------

AS
  --
  -- clean up tables in staging scenario
  --
  PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
  AS
  BEGIN
      -- delete data from table GiftCardTransaction matching foreign key or to be deleted domainid
      EXECUTE IMMEDIATE 'DELETE FROM ' || staging.get_table_name('GiftCardTransaction', suffix) || ' gct ' ||
          'WHERE gct.GiftCardUUID in (SELECT gc.uuid FROM ' || staging.get_table_name('GiftCard', suffix) ||
          ' gc WHERE gc.domainid = :in_domainid) OR gct.domainid = :in_domainid'
          USING in_domainid, in_domainid;

      sp_genStagPoAvDeleteByDomain('GiftCard', 'GiftCard_AV', domainID, 'domainid');

      commit;
  END;

BEGIN

  IF sf_is_staging_table('GiftCard') THEN
    --
    -- try to clean up staging tables (resp. tables)
    --
    deleteFromStagingTables(domainID, '$1');
    deleteFromStagingTables(domainID, '$2');
  ELSE
    --
    -- staging tables do not exist
    -- try to delete from original table
    --
    deleteFromStagingTables(domainID, null);
  END IF;

END sp_deleteGiftcardByDomain;
/

show errors;
