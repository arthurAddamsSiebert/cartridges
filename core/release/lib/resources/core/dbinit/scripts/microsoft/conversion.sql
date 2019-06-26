------------------------------------------------------------------------------------------
-- Name        : CONVERSION$to_base
-- Description : This function is used to convert decimal values to base.
-- Input       : @p_dec  - Input integer
--				 @p_base - base to be used to convert the value
-- Example     : EXEC dbo.CONVERSION$to_base(4, 2) 
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.CONVERSION$to_base
(
       @p_dec MONEY,
       @p_base MONEY
)
RETURNS VARCHAR(4000)
AS
BEGIN
       DECLARE @l_str VARCHAR(255) = NULL,
       @l_num MONEY = @p_dec,
       @l_hex VARCHAR(50) = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';

       IF (@l_num = 0)
			RETURN '0';

       IF (ROUND(@p_dec, 0, 1) <> @p_dec OR @p_dec < 0)
		    RETURN CAST( 'Input value is either less than zero or incorrect.' AS INT); -- Cannot use throw or raise error as this is function, so need to use Cast to return meaningful error message.
              
       WHILE (@l_num > 0)
       BEGIN
              SELECT @l_str = CONCAT(SUBSTRING(@l_hex, CAST(((@l_num%@p_base) + 1) AS NUMERIC(38,6)), 1), @l_str);
              SELECT @l_num = ROUND((@l_num/@p_base),0, 1);
       END
       RETURN @l_str;
END;
GO
------------------------------------------------------------------------------------------
-- Name        : CONVERSION$to_oct
-- Description : This function is used to convert integer to oct.
-- Input       : @@p_dec  - Input floating value
-- Example     : EXEC dbo.CONVERSION$to_oct(4) 
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.CONVERSION$to_oct
(
     @p_dec float(53)

)
RETURNS  varchar(4000)
AS
BEGIN      
     return dbo.CONVERSION$to_base(@p_dec, 8); 
END
GO
------------------------------------------------------------------------------------------
-- Name        : CONVERSION$to_bin
-- Description : This function is used to convert integer to binary.
-- Input       : @p_dec  - Input integer
-- Example     : EXEC dbo.CONVERSION$to_bin(4) 
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.CONVERSION$to_bin (@p_dec INT)  
RETURNS varchar(4000)   
AS   
BEGIN  
	RETURN dbo.CONVERSION$to_base(@p_dec, 2);
END
GO  

