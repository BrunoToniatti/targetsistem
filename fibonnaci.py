'''
FIBONNACI
'''

numero_informado = input('Digite um número: ')
try:
    numero_informado = int(numero_informado)
    a, b = 0, 1

    pertence_a_fibonacci = False

    while a <= numero_informado:
        # print(a)
        if a == numero_informado:
            pertence_a_fibonacci = True
            break
        a, b = b, a + b

    if pertence_a_fibonacci:
        print(f"O número {numero_informado} pertence à sequência de Fibonacci.")
    else:
        print(f"O número {numero_informado} não pertence à sequência de Fibonacci.")

except:
    print('Informe um numero inteiro')
