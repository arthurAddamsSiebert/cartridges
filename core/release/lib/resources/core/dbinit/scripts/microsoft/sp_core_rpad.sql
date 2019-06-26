SET QUOTED_IDENTIFIER ON 
GO 

SET ANSI_NULLS ON 
GO 

CREATE OR ALTER FUNCTION [CORE_RPAD] (@PadChar    CHAR(1), 
                            @PadToLen   INT, 
                            @BaseString VARCHAR(100)) 
RETURNS VARCHAR(1000) 
AS 
/* **************************************************** 
Description: 
Pads @BaseString to an exact length (@PadToLen) using the 
specified character (@PadChar). Base string will not be 
trimmed. Implicit type conversion should allow caller to 
pass a numeric T-SQL value for @BaseString. 
Unfortunately T-SQL string variables must be declared with an 
explicit width, so I chose 100 for the base and 1000 for the 
return. Feel free to adjust data types to suit your needs. 
Keep in mind that if you don't assign an explicit width to 
varchar it is the same as declaring varchar(1). 
Revision History: 
Date Name Description 
---- ---- ----------- 
**************************************************** */ 
BEGIN 
    DECLARE @Padded		VARCHAR(1000), 
			@BaseLen	INT;

    SET @BaseLen = Len(@BaseString);

    IF @BaseLen >= @PadToLen
    BEGIN 
        SET @Padded = @BaseString;
    END 
    ELSE 
    BEGIN 
        SET @Padded = CONCAT(@BaseString,  Replicate(@PadChar, @PadToLen - @BaseLen));
    END
    RETURN @Padded 
END 
GO 

SET QUOTED_IDENTIFIER OFF 
GO 

SET ANSI_NULLS ON 
GO 