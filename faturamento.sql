BEGIN TRAN

SET NOCOUNT ON


CREATE TABLE faturamento (
    fat_cod     INT PRIMARY KEY IDENTITY,
    fat_dat     VARCHAR(20),
    fat_valor   FLOAT
);


INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-01', 500.00)  -- Segunda
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-02', 570.00)  -- Terça
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-03', 590.00)  -- Quarta
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-04', 239.00)  -- Quinta
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-05', 1005.00) -- Sexta
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-06', 0.00)    -- Sábado
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-07', 0.00)    -- Domingo
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-08', 120.00)  -- Segunda
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-09', 110.00)  -- Terça
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-10', 90.00)   -- Quarta
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-11', 140.00)  -- Quinta
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-12', 800.00)  -- Sexta
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-13', 0.00)    -- Sábado
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-14', 0.00)    -- Domingo
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-15', 180.00)  -- Segunda
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-16', 250.00)  -- Terça
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-17', 310.00)  -- Quarta
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-18', 270.00)  -- Quinta
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-19', 400.00)  -- Sexta
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-20', 0.00)    -- Sábado
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-21', 0.00)    -- Domingo
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-22', 500.00)  -- Segunda
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-23', 600.00)  -- Terça
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-24', 300.00)  -- Quarta
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-25', 400.00)  -- Quinta
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-26', 700.00)  -- Sexta
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-27', 0.00)    -- Sábado
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-28', 0.00)    -- Domingo
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-29', 800.00)  -- Segunda
INSERT INTO faturamento (fat_dat, fat_valor) VALUES ('2024-09-30', 900.00)  -- Terça

DECLARE @qtd_linhas INT,
        @contador INT = 0,
        @faturamento_atual FLOAT,
        @maior_faturamento FLOAT = 0.0,
        @menor_faturamento FLOAT = 2147483647 


SELECT @qtd_linhas = COUNT(*) FROM faturamento

DECLARE cur CURSOR FOR 
SELECT fat_valor FROM faturamento

OPEN cur

FETCH NEXT FROM cur INTO @faturamento_atual

WHILE @@FETCH_STATUS = 0
BEGIN
    IF @faturamento_atual > 0.00
    BEGIN
        IF @faturamento_atual > @maior_faturamento
        BEGIN
            SET @maior_faturamento = @faturamento_atual
        END
        IF @faturamento_atual < @menor_faturamento
        BEGIN
            SET @menor_faturamento = @faturamento_atual
        END
    END

    FETCH NEXT FROM cur INTO @faturamento_atual
END

CLOSE cur
DEALLOCATE cur

PRINT ('Maior faturamento: ' + CAST(@maior_faturamento AS VARCHAR))
PRINT ('Menor faturamento: ' + CAST(@menor_faturamento AS VARCHAR))

ROLLBACK
