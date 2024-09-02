
sp = 67836.43
rj = 36678.66
mg = 29229.88
es = 27165.48
outros = 19849.53

total = sp + rj + mg + es + outros
porcentagem_sp = (sp/total) * 100
porcentagem_rj = (rj/total) * 100
porcentagem_mg = (mg/total) * 100
porcentagem_es = (es/total) * 100
porcentagem_outros = (outros/total) * 100


total_porcentagem = porcentagem_sp + porcentagem_rj + porcentagem_mg + porcentagem_es + porcentagem_outros
print(f'São Paulo: {porcentagem_sp:,.2f}%')
print(f'Rio de janeiro: {porcentagem_rj:,.2f}%')
print(f'Minas Gerais: {porcentagem_mg:,.2f}%')
print(f'Espiro Santo: {porcentagem_es:,.2f}%')
print(f'Outros: {porcentagem_outros:,.2f}%')
# print(f'Rio de janeiro: {total_porcentagem:,.2f}%')


# print(total)
