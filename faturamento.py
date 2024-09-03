import xml.etree.ElementTree as ET

def ler_faturamento_xml(arquivo_faturamento):
    tree = ET.parse(arquivo_faturamento)
    root = tree.getroot()
    
    faturamento = []
    for row in root.findall('row'):
        dia = int(row.find('dia').text)
        valor = float(row.find('valor').text)
        faturamento.append({'dia': dia, 'faturamento': valor})
    
    return faturamento


arquivo_faturamento = 'faturamento.xml' 


faturamento = ler_faturamento_xml(arquivo_faturamento)


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