------------------------------------------------------------------------
-- Name        : ConvertToNumber
-- Description : converts the input string to number.
-- Input       : @param1: first parameter to convert
--				 @param1: second parameter to convert
-- Example     : SELECT dbo.ConvertToNumber('abcd', 'xxxx')
------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.[ConvertToNumber]
(
	@param1 VARCHAR(8000),
	@param2 VARCHAR(8000)
)
RETURNS NUMERIC(38,10)
AS
BEGIN
	DECLARE
		@Param2_temp VARCHAR(8000),
		@Param1_temp VARCHAR(8000),
		@Param2_part1 VARCHAR(8000),
		@Param2_part2 VARCHAR(8000),
		@nulls_part1 VARCHAR(8000),
		@nulls_part2 VARCHAR(8000),
		@CHARINDEX INT,
		@Number_value1 VARCHAR(8000), 
		@Number_value2 VARCHAR(8000), 
		@temp_number_value2 VARCHAR(8000), 
		@number_value3 VARCHAR(8000),
		@number_value4 VARCHAR(8000),
		@number_value5 VARCHAR(8000),
		@number_value6 VARCHAR(8000),
		@decimal_point_right INT,
		@decimal_point_right_count VARCHAR(8000),
		@decimal_point_left INT,
		@decimal_point_left_count VARCHAR(8000),
		@temp_param VARCHAR(800),
		@dot INT,
		@dot_temp INT,
		@PR INT,
		@PR_Left_brackets INT,
		@PR_Right_brackets INT,
		@S INT,
		@S_left INT,
		@S_right INT,
		@S_left_minus INT,
		@S_left_plus INT,
		@S_right_minus INT,
		@S_right_plus INT,
		@dollar INT,
		@MI INT,
		@MI_minus INT,
		@MI_plus INT,
		@HexaDecimal INT,
		@lengthA INT,
		@tempstring VARCHAR(30),
		@tempnumeric NUMERIC(38),
		@finalnumeric NUMERIC(38);

	SET @PR = CHARINDEX('RP',REVERSE(@param2))

	IF (@PR <> 1) and (@PR > 0)
	BEGIN
		RETURN CAST('' AS NUMERIC(1));
	END
	ELSE IF (@PR > 0) AND (@PR = 1)
	BEGIN
		SET @param2 = REPLACE(@param2,'PR','')
		SET @PR_Left_brackets = CHARINDEX('<',@param1)
		IF (@PR_Left_brackets > 0) and (@PR_Left_brackets <> 1)
		BEGIN
			RETURN CAST('' AS NUMERIC(1))
		END
		ELSE IF (@PR_Left_brackets > 0) AND (@PR_Left_brackets = 1)
		BEGIN
			SET @param1 = REPLACE(@param1, '<','')   
		END
	
		SET @PR_Right_brackets = CHARINDEX('>',REVERSE(@param1))

		IF (@PR_Right_brackets > 0) AND (@PR_Right_brackets <> 1)
		BEGIN
			RETURN CAST('' AS NUMERIC(1))
		END
		ELSE IF (@PR_Right_brackets > 0) AND (@PR_Right_brackets = 1)
		BEGIN
			SET @param1 = REPLACE(@param1, '>','')
		END
	END
 
	IF CHARINDEX('S',@param2) > 0
	BEGIN
		SET @S = CHARINDEX('S', @param2)
		IF (@S=1)
		BEGIN
			SET @S_left = 1
		END 
		SET @S = CHARINDEX('S',REVERSE(@param2))
		IF (@S=1)
		BEGIN
			SET @S_right = 1
		END
		IF (@S_left > 0) AND (@S_right > 0)
		BEGIN
			RETURN CAST('' AS NUMERIC(1))
		END
		IF (@S_left > 0) OR (@S_right > 0)
		BEGIN
			SET @param2 = REPLACE(@param2, 'S', '')
			SET @S_left_minus = CHARINDEX('-',@param1)
			IF (@S_left_minus > 1)
			BEGIN
				SET @S_left_minus = NULL
			END  
			SET @S_left_plus = CHARINDEX('+',@param1)
			IF (@S_left_plus > 1)
			BEGIN
				SET @S_left_plus = NULL
			END
			SET @S_right_minus = CHARINDEX('-', REVERSE(@param1))
			IF (@S_right_minus > 1)
			BEGIN
				SET @S_right_minus = NULL
			END
			SET @S_right_plus = CHARINDEX('+', REVERSE(@param1))
			IF (@S_right_plus > 1)
			BEGIN
				SET @S_right_plus = NULL
			END  
			IF (@S_right_minus > 0) or (@S_left_minus > 0)
			BEGIN
				SET @param1 = REPLACE(@param1,'-','')
			END
			IF (@S_right_plus > 0) or (@S_left_plus > 0)
			BEGIN
				SET @param1 = replace(@param1,'+','')
			END
			IF ((ISNULL(@S_right_minus,0) > 0) OR (ISNULL(@S_right_plus,0) > 0)) AND ((ISNULL(@S_left_minus,0) > 0) OR (ISNULL(@S_left_plus,0) > 0))
			BEGIN
				RETURN CAST('' AS NUMERIC(1))
			end
			IF (@S_left > 0) AND ((@S_right_plus> 0) OR (@S_right_minus > 0))
			BEGIN
				RETURN CAST('' AS NUMERIC(1))
			END
			IF (@S_right > 0) AND ((@S_left_plus> 0) OR (@S_left_minus > 0))
			BEGIN
				RETURN CAST('' AS NUMERIC(1))
			END
		END
		ELSE 
		BEGIN
			RETURN CAST('' AS NUMERIC(1))
		END
	END

	IF ((@S_right > 0) or (@S_left > 0)) AND ((ISNULL(@S_right_plus,0) = 0) AND (ISNULL(@S_right_minus,0) = 0) AND (ISNULL(@S_left_minus,0) = 0) AND (ISNULL(@S_left_plus,0) = 0))
	BEGIN
		RETURN CAST('' AS NUMERIC(1))
	END

	SET @dollar = CHARINDEX('$',@param1)
	IF (@dollar > 0)
	BEGIN
		IF (@dollar <> 1)
		BEGIN
			RETURN CAST('' AS NUMERIC(1))
		END
		IF (@dollar = 1) AND (CHARINDEX('$',@param1) <> 1)
		BEGIN
			IF (CHARINDEX('-$',@param1) <> 1)
			BEGIN
				RETURN CAST('' AS NUMERIC(1))
			END
		END
		IF (@dollar = 1) AND ((CHARINDEX('$',@param1) = 1) OR CHARINDEX('-$',@param1) = 1) 
		BEGIN
			set @param1 = replace(@param1,'$','')
			set @param2 = replace(@param2,'$','')
		END
	END

	SET @MI = CHARINDEX('IM', REVERSE(@param2))
	IF (@MI > 0)
	BEGIN
		IF (@MI > 0) AND (@MI <> 1)
		BEGIN
			RETURN CAST('' AS NUMERIC(1))
		END
		ELSE 
		BEGIN
			SET @param2 = REPLACE(@param2, 'MI','')
		END
		IF (@MI = 1)
		BEGIN
			SET @MI_plus = CHARINDEX(' ',REVERSE(@param1))
			IF @MI_plus <> 1
			BEGIN
				SET @MI_plus = NULL
			END
			ELSE
			BEGIN
				SET @param1 = REPLACE(@param1, ' ','')
			END
			SET @MI_minus = CHARINDEX('-',REVERSE(@param1))
			IF @MI_minus <> 1
			BEGIN
				SET @MI_minus = null
			END
			ELSE
			BEGIN
				SET @param1 = REPLACE(@param1, '-','')
			END
			IF (ISNULL(@MI_plus,0) <> 1) AND (ISNULL(@MI_minus,0) <> 1)
			BEGIN
				RETURN CAST('' AS NUMERIC(1))
			END
		END 
	END

	IF (CHARINDEX(',',@Param2)>0)  
	BEGIN
		SET @Param2_temp = @param2
		SET @decimal_point_right_count = ''
		SET @decimal_point_left_count = ''
		SET @decimal_point_right = CHARINDEX(',',@Param2_temp)
		IF (@decimal_point_right > 0)  
		BEGIN
			WHILE (CHARINDEX(',',@Param2_temp)>0) 
			BEGIN 
				SET @CHARINDEX=CHARINDEX(',',@Param2_temp)
				SET @Param2_temp = STUFF(@Param2_temp,CAST(@CHARINDEX AS INT),1,'9')
				SET @decimal_point_right_count = @decimal_point_right_count + CAST(@CHARINDEX AS VARCHAR(100)) + ','
			END
			SET @decimal_point_right_count = REVERSE(SUBSTRING(REVERSE(@decimal_point_right_count),2, LEN(@Param2_temp)-1))
		END

		SET @Param1_temp = @param1
		SET @decimal_point_left = CHARINDEX(',',@Param1_temp)
		IF (@decimal_point_left > 0)  
		BEGIN
			WHILE (CHARINDEX(',',@Param1_temp)>0) 
			BEGIN 
				SET @CHARINDEX=CHARINDEX(',',@Param1_temp)
				SET @Param1_temp = STUFF(@Param1_temp,CAST(@CHARINDEX AS INT),1,'9')
				SET @decimal_point_left_count = @decimal_point_left_count + CAST(@CHARINDEX AS VARCHAR(100)) + ','
			END
			SET @decimal_point_left_count = REVERSE(SUBSTRING(REVERSE(@decimal_point_left_count),2, LEN(@Param1_temp)-1))
		END
		IF (@decimal_point_left_count > @decimal_point_right_count)
		BEGIN
			RETURN CAST('' AS NUMERIC(1))
		END
		ELSE 
		BEGIN
			SET @param1 = REPLACE(@param1,',','.')
			SET @param2 = REPLACE(@param2,',','.')
		END
	END

	IF ((CHARINDEX('x', @param2) > 0) OR (CHARINDEX('X', @param2) > 0))
	BEGIN
		SET @HexaDecimal = 1
	END
      
	SET @number_value4 = CHARINDEX('-',@param1)
	IF @number_value4 > 0
	BEGIN
		SET @param1 = REPLACE(@param1,'-','')
	END
	SET @Param2_temp = REVERSE(@Param2)
	SET @nulls_part1 = ''
	SET @Number_value1 = LEN(@Param2_temp)
	SET @Number_value2 = @Number_value1 - CHARINDEX('.',@Param2_temp)
	SET @number_value3 = CHARINDEX('.',REVERSE(@param2))
	SET @dot = CHARINDEX('.',@param1)
	IF @dot>0
	BEGIN
		SET @dot = 1 
	END
	SET @Number_value5 = LEN(@Param1)
	SET @Number_value6 = @Number_value5 - @dot
	SET @Param2_part1 = SUBSTRING(@param2,1, CAST(@Number_value2 AS INTEGER))
	IF @HexaDecimal <> 1
	BEGIN
		IF (CHARINDEX('.',@param2) > 0) OR (CHARINDEX(',',@param2) > 0)
		BEGIN
			SET @Param2_part2 = SUBSTRING(@param2,CAST(@Number_value2 AS INTEGER)+COUNT(@number_value3)+COUNT(@number_value3),(CAST(@Number_value1 AS INTEGER)-COUNT(@number_value3)) - CAST(@Number_value2 AS INTEGER))
		END
	END

	BEGIN
		SET @Param2_temp = SUBSTRING(REVERSE(@Param2), CAST(@number_value3 AS INT)+1 , CAST(@number_value1 AS INT) - CAST(@number_value3 AS INT))
		while (CHARINDEX('0',@Param2_temp)>0) 
		begin 
			SET @CHARINDEX=CHARINDEX('0',@Param2_temp)
			SET @Param2_temp = STUFF(@Param2_temp, CAST(@CHARINDEX AS INT),1,'9')
			SET @Nulls_part1 = CAST(@CHARINDEX AS INT)
		END
	END 

	BEGIN
		SET @Param2_temp = SUBSTRING(@Param2, CHARINDEX('.', @Param2)+1, CAST(@number_value1 AS INT) - CAST(@number_value3 AS INT))
		WHILE (CHARINDEX('0',@Param2_temp)>0) 
		BEGIN 
			SET @CHARINDEX=CHARINDEX('0',@Param2_temp)
			SET @Param2_temp = STUFF(@Param2_temp,CAST(@CHARINDEX AS INT),1,'9')
			SET @Nulls_part2 = ISNULL(CAST(@CHARINDEX AS INT),@CHARINDEX)
		END
	END
	
	IF (@Nulls_part1 > 0)
	BEGIN
		IF @dot = 0
		BEGIN
			SET @dot_temp = 1
			SET @number_value6 = 0
			IF LEN(SUBSTRING(REVERSE(@param1), CAST(@number_value6 AS INT)+@dot_temp, CAST(@number_value5 AS INT) - CAST(@number_value6 AS INT)))<@Nulls_part1
			BEGIN
				RETURN CAST('' AS NUMERIC(1));
			END
			END
			ELSE
			BEGIN
				SET @dot_temp = @dot
				IF LEN(SUBSTRING(REVERSE(@param1), CAST(@number_value6 AS INT)+@dot_temp, CAST(@number_value5 AS INT) - CAST(@number_value6 AS INT)))<@Nulls_part1
				BEGIN
					RETURN CAST('' AS NUMERIC(1));
				END
		END 
	END
	
	IF (@dot>0)
	BEGIN
		if LEN(SUBSTRING(@Param1, CHARINDEX('.', @Param1)+1, LEN(@param1)-CHARINDEX('.', @Param1)))<@Nulls_part2
		BEGIN
			RETURN CAST('' AS NUMERIC(1));
		END
	END

	IF (@dot>0)
	BEGIN
		IF CHARINDEX('.',@param1)-1>charindex('.',@param2)-1
		BEGIN
			RETURN CAST('' AS NUMERIC(1));
		END
	END
	ELSE
	BEGIN
		IF CHARINDEX('.', @param2)=0
		BEGIN
			IF LEN(@param1)> LEN(@param2)
			BEGIN
				RETURN CAST('' AS NUMERIC(1))
			END
		END
		ELSE
		BEGIN
			IF LEN(@param1)> CHARINDEX('.',@param2)-1
			BEGIN
				RETURN CAST('' AS NUMERIC(1)) 
			END
		END
	END

	IF (@dot>0)
	BEGIN
		IF LEN(@param1)-CHARINDEX('.',@param1)>LEN(@param2)-CHARINDEX('.',@param2)
		BEGIN
			RETURN CAST('' AS NUMERIC(1));
		END
	END

	IF (ISNULL(@decimal_point_left_count,0)>0 OR ISNULL(@decimal_point_right_count,0)>0)
	BEGIN
		SET @param1 = REPLACE(@param1,'.','')
	END


	IF @hexadecimal = 1
	BEGIN
		SET @finalnumeric = 0
		SET @lengthA = LEN(@param1)
		WHILE @lengthA > 0
		BEGIN
			SET @lengthA = @lengthA - 1
			SET @tempstring = SUBSTRING(@param1, 1, 1)
			IF @Tempstring = '0'
			BEGIN
				SET @tempnumeric = 0
			END
			ELSE IF @tempstring = '1'
			BEGIN
				SET @tempnumeric = 1
			END
			ELSE IF @tempstring = '2'
			BEGIN
				SET @tempnumeric = 2
			END
			ELSE IF @tempstring = '3'
			BEGIN
				SET @tempnumeric = 3
			END
			ELSE IF @tempstring = '4'
			BEGIN
				SET @tempnumeric = 4
			END
			ELSE IF @tempstring = '5'
			BEGIN
				SET @tempnumeric = 5
			END
			ELSE IF @tempstring = '6'
			BEGIN
				SET @tempnumeric = 6
			END
			ELSE IF @tempstring = '7'
			BEGIN
				SET @tempnumeric = 7
			END
			ELSE IF @tempstring = '8'
			BEGIN
				SET @tempnumeric = 8
			END
			ELSE IF @tempstring = '9'
			BEGIN
				SET @tempnumeric = 9
			END
			ELSE IF @tempstring = 'a'
			BEGIN
				SET @tempnumeric = 10
			END
			ELSE IF @tempstring = 'b'
			BEGIN
				SET @tempnumeric = 11
			END
			ELSE IF @tempstring = 'c'
			BEGIN
				SET @tempnumeric = 12
			END
			ELSE IF @tempstring = 'd'
			BEGIN
				SET @tempnumeric = 13
			END
			ELSE IF @tempstring = 'e'
			BEGIN
				SET @tempnumeric = 14
			END
			ELSE IF @tempstring = 'f'
			BEGIN
				SET @tempnumeric = 15
			END
			IF @lengthA > 0
			BEGIN
				SET @tempnumeric = @tempnumeric * POWER(16,@lengthA)
			END
			SET @finalnumeric = @finalnumeric + @tempnumeric
			SET @param1 = SUBSTRING(@param1, 2, LEN(@param1)-1)
		END
		SET @param1 = @finalnumeric
	END

	IF @hexadecimal = 1
	BEGIN
		SET @param1 = CAST(@param1 AS NUMERIC(38))
	END 
	ELSE
	BEGIN
		IF CHARINDEX('.',@param1) > 0
		BEGIN
			SET @param1 = CAST(STR(@param1,CAST(@Number_value1 AS INT),CAST(@Number_value1 AS INT) - CAST(@Number_value2 AS INT)- COUNT(@Number_value3)) AS NUMERIC(38,10));
		END
		ELSE 
		BEGIN
			SET @param1 = CAST(STR(@param1,CAST(@Number_value1 AS INT),CAST(@Number_value1 AS INT) - CAST(@Number_value2 AS INT)) AS NUMERIC(38,10));
		END
	END


	IF @number_value4>0
	BEGIN
		SET @param1 = -1*CAST(@param1 AS NUMERIC(38,10))
	END
	IF (@PR>0)
	BEGIN
		IF (@PR_Left_brackets = 1) AND (@PR_Right_brackets = 1)
		BEGIN
			SET @param1 = -1*CAST(@param1 AS NUMERIC(38,10))
		END
		ELSE IF (@PR_Left_brackets = 1)
		BEGIN 
			SET @param1 = -1*CAST(@param1 AS NUMERIC(38,10))
		END 
		ELSE IF (@PR_Right_brackets = 1) AND (@PR_Left_brackets = 0)
		BEGIN
			RETURN CAST('' AS NUMERIC(1));
		END
	END

	if (@S_left>0)
	BEGIN
		IF (@S_left_minus > 0)
		BEGIN
			SET @param1 = -1*CAST(@param1 AS NUMERIC(38,10))
		END
	END
	IF (@S_right>0)
	BEGIN
		IF (@s_right_minus>0)
		BEGIN
			SET @param1 = -1*CAST(@param1 AS NUMERIC(38,10))
		END
	END

	IF @MI_minus = 1 
	BEGIN
		SET @param1 = -1*CAST(@param1 AS NUMERIC(38,10))
	END 
	RETURN @param1
