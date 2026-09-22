def duplicar(lista):
    resultado = []
    for x in lista:
        resultado.append(x * 2)
    return resultado

# Para que se muestre en la consola, agrégale el print():
print(duplicar([1, 2, 3, 4]))  # Muestra: [2, 4, 6, 8]
