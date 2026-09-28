def duplicar(lista):
    resultado = []

    for x in lista:
        resultado.append(x * 2)

    return resultado


def main():
    print(duplicar([1, 2, 3, 4]))


if __name__ == "__main__":
    main()