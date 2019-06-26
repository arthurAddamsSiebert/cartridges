-- drop procedure UUID$create_uuid to replaced by a function with the name

DECLARE @isprocedure INT

SELECT @isprocedure = count(*) FROM sys.objects WHERE name = 'UUID$create_uuid' AND type = 'p';

if (@isprocedure = 1)
BEGIN
  DROP PROCEDURE IF EXISTS UUID$create_uuid;
END

go