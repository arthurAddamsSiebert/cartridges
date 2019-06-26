------------------------------------------------------------------------
-- Name			: [HEXTORAW_VARBINARY]
-- Description	: The function is written for HexToRaw functionality from Oracle to SQL.
-- Input		: none
-- Output		: HexToRaw output.
-- Example		: SELECT dbo.[HEXTORAW_VARBINARY]
------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.[HEXTORAW_VARBINARY]
(
	@hex AS VARCHAR(MAX)
)
RETURNS VARCHAR(MAX)
BEGIN
	DECLARE 
		@pos INT,
		@length INT,
		@ascii_ INT,
		@retval VARBINARY(MAX),
		@digit_int1 INT,
		@digit_int2 INT,
		@digit VARCHAR(1);

       
	SET @retval = CAST('' AS VARBINARY)

	--IF @hex IS NULL RETURN NULL
     
	SET @length = DATALENGTH(@hex)   
	IF @length % 2 = 1
	BEGIN
		SET @hex='0'+@hex
		SET @length = DATALENGTH(@hex)
	END
  
	SET @pos = 1
   
	WHILE @pos <= @length 
	BEGIN 
		SET @digit = SUBSTRING(@hex,@pos, 1)

		IF @digit='+' OR @digit='-' OR @digit=' ' RETURN NULL;
		SET @digit_int1 =
			CASE 
				WHEN @digit='A' OR @digit='a' THEN 10
				WHEN @digit='B' OR @digit='b' THEN 11
				WHEN @digit='C' OR @digit='c' THEN 12
				WHEN @digit='D' OR @digit='d' THEN 13
				WHEN @digit='E' OR @digit='e' THEN 14
				WHEN @digit='F' OR @digit='f' THEN 15
				ELSE CAST(@digit AS INT)
			END 
		SET @digit=SUBSTRING(@hex,@pos+1,1)
		IF @digit='+' or @digit='-' OR @digit=' ' RETURN NULL
		SET @digit_int2 =
			CASE 
				WHEN @digit='A' OR @digit='a' THEN 10
				WHEN @digit='B' OR @digit='b' THEN 11
				WHEN @digit='C' OR @digit='c' THEN 12
				WHEN @digit='D' OR @digit='d' THEN 13
				WHEN @digit='E' OR @digit='e' THEN 14
				WHEN @digit='F' OR @digit='f' THEN 15
				ELSE CAST(@digit AS INT)
			END 
		SET @ascii_=@digit_int1*16+ @digit_int2 
		SET @retval=@retval + CAST(CHAR(@ascii_) AS VARBINARY)
     
		SET @pos = @pos + 2
	END
	RETURN CONVERT(VARCHAR(1000), @retval, 2);
END
GO

IF EXISTS(SELECT 1 FROM sys.procedures 
          WHERE Name = 'UUID$create_uuid')
BEGIN
    DROP PROCEDURE UUID$create_uuid
END
GO

CREATE OR ALTER VIEW internalNEWID
-- this view will be used only in the fn_create_uuid to produce the random
-- element for the generated uuid
AS
SELECT RAND(CHECKSUM(NEWID())) as newid1
GO

