--
-- Copy the documentNo value into the requisitionDocumentNo column for all pending and rejected baskets,
-- that don't already have a requisition document no.
--
BEGIN
  UPDATE Basket SET requisitionDocumentNo = documentNo
  WHERE requisitionDocumentNo IS NULL
  AND status IN (11,14);
END;
/