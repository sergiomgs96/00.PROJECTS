file1 = open("original.txt", "r")
print(file1.mode)

replacing = ""
replacing = (str(input("Introduce texto que será eliminado", )))
print("Usted ha seleccionado eliminar",replacing)

replacement = (str(input("Introduce el texto que será añadido en su lugar",)))
print("Usted ha seleccionado añadir",replacement)


with open(r"resultado.txt","w") as file2:
    for line in file1:
        line = line.replace(str(replacing), str(replacement))
        print(line)
        file2.write(line)
