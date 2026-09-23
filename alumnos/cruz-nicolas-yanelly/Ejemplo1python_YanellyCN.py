def duplicar(lista):
    resultado = []
    for x in lista:
        resultado.append(x * 2)
    return resultado

# Imprimimos lo que devuelve la función:
print(duplicar([1, 2, 3, 4]))