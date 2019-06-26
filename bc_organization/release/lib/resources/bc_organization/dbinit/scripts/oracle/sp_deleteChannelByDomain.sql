CREATE OR REPLACE PROCEDURE sp_deleteChannelByDomain (domainID IN VARCHAR2)

------------------------------------------------------------------------------------------
-- Name        : deleteChannelByDomain
-- History     : user             date       - desc
--             : ...
--             : Thomas Kober     02/04/2011 - #ENFINITY-5521 Refactoring of all sp_delete*ByDomain
--             : Thomas Kober     07/20/2005 - #5882 sql with unbound var values
-- Created     : Frank Mueller
-- Description : This procedure deletes
--
-- * ChannelType
-- * ChannelTypeAttributeValue
-- * ApplicationType
-- * ApplicationTypeAttributeValue
-- * ApplicationTypeAssignment
--
--  owned by a given domain
--
-- Input       : domainID - The domain ID of the "to be removed" Domain.
-- Output      : none
-- Example     : exec sp_deleteChannelByDomain('OK0KAB1LrH8AAADm9wC0ccmj')
------------------------------------------------------------------------------------------

AS
    -- clean up tables in staging scenario
    PROCEDURE deleteFromStagingTables(in_domainid IN VARCHAR2, suffix IN VARCHAR2)
    AS

    BEGIN

        -- ChannelType
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ApplicationTypeAssignment', suffix)||' a
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('ChannelType', suffix)||' po
                                           WHERE a.channeltypeid = po.uuid AND po.domainid = :domainid)'
                    USING in_domainid;

		sp_genericPoAvDeleteByDomain('ChannelType','ChannelType_AV', suffix, in_domainid, 'domainid');	

        -- ApplicationType
        EXECUTE IMMEDIATE 'DELETE FROM '||staging.get_table_name('ApplicationTypeAssignment', suffix)||' a
                            WHERE EXISTS (SELECT 1 FROM '||staging.get_table_name('ApplicationType', suffix)||' po
                                           WHERE a.applicationtypeid = po.uuid AND po.domainid = :domainid)'
                    USING in_domainid;
			
		sp_genericPoAvDeleteByDomain('ApplicationType','ApplicationType_AV', suffix, in_domainid, 'domainid');	

        COMMIT;

    END;

BEGIN

    IF sf_is_staging_table('ChannelType') THEN
        --
        -- try to clean up staging tables ($1 resp. $2 tables)
        --
        deleteFromStagingTables(domainID, '$1');
        deleteFromStagingTables(domainID, '$2');
    ELSE
        --
        -- staging tables do not exist -> try to DELETE FROM
        -- original table
        --
        deleteFromStagingTables(domainID, null);
    END IF;

END sp_deleteChannelByDomain;
/

show errors;