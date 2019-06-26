CREATE OR ALTER PROCEDURE sp_deleteOrders
(
  @domainID        NVARCHAR(30),
  @excludedStates  VARCHAR(256),
  @maxNr           NUMERIC
)
------------------------------------------------------------------------------------------
-- Name        : sp_deleteOrders
-- History     : user               date       - desc
--             : Andreas Paschwitz  06/21/2018 - adapt for MS SQL
--             : Ronny Wilms        03/08/2018 - initial implementation
-- Created     : Ronny Wilms
-- Description : This procedure deletes orders with activated flag TOBEDELETED FOR the given domain
--               except their state is explicitely excluded.
-- Input       : domainID       The domain id of the domain to be deleted.
--             : excludedStates The status codes to exclude from the deletion. Please note that ALL
--                              orders are deleted if the exclude list is empty, invalid or contains
--                              only "garbage". It is recommended to use following exclude list:
--                              '2, 13, 16', which is ensured by the default calling job.
--             : maxNr          The maximum numbers of orders to DELETE within a batch. If no
--                              value is given the number of orders to be deleted in this run 
--                              is not limited (and may take much longer time to complete).
-- Output      : none
-- Example     : exec sp_deleteOrders(domainid, excludedstates, maxnr)
------------------------------------------------------------------------------------------
AS
BEGIN
  -- variables
  DECLARE @uuid       NVARCHAR(30),
          @sql        NVARCHAR(1000),
          @topSql     NVARCHAR(100),
          @statesSql  NVARCHAR(100),
          @count      INT,
          @counter    INT = 1,
          @b2b        INT = 0;

  --  define table with order UUIDs to delete
  DECLARE @uuidTable TABLE
  (
    ID   INT IDENTITY,
    uuid NVARCHAR(30)
  );

  IF (@maxNr IS NULL)
    SET @topSql = '';
  ELSE
    SET @topSql = CONCAT('TOP ', @maxNr, ' ');

  IF (@excludedStates IS NULL)
    SET @statesSql = '';
  ELSE
    SET @statesSql = CONCAT(' AND status NOT IN (', @excludedStates, ')');

  SET @sql = CONCAT('SELECT ', @topSql, 'uuid FROM isorder WHERE domainid = ''', @domainID, ''' AND tobedeletedflag = 1', @statesSql);
  INSERT INTO @uuidTable
  EXEC SQL_UTIL$execute @sql, 0;

  SELECT @count = COUNT(*) FROM @uuidTable;

  -- check if in B2B context by looking up table CONTRACTREVENUEASSIGNMENT
  SELECT @b2b = COUNT(*) FROM sys.tables WHERE name = 'CONTRACTREVENUEASSIGNMENT';
  
  BEGIN TRAN
    --  begin with deletion of artifacts with references to an order
    WHILE @counter <= @count
    BEGIN
      SELECT @uuid = uuid FROM @uuidTable WHERE ID = @counter;
      SET @counter = @counter + 1;

      --  delete static addresses
      DELETE FROM staticaddress_av WHERE ownerid IN 
          (SELECT uuid FROM staticaddress WHERE lineitemctnrid = @uuid);
      DELETE FROM staticaddress WHERE lineitemctnrid = @uuid;

      --  delete service line items
      DELETE FROM servicelineitem_av WHERE ownerid IN 
          (SELECT uuid FROM servicelineitem WHERE lineitemctnrid = @uuid);
      DELETE FROM servicelineitem WHERE lineitemctnrid = @uuid;

      --  delete product line items and related artifacts
      DELETE FROM bundledproductlineit_av WHERE ownerid IN 
          (SELECT uuid FROM bundledproductlineitem WHERE parentid IN 
              (SELECT b.uuid FROM bundledproductlineitem b, productlineitem p WHERE b.productlineitemid = p.uuid AND p.lineitemctnrid = @uuid));
      DELETE FROM bundledproductlineitem WHERE parentid IN 
          (SELECT b.uuid FROM bundledproductlineitem b, productlineitem p WHERE b.productlineitemid = p.uuid AND p.lineitemctnrid = @uuid);
      DELETE FROM bundledproductlineit_av WHERE ownerid IN 
          (SELECT b.uuid FROM bundledproductlineitem b, productlineitem p WHERE b.productlineitemid = p.uuid AND p.lineitemctnrid = @uuid);
      DELETE FROM bundledproductlineitem WHERE uuid IN 
          (SELECT b.uuid FROM bundledproductlineitem b, productlineitem p WHERE b.productlineitemid = p.uuid AND p.lineitemctnrid = @uuid);

      DELETE FROM deliverynote_av WHERE ownerid IN 
          (SELECT uuid FROM productlineitem WHERE lineitemctnrid = @uuid);
      DELETE FROM deliverynote WHERE uuid IN 
          (SELECT uuid FROM productlineitem WHERE lineitemctnrid = @uuid);

      DELETE FROM productlineitem_av WHERE ownerid IN 
          (SELECT uuid FROM productlineitem WHERE lineitemctnrid = @uuid);
      DELETE FROM productlineitem WHERE lineitemctnrid = @uuid;

      --  delete line item groups
      DELETE FROM lineitemgroup_av WHERE ownerid IN 
          (SELECT uuid FROM lineitemgroup WHERE lineitemctnrid = @uuid);
      DELETE FROM lineitemgroup WHERE lineitemctnrid = @uuid;
        
      --  delete payment history entries / transactions / instruments
      DELETE FROM paymenthistory_av WHERE ownerid IN 
          (SELECT uuid FROM paymenthistory WHERE paymenttransactionid IN 
              (SELECT uuid FROM paymenttransaction WHERE paymentinstrumentinfoid IN 
                  (SELECT uuid FROM paymentinstrumentinfo WHERE lineitemctnrid = @uuid)));
      DELETE FROM paymenthistory WHERE paymenttransactionid IN
          (SELECT uuid FROM paymenttransaction WHERE paymentinstrumentinfoid IN 
              (SELECT uuid FROM paymentinstrumentinfo WHERE lineitemctnrid = @uuid));

      DELETE FROM paymenttransaction_av WHERE ownerid IN
          (SELECT uuid FROM paymenttransaction WHERE paymentinstrumentinfoid IN 
              (SELECT uuid FROM paymentinstrumentinfo WHERE lineitemctnrid = @uuid));
      DELETE FROM paymenttransaction WHERE paymentinstrumentinfoid IN
          (SELECT uuid FROM paymentinstrumentinfo WHERE lineitemctnrid = @uuid);

      DELETE FROM paymentinstrumentinf_av WHERE ownerid IN
          (SELECT uuid FROM paymentinstrumentinfo WHERE lineitemctnrid = @uuid);
      DELETE FROM paymentinstrumentinfo WHERE lineitemctnrid = @uuid;

      --  adjust objects referring to this order
      UPDATE isorder SET parentOrderID = NULL WHERE parentOrderID = @uuid;

      UPDATE promotioncodeorderassignment SET orderuuid = NULL WHERE orderuuid = @uuid;
      UPDATE promotionorderassignment SET orderuuid = NULL WHERE orderuuid = @uuid;

      IF (@b2b = 1)
      BEGIN
        -- update contract revenue assignment: remove reference to order and PLI
        SET @sql = CONCAT('UPDATE contractrevenueassignment SET orderuuid = NULL, productlineitemuuid = NULL WHERE orderuuid = ''', @uuid, '''');
        EXEC SQL_UTIL$execute @sql, 0;
        -- delete order cost objects
        SET @sql = CONCAT('DELETE FROM ordercostobjectassignment WHERE targetid = ''', @uuid, '''');
        EXEC SQL_UTIL$execute @sql, 0;
      END

      -- finally delete the orders itself
      DELETE FROM isorder_av WHERE ownerid = @uuid;
      DELETE FROM isorder WHERE uuid = @uuid;

    END
  COMMIT;

END
GO