------------------------------------------------------------------------
-- Name			: UUID$create_uuid
-- Description	: This procedure creates and returns a UUID string
--               of 24 characters like UUIDGenerator.createUUIDString().
-- Input		: none
-- Output		: the UUID
-- Example		: EXEC UUID$create_uuid
------------------------------------------------------------------------
CREATE OR ALTER FUNCTION [dbo].[UUID$create_uuid]()
RETURNS VARCHAR(24)
AS
BEGIN
             DECLARE @l_base64_chr_str VARCHAR(24),
                    @l_base64_raw_str VARCHAR(48),
                    @l_rand1_int NUMERIC,
                    @l_rand2_int NUMERIC,
                    @maxRandomValue INT = 65535,
                    @minRandomValue TINYINT = 0,
                    @maxByteRandomValue TINYINT = 255,
                    @minByteRandomValue TINYINT = 0,
                    @l_ip_str VARCHAR(20),
                    @l_ip_patt VARCHAR(50) = '(^\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3}$)',
                    @l_type_int INT = 0,
                    @l_time BIGINT,
                    @l_sessionid INT,
                    @l_tmp NVARCHAR(64),
                    @l_raw_uuid VARCHAR(50),
                    @location INT,
                    @nextlocation INT,
                    @ipaddress INT,
                    @NEWID float;

       DECLARE @array  TABLE
       (
             ID INT NOT NULL,
             COLVALUE NVARCHAR(50)
       );

       SELECT @NEWID = newid1 FROM internalNEWID;
       SELECT @l_rand1_int =  CAST(((@maxRandomValue + 1) - @minRandomValue) * @NEWID + @minRandomValue AS int);
       
       SELECT @NEWID = newid1 FROM internalNEWID;
       SELECT @l_rand2_int = CAST(((@maxRandomValue + 1) - @minRandomValue) * @NEWID + @minRandomValue AS int);
       
       SELECT @l_tmp = RIGHT(REPLICATE('0',4) + dbo.CONVERSION$to_hex(@l_rand1_int), 4);

       INSERT INTO @array VALUES(1, dbo.HEXTORAW_VARBINARY(SUBSTRING(@l_tmp, 3, 2)));
       INSERT INTO @array VALUES(2, dbo.HEXTORAW_VARBINARY(SUBSTRING(@l_tmp, 1, 2)));
       
       SELECT @l_tmp = RIGHT(REPLICATE('0',4) + dbo.CONVERSION$to_hex(@l_rand2_int), 4);
       
       INSERT INTO @array VALUES(7, dbo.HEXTORAW_VARBINARY(SUBSTRING(@l_tmp, 3, 2)));
       INSERT INTO @array VALUES(8, dbo.HEXTORAW_VARBINARY(SUBSTRING(@l_tmp, 1, 2)));

       SELECT @l_tmp = RIGHT(REPLICATE('0',4) + dbo.CONVERSION$to_hex(@l_type_int), 4);
       
       INSERT INTO @array VALUES(9, dbo.HEXTORAW_VARBINARY(SUBSTRING(@l_tmp, 3, 2)));
       INSERT INTO @array VALUES(10, dbo.HEXTORAW_VARBINARY(SUBSTRING(@l_tmp, 1, 2)));
       
       SELECT @l_ip_str = CONVERT(char(15), CONNECTIONPROPERTY('client_net_address'));

       -- use the localhost ip if unable to get a IPv4 address
       IF (@l_ip_str NOT LIKE '%.%.%.%')
        SET @l_ip_str = '127.0.0.1';
       
       SELECT @location = CHARINDEX('.', @l_ip_str, 1);
       
       SELECT @NEWID = newid1 FROM internalNEWID;
       SELECT @ipaddress = ISNULL(SUBSTRING(@l_ip_str, 1,  @location - 1), CAST(((@maxByteRandomValue + 1) - @minByteRandomValue) * @NEWID + @minByteRandomValue AS int));

       SELECT @l_tmp = dbo.CONVERSION$to_hex(@ipaddress);

       INSERT INTO @array VALUES(3, dbo.HEXTORAW_VARBINARY(@l_tmp));
       
       SELECT @nextlocation = CHARINDEX('.', @l_ip_str, @location + 1)
       SELECT @NEWID = newid1 FROM internalNEWID;
       SELECT @ipaddress = ISNULL(SUBSTRING(@l_ip_str, @location + 1, @nextlocation - (@location + 1)), CAST(((@maxByteRandomValue + 1) - @minByteRandomValue) * @NEWID + @minByteRandomValue AS int));

       SELECT @l_tmp = dbo.CONVERSION$to_hex(@ipaddress);
       INSERT INTO @array VALUES(4, dbo.HEXTORAW_VARBINARY(@l_tmp));

       SELECT @location = @nextlocation
       SELECT @nextlocation = CHARINDEX('.', @l_ip_str, @location+1)
       
       SELECT @NEWID = newid1 FROM internalNEWID;
       SELECT @ipaddress = ISNULL(SUBSTRING(@l_ip_str, @location + 1, @nextlocation - (@location + 1)), CAST(((@maxByteRandomValue + 1) - @minByteRandomValue) * @NEWID + @minByteRandomValue AS int));
       SELECT @l_tmp = dbo.CONVERSION$to_hex(@ipaddress);
       INSERT INTO @array VALUES(5, dbo.HEXTORAW_VARBINARY( @l_tmp));

       SELECT @location = @nextlocation
       SELECT @nextlocation = LEN(@l_ip_str)
       SELECT @NEWID = newid1 FROM internalNEWID;
       SELECT @ipaddress = ISNULL(SUBSTRING(@l_ip_str, @location + 1, @nextlocation - @location), CAST(((@maxByteRandomValue + 1) - @minByteRandomValue) * @NEWID + @minByteRandomValue AS int));
       
       SELECT @l_tmp = dbo.CONVERSION$to_hex(@ipaddress);
       INSERT INTO @array VALUES(6, dbo.HEXTORAW_VARBINARY(@l_tmp));
       
       SELECT @l_time = DATEDIFF_BIG(MILLISECOND, '1970-01-01', GetDate());

       SELECT @l_tmp = RIGHT(REPLICATE('0',16) + dbo.CONVERSION$to_hex(@l_time), 16);
       

       INSERT INTO @array VALUES(13, dbo.HEXTORAW_VARBINARY(SUBSTRING(@l_tmp, 15, 2)));
       INSERT INTO @array VALUES(14, dbo.HEXTORAW_VARBINARY(SUBSTRING(@l_tmp, 13, 2)));
       INSERT INTO @array VALUES(18, dbo.HEXTORAW_VARBINARY(SUBSTRING(@l_tmp, 11, 2)));
       INSERT INTO @array VALUES(17, dbo.HEXTORAW_VARBINARY(SUBSTRING(@l_tmp, 9, 2)));
       INSERT INTO @array VALUES(12, dbo.HEXTORAW_VARBINARY(SUBSTRING(@l_tmp, 7, 2)));
       INSERT INTO @array VALUES(11, dbo.HEXTORAW_VARBINARY(SUBSTRING(@l_tmp, 5, 2)));
       
       SELECT @l_sessionid = @@SPID;
       
       SELECT @l_tmp = RIGHT(REPLICATE('0',16) + dbo.CONVERSION$to_hex(@l_sessionid), 16);
       
       INSERT INTO @array VALUES(15, dbo.HEXTORAW_VARBINARY(SUBSTRING(@l_tmp, 15, 2)));
       INSERT INTO @array VALUES(16, dbo.HEXTORAW_VARBINARY(SUBSTRING(@l_tmp, 13, 2)));
       
       SELECT @l_base64_raw_str = 
             CONCAT(
                          (SELECT COLVALUE FROM @array WHERE ID = 1),
                          (SELECT COLVALUE FROM @array WHERE ID = 2),
                          (SELECT COLVALUE FROM @array WHERE ID = 3),
                          (SELECT COLVALUE FROM @array WHERE ID = 4),
                          (SELECT COLVALUE FROM @array WHERE ID = 5),
                          (SELECT COLVALUE FROM @array WHERE ID = 6),
                          (SELECT COLVALUE FROM @array WHERE ID = 7),
                          (SELECT COLVALUE FROM @array WHERE ID = 8),
                          (SELECT COLVALUE FROM @array WHERE ID = 9),
                          (SELECT COLVALUE FROM @array WHERE ID = 10),
                          (SELECT COLVALUE FROM @array WHERE ID = 11),
                          (SELECT COLVALUE FROM @array WHERE ID = 12),
                          (SELECT COLVALUE FROM @array WHERE ID = 13),
                          (SELECT COLVALUE FROM @array WHERE ID = 14),
                          (SELECT COLVALUE FROM @array WHERE ID = 15),
                          (SELECT COLVALUE FROM @array WHERE ID = 16),
                          (SELECT COLVALUE FROM @array WHERE ID = 17),
                          (SELECT COLVALUE FROM @array WHERE ID = 18)
                    )

       DECLARE @source VARBINARY(MAX), @encoded VARCHAR(MAX)
       SET @source = CONVERT(VARBINARY(MAX), @l_base64_raw_str, 2)
       SET @encoded = CAST('' AS XML).value('xs:base64Binary(sql:variable("@source"))', 'VARCHAR(MAX)')
       SET @l_base64_chr_str = @encoded

       SELECT @l_base64_chr_str = REPLACE(@l_base64_chr_str, '+', '.');

       SELECT @l_base64_chr_str = REPLACE(@l_base64_chr_str, '/', '_');

    RETURN @l_base64_chr_str;
END
GO

GO
