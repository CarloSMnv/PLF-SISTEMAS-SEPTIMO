def duplicar(lista):
    resultado = []
    for x in lista:
        resultado.append(x * 2)
    return resultado

numeros = [1, 2, 3, 4]
print("Lista duplicada:", duplicar(numeros))