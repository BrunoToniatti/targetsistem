faturamento = [
    {'dia': 1, 'faturamento': 500.00},  # Segunda
    {'dia': 2, 'faturamento': 570.00},  # Terça
    {'dia': 3, 'faturamento': 590.00},  # Quarta
    {'dia': 4, 'faturamento': 239.00},  # Quinta
    {'dia': 5, 'faturamento': 1005.00}, # Sexta
    {'dia': 6, 'faturamento': 0.00},    # Sábado
    {'dia': 7, 'faturamento': 0.00},    # Domingo
    {'dia': 8, 'faturamento': 120.00},  # Segunda
    {'dia': 9, 'faturamento': 110.00},  # Terça
    {'dia': 10, 'faturamento': 90.00},  # Quarta
    {'dia': 11, 'faturamento': 140.00}, # Quinta
    {'dia': 12, 'faturamento': 800.00}, # Sexta
    {'dia': 13, 'faturamento': 0.00},   # Sábado
    {'dia': 14, 'faturamento': 0.00},   # Domingo
    {'dia': 15, 'faturamento': 180.00}, # Segunda
    {'dia': 16, 'faturamento': 250.00}, # Terça
    {'dia': 17, 'faturamento': 310.00}, # Quarta
    {'dia': 18, 'faturamento': 270.00}, # Quinta
    {'dia': 19, 'faturamento': 400.00}, # Sexta
    {'dia': 20, 'faturamento': 0.00},   # Sábado
    {'dia': 21, 'faturamento': 0.00},   # Domingo
    {'dia': 22, 'faturamento': 500.00}, # Segunda
    {'dia': 23, 'faturamento': 600.00}, # Terça
    {'dia': 24, 'faturamento': 300.00}, # Quarta
    {'dia': 25, 'faturamento': 400.00}, # Quinta
    {'dia': 26, 'faturamento': 700.00}, # Sexta
    {'dia': 27, 'faturamento': 0.00},   # Sábado
    {'dia': 28, 'faturamento': 0.00},   # Domingo
    {'dia': 29, 'faturamento': 800.00}, # Segunda
    {'dia': 30, 'faturamento': 900.00}, # Terça
]


menor_faturamento = float('inf')
maior_faturamento = float('-inf')
soma_faturamento = 0
dias_com_faturamento = 0

for fatura in faturamento:
    valor_faturamento = fatura['faturamento']
    if valor_faturamento > 0:
        if valor_faturamento < menor_faturamento:
            menor_faturamento = valor_faturamento
        if valor_faturamento > maior_faturamento:
            maior_faturamento = valor_faturamento
        soma_faturamento += valor_faturamento
        dias_com_faturamento += 1

media_mensal = soma_faturamento / dias_com_faturamento if dias_com_faturamento > 0 else 0

dias_acima_da_media = sum(1 for fatura in faturamento if fatura['faturamento'] > media_mensal)

print(f"Menor faturamento: {menor_faturamento}")
print(f"Maior faturamento: {maior_faturamento}")
print(f"Dias acima da média: {dias_acima_da_media}")
