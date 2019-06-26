CREATE OR REPLACE PROCEDURE sp_genStagPoAvDeleteByDomain
(
    baseTable           IN VARCHAR2,
    avTable             IN VARCHAR2,
    domainID            IN VARCHAR2,
    domainColumnName    IN VARCHAR2
)
------------------------------------------------------------------------------------------
-- Name        : sp_genStagPoAvDeleteByDomain
-- History     : user             date       - desc
--             : ...
-- Created     : afiedler           12/09/2011   initial created
--
-- Description : This procedure deletes all rows for given domainid for both
--               the PO base table and the related AV table and includes staging handling.

-- Input       : baseTable          the base PO table
--               avTable            the extensible object AV table related to base PO table
--               domainID           the domainID value
--               domainColumnName   the base PO table domainid column name
--
-- Output      : none
-- Example     : EXEC sp_genStagPoAvDeleteByDomain ('Foo','Foo_AV', 'OK0KAB1LrH8AAADm9wC0ccmj', 'domainid');
------------------------------------------------------------------------------------------
AS

BEGIN
    IF sf_is_staging_table(baseTable) THEN
        --
        -- try to clean up staging tables ($1 resp. $2 tables)
        --
		sp_genericPoAvDeleteByDomain(baseTable, avTable, '$1', domainID, domainColumnName);
		sp_genericPoAvDeleteByDomain(baseTable, avTable, '$2', domainID, domainColumnName);
    ELSE
        --
        -- staging tables do not exist -> try to DELETE FROM
        -- original table
        --
		sp_genericPoAvDeleteByDomain(baseTable, avTable, null, domainID, domainColumnName);
    END IF;

END sp_genStagPoAvDeleteByDomain;
/

show errors
