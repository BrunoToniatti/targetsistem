DECLARE @sp FLOAT = 67836.43
DECLARE @rj FLOAT = 36678.66
DECLARE @mg FLOAT = 29229.88
DECLARE @es FLOAT = 27165.48
DECLARE @outros FLOAT = 19849.53

DECLARE @total FLOAT = @sp + @rj + @mg + @es + @outros

DECLARE @porcentagem_sp FLOAT = (@sp/@total) * 100
DECLARE @porcentagem_rj FLOAT = (@rj/@total) * 100
DECLARE @porcentagem_mg FLOAT = (@mg/@total) * 100
DECLARE @porcentagem_es FLOAT = (@es/@total) * 100
DECLARE @porcentagem_outros FLOAT = (@outros/@total) * 100

print('São Paulo: '+ CAST(@porcentagem_sp AS VARCHAR(200))+'%')
print('Rio de janeiro: '+ CAST(@porcentagem_rj AS VARCHAR(200))+'%')
print('Minas Gerais: '+ CAST(@porcentagem_mg AS VARCHAR(200))+'%')
print('Espirito Santo: '+ CAST(@porcentagem_es AS VARCHAR(200))+'%')
print('Outros: '+ CAST(@porcentagem_outros AS VARCHAR(200))+'%')
