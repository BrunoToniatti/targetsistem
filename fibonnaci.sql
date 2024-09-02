DECLARE @numero INT = 34
DECLARE @a INT = 0
DECLARE @b INT = 1
DECLARE @pertence_a_fibonacci BIT = 0
DECLARE @temp INT

WHILE @a <= @numero
BEGIN
    IF @a = @numero
    BEGIN
        SET @pertence_a_fibonacci = 1
        BREAK
    END

    -- Atualize as variáveis corretamente
    SET @temp = @a + @b
    SET @a = @b
    SET @b = @temp
END

IF @pertence_a_fibonacci = 1
BEGIN
    PRINT ('O número '+ CAST(@numero AS VARCHAR(50)) + ' pertence a fibonacci')
END
ELSE
BEGIN
    PRINT ('O número '+ CAST(@numero AS VARCHAR(50)) + ' não pertence a fibonacci')
END