END
GO

------------------------------------------------------------------------
-- Name			: CONVERSION$to_dec
-- Description	: converts the input string to decimal.
-- Input		: @p_str: parameter to be converted to decimal.
--				: @p_from_base: base parameter to be used.
-- Example		: SELECT dbo.CONVERSION$to_dec('abcd', 8)
------------------------------------------------------------------------
CREATE OR ALTER FUNCTION CONVERSION$to_dec
(
	@p_str VARCHAR(50),
	@p_from_base INT = 16
)
RETURNS NUMERIC(38)
AS
BEGIN
	DECLARE @l_num   NUMERIC(38) = 0,
			@l_hex   VARCHAR(50) = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ',
			@counter INT = 1,
			@inputlength INT = LEN(@p_str);
	IF @p_from_base = 16 
	BEGIN
		SET @l_num = dbo.ConvertToNumber(@p_str, Replicate('x',LEN(@p_str)))
	END
	ELSE
	BEGIN
		WHILE(@counter <= @inputlength)
		BEGIN
			SET @l_num = @l_num * @p_from_base + CHARINDEX(UPPER(SUBSTRING(@p_str, @counter, 1)), @l_hex) - 1;
			SET @counter = @counter + 1;
		END
	END
	RETURN @l_num;
END
GO
------------------------------------------------------------------------------------------
-- Name        : CONVERSION$to_hex
-- Description : This function is used to convert integer to hexadecimal.
-- Input       : @p_number  - Input numeric values
-- Example     : SELECT dbo.CONVERSION$to_hex(100)
------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.CONVERSION$to_hex(@p_number NUMERIC(38, 14)) 
RETURNS VARCHAR(8000) 
AS 
BEGIN 
	DECLARE @trim_flag BIGINT,
		@n_count	BIGINT,
		@fmt_count	BIGINT,
		@point		BIGINT,
		@fmt_i		VARCHAR(50),
		@fmt_f		VARCHAR(50),
		@v_number	VARCHAR(50),
		@v_i		VARCHAR(50),
		@v_f		VARCHAR(50),
		@f			VARCHAR(1),
		@c			VARCHAR(1),
		@out_i		VARCHAR(50),
		@out_f		VARCHAR(50),
		@result		VARCHAR(50),
		@sign		TINYINT,
		@v			BIGINT,
		@bucks		TINYINT,
		@pr			BIT,
		@l			BIT,
		@t_number	NUMERIC(38, 14),
		@tmp_len	BIGINT,
		@tmp_str	VARCHAR(8000),
		@p_fmt_old	VARCHAR(8000),
		@p_fmt		VARCHAR(8000);

	SET @p_fmt ='fmxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx';
	SET @t_number =@p_number;
	SET @trim_flag = 0;
	SET @sign=0;
	SET @bucks=0; 
	SET @pr=0;
	SET @l=0;
	SET @p_fmt_old='';

	IF (CHARINDEX('TM', UPPER(@p_fmt)) > 0 )
		RETURN NULL;

	IF (CHARINDEX('E', UPPER(@p_fmt)) > 0 )
		RETURN NULL;

	IF ( CHARINDEX('RN', UPPER(@p_fmt)) > 0 )
		RETURN NULL;

	IF ( CHARINDEX('U', UPPER(@p_fmt)) > 0 ) 
		RETURN NULL; 

      IF ( CHARINDEX('X', UPPER(@p_fmt)) > 0 ) 
        BEGIN 
            IF ( PATINDEX('%[^0,^X,^F,^M]%', UPPER(@p_fmt)) > 0 ) 
              RETURN NULL; 

            IF PATINDEX('%[F,M]%', UPPER(@p_fmt)) > 0 
               AND PATINDEX('FM%', UPPER(@p_fmt)) = 0 
              RETURN NULL; 

            IF CHARINDEX('0', UPPER(@p_fmt), CHARINDEX('X', UPPER(@p_fmt))) > 0 
              RETURN NULL; 

            IF PATINDEX('FM%', UPPER(@p_fmt)) > 0 
              BEGIN 
                  IF CHARINDEX('F', UPPER(@p_fmt), 3) > 0 
                      OR CHARINDEX('M', UPPER(@p_fmt), 3) > 0 
                    RETURN NULL; 

                  SET @trim_flag=1; 
                  SET @p_fmt = Replace(@p_fmt, 'FM', ''); 
              END 

            IF @p_number < 0 
              RETURN REPLICATE('#', LEN(@p_fmt) + 1); 

            SET @point=Round(@p_number, 0); 

            IF @p_number > 0 
              SET @n_count=Log(@point) / Log(16) + 1; 
            ELSE 
              SET @n_count=1; 

            IF LEN(@p_fmt) < @n_count 
              RETURN REPLICATE('#', LEN(@p_fmt) + 1); 

            SET @result=''; 

            WHILE @n_count > 0 
              BEGIN 
                  SET @result = SUBSTRING('0123456789abcdef', 1+(@point % 16), 1 
                                ) 
                                + @result 
                  SET @point = @point / 16 
                  SET @n_count = @n_count - 1 
              END 

            IF LEN(@p_fmt) > LEN(@result) 
               AND CHARINDEX('0', UPPER(@p_fmt)) > 0 
              SET @result=REPLICATE('0', LEN(@p_fmt) - LEN(@result)) 
                          + @result 

            IF LEN(@p_fmt) >= LEN(@result) 
               AND @trim_flag = 0 
              SET @result=REPLICATE(' ', LEN(@p_fmt) - LEN(@result)+1) 
                          + @result 

            RETURN @result 
        END 

      IF ( CHARINDEX('C', UPPER(@p_fmt)) > 0 ) 
        RETURN NULL; 

      IF ( CHARINDEX('B', UPPER(@p_fmt)) > 0 ) 
        BEGIN 
            SET @p_fmt_old=@p_fmt 
            SET @p_fmt=Replace(@p_fmt, 'B', '') 
        END 

      IF ( UPPER(SUBSTRING(@p_fmt, 1, 2)) = 'FM' 
            OR ( UPPER(SUBSTRING(@p_fmt, 2, 2)) = 'FM' 
                 AND UPPER(SUBSTRING(@p_fmt, 1, 1)) = 'S' ) ) 
        BEGIN 
            SET @trim_flag = 1 
            SET @p_fmt = Replace(@p_fmt, 'FM', '') 
        END 

      IF ( CHARINDEX('G', UPPER(@p_fmt)) > 0 
           AND ( CHARINDEX('.', @p_fmt) > 0 
                  OR PATINDEX('%[0,9]G%', UPPER(@p_fmt)) = 0 ) ) 
        RETURN NULL; 

      SET @p_fmt = Replace(UPPER(@p_fmt), 'D', '.') 

      IF ( CHARINDEX('.', @p_fmt, CHARINDEX('.', @p_fmt) + 1) > 0 ) 
        RETURN NULL; 

      IF ( CHARINDEX('FM', UPPER(@p_fmt)) > 0 ) 
        RETURN NULL; 

      IF ( CHARINDEX('S', UPPER(@p_fmt)) > 0 
           AND CHARINDEX('MI', UPPER(@p_fmt)) > 0 ) 
        RETURN NULL; 

      IF ( CHARINDEX('G', UPPER(@p_fmt)) > 0 
           AND CHARINDEX(',', UPPER(@p_fmt)) > 0 ) 
        RETURN NULL; 

      IF ( CHARINDEX('S', UPPER(@p_fmt)) > 0 
           AND CHARINDEX('PR', UPPER(@p_fmt)) > 0 ) 
        RETURN NULL; 

      IF ( CHARINDEX('MI', UPPER(@p_fmt)) > 0 
           AND CHARINDEX('PR', UPPER(@p_fmt)) > 0 ) 
        RETURN NULL; 

      IF ( CHARINDEX('$', UPPER(@p_fmt)) > 0 
           AND CHARINDEX('L', UPPER(@p_fmt)) > 0 ) 
        RETURN NULL; 

      IF ( CHARINDEX('S', UPPER(@p_fmt), CHARINDEX('S', UPPER(@p_fmt)) + 1) > 0 
         ) 
        RETURN NULL; 

      IF ( CHARINDEX('MI', UPPER(@p_fmt), CHARINDEX('MI', UPPER(@p_fmt)) + 1) > 
           0 
         ) 
        RETURN NULL; 

      IF ( CHARINDEX('PR', UPPER(@p_fmt), CHARINDEX('PR', UPPER(@p_fmt)) + 1) > 
           0 
         ) 
        RETURN NULL; 

      IF ( CHARINDEX('$', UPPER(@p_fmt), CHARINDEX('$', UPPER(@p_fmt)) + 1) > 0 
         ) 
        RETURN NULL; 

      IF ( CHARINDEX('L', UPPER(@p_fmt), CHARINDEX('L', UPPER(@p_fmt)) + 1) > 0 
         ) 
        RETURN NULL; 

      IF ( CHARINDEX('V', UPPER(@p_fmt), CHARINDEX('V', UPPER(@p_fmt)) + 1) > 0 
         ) 
        RETURN NULL; 

      IF ( CHARINDEX(',', @p_fmt, CHARINDEX('.', @p_fmt) + 1) > 0 
           AND CHARINDEX('.', @p_fmt) > 0 ) 
        RETURN NULL; 

      IF ( CHARINDEX('V', UPPER(@p_fmt)) > 0 
           AND CHARINDEX('.', @p_fmt) > 0 ) 
        RETURN NULL; 

      IF ( CHARINDEX('PRL', UPPER(@p_fmt)) > 0 ) 
        RETURN NULL; 

      IF ( CHARINDEX('MIL', UPPER(@p_fmt)) > 0 ) 
        RETURN NULL; 

      IF ( CHARINDEX('PR$', UPPER(@p_fmt)) > 0 ) 
        RETURN NULL; 

      IF ( PATINDEX('%LS[0,9]%', UPPER(@p_fmt)) > 0 ) 
        RETURN NULL; 

      IF ( PATINDEX('%$S[0,9]%', UPPER(@p_fmt)) > 0 ) 
        RETURN NULL; 

      IF ( PATINDEX('%[0,9,.,V,G,,]SL%', UPPER(@p_fmt)) > 0 ) 
        RETURN NULL; 

      IF ( PATINDEX('%[0,9,.,V,G,,]S$%', UPPER(@p_fmt)) > 0 ) 
        RETURN NULL; 

      IF ( CHARINDEX('$', UPPER(@p_fmt)) > 0 ) 
        SET @bucks=1; 

      IF ( PATINDEX('%L%', UPPER(@p_fmt)) > 0 ) 
        BEGIN 
            SET @l=1; 

            IF ( PATINDEX('%[0,9,.,V,G,,]L%', UPPER(@p_fmt)) > 0 ) 
              SET @bucks=2; 
            ELSE 
              BEGIN 
                  IF ( PATINDEX('%L[0,9]%', UPPER(@p_fmt)) > 0 ) 
                    SET @bucks=1; 
                  ELSE 
                    RETURN NULL; 
              END; 
        END; 

      IF ( CHARINDEX('PR', UPPER(@p_fmt)) > 0 ) 
        SET @pr=1; 

      IF ( CHARINDEX('V', UPPER(@p_fmt)) > 0 ) 
        BEGIN 
            SET @tmp_str=SUBSTRING(@p_fmt, CHARINDEX('V', UPPER(@p_fmt)) + 1, 
                         LEN(@p_fmt)) 
            SET @tmp_len=PATINDEX('%[^0,9]%', UPPER(@tmp_str)) 

            IF ( @tmp_len > 0 ) 
              SET @tmp_str=SUBSTRING(@tmp_str, 1, @tmp_len - 1) 

            SET @v=LEN(@tmp_str); 
            SET @p_number=@p_number * Power(10, LEN(@tmp_str)) 
        END; 

      IF ( UPPER(SUBSTRING(@p_fmt, 1, 1)) = 'S' ) 
        SET @sign = 1 

      SET @p_fmt=REVERSE(@p_fmt) 

      IF ( UPPER(SUBSTRING(@p_fmt, 1, 1)) = 'S' ) 
        SET @sign = 2 

      IF ( UPPER(SUBSTRING(@p_fmt, 1, 2)) = 'IM' ) 
        SET @sign = 3 

      SET @p_fmt=REVERSE(@p_fmt) 
      SET @p_fmt = Replace(UPPER(@p_fmt), 'G', ',') 
      SET @p_fmt = Replace(UPPER(@p_fmt), 'V', '') 
      SET @p_fmt = Replace(UPPER(@p_fmt), '$', '') 
      SET @p_fmt = Replace(UPPER(@p_fmt), 'L', '') 
      SET @p_fmt = Replace(UPPER(@p_fmt), 'PR', '') 
      SET @p_fmt = Replace(UPPER(@p_fmt), 'S', '') 
      SET @p_fmt = Replace(UPPER(@p_fmt), 'MI', '') 
      SET @point = CHARINDEX('.', @p_fmt) 

      IF ( @point = 0 ) 
        BEGIN 
            SET @fmt_i = @p_fmt 
            SET @fmt_f = '' 
        END 
      ELSE 
        BEGIN 
            SET @fmt_i = SUBSTRING(@p_fmt, 1, @point - 1) 
            SET @fmt_f = SUBSTRING(@p_fmt, @point + 1, LEN(@p_fmt) - @point) 
        END 

      SET @p_number = Round(@p_number, LEN(@fmt_f)) 
      SET @v_number = CONVERT(VARCHAR, @p_number) 
      SET @point = CHARINDEX('.', @v_number) 

      IF ( @point = 0 ) 
        BEGIN 
            SET @v_i = @v_number 
            SET @v_f = '' 
        END 
      ELSE 
        BEGIN 
            SET @v_i = SUBSTRING(@v_number, 1, @point - 1) 

            IF @v_i = '0' 
               AND @p_number <> 0 
              SET @v_i='' 

            IF @v_i = '-0' 
               AND @p_number <> 0 
              SET @v_i='-' 

            SET @v_f = SUBSTRING(@v_number, @point + 1, LEN(@v_number) - @point) 
        END 

      SET @point = CHARINDEX('.', @p_fmt) 
      SET @out_i = '' 
      SET @fmt_count = LEN(@fmt_i); 
      SET @n_count = LEN(@v_i); 
      SET @f = '' 

      WHILE ( 1 = 1 ) 
        BEGIN 
            SET @c = SUBSTRING(@v_i, @n_count, 1) 

            IF ( @fmt_count = 0 ) 
              BEGIN 
                  IF ( @n_count > 0 ) 
                    BEGIN 
                        IF ( @c = '-' ) 
                          BEGIN 
                              SET @n_count = @n_count - 1 

                              CONTINUE 
                          END 

                        RETURN REPLICATE('#', LEN(@p_fmt) + 1) 
                    END 

                  BREAK 
              END 

            SET @f = SUBSTRING(@fmt_i, @fmt_count, 1) 

            IF ( @n_count <= 0 ) 
              BEGIN 
                  SET @c = CASE @f 
                             WHEN '9' THEN 
                               CASE 
                                 WHEN LEFT(@fmt_i, @fmt_count) LIKE '%0%' THEN 
                                 '0' 
                                 ELSE ' ' 
                               END 
                             WHEN ',' THEN ' ' 
                             ELSE @f 
                           END 

                  IF ( @f = ',' 
                       AND @fmt_count > 1 
                       AND SUBSTRING(@fmt_i, @fmt_count - 1, 1) = '0' ) 
                    SET @c = ',' 
              END 
            ELSE 
              BEGIN 
                  IF ( @f IN( '0', '9' ) ) 
                    BEGIN 
                        SET @n_count = @n_count - 1 

                        IF ( @c = '-' ) 
                          SET @fmt_count = @fmt_count + 1 
                    END 
                  ELSE 
                    BEGIN 
                        IF ( @f = ',' 
                             AND @n_count = 1 ) 
                          BEGIN 
                              IF ( @c = '-' ) 
                                BEGIN 
                                    SET @n_count = @n_count - 1 

                                    CONTINUE 
                                END 
                          END 

                        SET @c = @f 
                    END 
              END 

            IF SUBSTRING(@out_i, 1, 1) = '-' 
               AND @c <> ' ' 
              SET @out_i ='-' + @c 
                          + ISNULL(SUBSTRING(@out_i, 2, LEN(@out_i)-1), ' ') 
            ELSE 
              BEGIN 
                  IF ( @c = '-' ) 
                    SET @out_i=@out_i 
                  ELSE 
                    SET @out_i = @c + @out_i 
              END 

            SET @fmt_count = @fmt_count - 1 
        END 

      IF ( LEN(@out_i) = 0 
           AND SUBSTRING(@fmt_i, LEN(@fmt_i), 1) = '0' ) 
        SET @out_i = '0' 

      IF ( LEN(@fmt_f) > 0 
           AND SUBSTRING(@fmt_i, LEN(@fmt_i), 1) = '9' ) 
        BEGIN 
            IF ( Ltrim(@out_i) = '0' ) 
              SET @out_i = REPLICATE(' ', LEN(@out_i)-1) + ' ' 

            IF ( Ltrim(@out_i) = '-0' ) 
              SET @out_i = REPLICATE(' ', LEN(@out_i)-2) + ' -' 
        END 

      SET @out_f = '' 

      IF ( @p_number <= 0 
           AND @t_number < 0 
           AND @sign = 0 
           AND @pr = 0 ) 
        SET @sign=1 

      SET @fmt_count = 1 
      SET @n_count = 1 

      WHILE ( @fmt_count <= LEN(@fmt_f) ) 
        BEGIN 
            SET @f = SUBSTRING(@fmt_f, @fmt_count, 1) 

            IF ( @fmt_count > LEN(@v_f) ) 
              SET @c = CASE @f 
                         WHEN '9' THEN ' ' 
                         ELSE @f 
                       END 
            ELSE 
              BEGIN 
                  IF ( @f IN ( '0', '9' ) ) 
                    SET @c = SUBSTRING(@v_f, @n_count, 1) 
                  ELSE 
                    SET @c = @f 
              END 

            SET @out_f = @out_f + @c 
            SET @n_count = @n_count + 1 
            SET @fmt_count = @fmt_count + 1 
        END 

      SET @result = @out_i 

      IF ( @v IS NOT NULL 
           AND @v > 0 ) 
        BEGIN 
            SET @tmp_len=LEN(@result + '_') - 1; 
            SET @result=REVERSE(@result); 

            IF PATINDEX('%[ ,-]%', @result) > 0 
              BEGIN 
                  SET @v=@v - LEN(SUBSTRING(@result, 1, 
                                  PATINDEX('%[-, ]%', @result) 
                                  - 1 
                                  )) 

                  IF @v > 0 
                    BEGIN 
                        IF ( @tmp_len - @v - PATINDEX('%[-, ]%', @result) + 1 > 
                             0 
                           ) 
                          SET @result = SUBSTRING(@result, 1, PATINDEX('%[-, ]%' 
                                        , 
                                        @result)-1 
                                        ) 
                                        + REPLICATE('0', @v) 
                                        + SUBSTRING(@result, PATINDEX('%[-, ]%', 
                                        @result 
                                        ), 
                                        @tmp_len 
                                        -@v 
                          -PATINDEX('%[-, ]%', @result)+1); 
                        ELSE 
                          SET @result = SUBSTRING(@result, 1, PATINDEX('%[-, ]%' 
                                        , 
                                        @result)-1 
                                        ) 
                                        + REPLICATE('0', @v); 
                    END 
              END; 
            ELSE 
              BEGIN 
                  SET @v=@v - @tmp_len 

                  IF @v > 0 
                    SET @result =@result + REPLICATE('0', @v); 
              END; 

            SET @result=REVERSE(@result); 
        END; 

      IF @bucks = 1 
        BEGIN 
            SET @tmp_len=LEN(@result + '_') - 1; 

            IF PATINDEX('% %', @result) > 0 
              BEGIN 
                  SET @result=REVERSE(@result); 
                  SET @result = SUBSTRING(@result, 1, PATINDEX('% %', @result)-1 
                                ) 
                                + '$' 
                                + SUBSTRING(@result, PATINDEX('% %', @result), 
                                @tmp_len) 
                  SET @result=REVERSE(@result); 
              END; 
            ELSE 
              SET @result = '$' + ISNULL(@result, '') 
        END 

      IF ( @t_number >= 0 
           AND @sign = 0 
           AND @pr = 0 ) 
        SET @result = ' ' + ISNULL(@result, '') 

      IF ( @t_number >= 0 
           AND @sign = 1 ) 
        BEGIN 
            SET @tmp_len=LEN(@result + '_') - 1; 

            IF PATINDEX('% %', @result) > 0 
              BEGIN 
                  SET @result=REVERSE(@result); 
                  SET @result = SUBSTRING(@result, 1, PATINDEX('% %', @result)-1 
                                ) 
                                + '+' 
                                + SUBSTRING(@result, PATINDEX('% %', @result), 
                                @tmp_len) 
                  SET @result=REVERSE(@result); 
              END; 
            ELSE 
              SET @result = '+' + @result 
        END; 

      IF ( @t_number < 0 
           AND @sign = 1 ) 
        BEGIN 
            SET @tmp_len=LEN(@result + '_') - 1; 

            IF PATINDEX('% %', @result) > 0 
              BEGIN 
                  SET @result=REVERSE(@result); 
                  SET @result = SUBSTRING(@result, 1, PATINDEX('% %', @result)-1 
                                ) 
                                + '-' 
                                + SUBSTRING(@result, PATINDEX('% %', @result), 
                                @tmp_len) 
                  SET @result=REVERSE(@result); 
              END; 
            ELSE 
              SET @result = '-' + @result 
        END; 

      IF ( @point <> 0 ) 
        SET @result = @result + '.' + ISNULL(@out_f, '') 

      IF ( @trim_flag = 1 ) 
        BEGIN 
            IF SUBSTRING(Ltrim(@result), 1, 1) = '-' 
                OR SUBSTRING(Ltrim(@result), 1, 1) = '+' 
              BEGIN 
                  IF SUBSTRING(Ltrim(@result), 2, 1) = '$' 
                    SET @result =SUBSTRING(Ltrim(@result), 1, 1) + '$' 
                                 + Ltrim(Rtrim(SUBSTRING(Ltrim(@result), 3, LEN( 
                                 @result) 
                                 -1)) 
                                 ); 
                  ELSE 
                    SET @result =SUBSTRING(Ltrim(@result), 1, 1) 
                                 + Ltrim(Rtrim(SUBSTRING(Ltrim(@result), 2, LEN( 
                                 @result) 
                                 -1)) 
                                 ); 
              END 
            ELSE 
              BEGIN 
                  IF SUBSTRING(Ltrim(@result), 1, 1) = '$' 
                    SET @result ='$' 
                                 + Ltrim(Rtrim(SUBSTRING(Ltrim(@result), 2, LEN( 
                                 @result) 
                                 -1)) 
                                 ); 
                  ELSE 
                    SET @result = Ltrim(Rtrim(@result)); 
              END; 

            IF @point <> 0 
              BEGIN 
                  SET @result=REVERSE(@result); 
                  SET @result=SUBSTRING(@result, PATINDEX('%[1-9,.]%', @result), 
                                          LEN(@result) - PATINDEX('%[1-9,.]%', 
                                                         @result 
                                                         ) 
                                          + 1) 
                  SET @result=REVERSE(@result); 
                  SET @tmp_str=REVERSE(SUBSTRING(@p_fmt, @point + 1, LEN(@p_fmt) 
                                       )) 
                  ; 
                  SET @v=LEN(@tmp_str) - CHARINDEX('0', @tmp_str) + 1 - LEN( 
                         SUBSTRING(@result, @point + 1, LEN(@result))) 

                  IF CHARINDEX('0', @tmp_str) > 0 
                     AND @v > 0 
                    SET @result=@result + REPLICATE('0', @v) 
              END; 
        END 

      IF @bucks = 2 
        SET @result = ISNULL(@result, '') + '$' 

      IF @pr = 1 
         AND @t_number < 0 
        BEGIN 
            SET @tmp_len=LEN(@result + '_') - 1; 

            IF PATINDEX('% %', @result) > 0 
              BEGIN 
                  SET @result=REVERSE(@result); 
                  SET @result = '>' 
                                + SUBSTRING(@result, 1, PATINDEX('% %', @result) 
                                -1 
                                ) 
                                + '<' 
                                + SUBSTRING(@result, PATINDEX('% %', @result), 
                                @tmp_len) 
                  SET @result=REVERSE(@result); 
              END; 
            ELSE 
              SET @result = '<' + @result + '>' 
        END; 

      IF @pr = 1 
         AND @t_number >= 0 
         AND @trim_flag <> 1 
        SET @result = ' ' + ISNULL(@result, '') + ' ' 

      IF ( @t_number >= 0 
           AND @sign = 2 ) 
        SET @result=ISNULL(@result, '') + '+'; 

      IF ( @t_number < 0 
           AND @sign = 2 ) 
        SET @result=ISNULL(@result, '') + '-'; 

      IF ( @t_number >= 0 
           AND @sign = 3 ) 
        SET @result=ISNULL(@result, '') + ' '; 

      IF ( @t_number < 0 
           AND @sign = 3 ) 
        SET @result=ISNULL(@result, '') + '-'; 

      IF ( @trim_flag <> 1 
           AND @l = 1 ) 
        SET @result= '         ' + ISNULL(@result, ''); 

      IF ( CHARINDEX('B', UPPER(@p_fmt_old)) > 0 ) 
        BEGIN 
            IF ( @p_number = 0 ) 
              SET @result=REPLICATE(' ', LEN(@result)) 
        END 

      RETURN @result 
  END
GO