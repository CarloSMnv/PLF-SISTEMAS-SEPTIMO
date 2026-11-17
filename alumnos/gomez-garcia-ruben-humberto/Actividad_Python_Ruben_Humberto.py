def duplicar(lista):
    resultado = []
    for x in lista:
        resultado.append(x*2)
    return resultado

print("Lista duplicada: ", duplicar([1,2,3,4]))
