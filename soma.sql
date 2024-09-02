DECLARE @indice INT = 13
DECLARE @soma INT = 0 
DECLARE @k INT = 0 

while @k < @indice
begin
    SET @k = @k + 1
    SET @soma = @soma + @k
end

print(@soma)
