algoritmo ejercicio7aritmetico
    Definir n, i, opcion, j, k Como Entero
    Definir celsius, fahrenheit Como Real
    Dimension resultados[100]
	escribir"       CONVERTIDOR DE TEMPERATURA"
    Escribir "¿Cuántas temperatura desea almacenar?: "
    Leer n
    Si n > 100 Entonces
        n <- 100
    FinSi
    i <- 1
    Repetir
        Escribir "--- MENÚ CRUD - Celsius a Fahrenheit ---"
        Escribir "1. Crear", " 2. Leer", " 3. Actualizar", " 4. Eliminar", " 5. Salir"
        Leer opcion
        Segun opcion Hacer
            Caso 1:
                Si i <= n Entonces
                    Escribir "Ingresar grados Celsius:"
                    Leer celsius
                    fahrenheit <- (celsius * 9/5) + 32
                    resultados[i] <- fahrenheit
                    Escribir "Fahrenheit: ", fahrenheit
                    i <- i + 1
                Sino
                    Escribir "Límite alcanzado."
                FinSi
            Caso 2:
                Si i = 1 Entonces
                    Escribir "No hay datos aún."
                Sino
                    Para j <- 1 Hasta i - 1
                        Escribir "Fahrenheit [", j, "]: ", resultados[j]
                    FinPara
                FinSi
            Caso 3:
                Escribir "Índice a actualizar:"
                Leer j
                Si j >= 1 Y j < i Entonces
                    Escribir "Nuevo Celsius:"
                    Leer celsius
                    fahrenheit <- (celsius * 9/5) + 32
                    resultados[j] <- fahrenheit
                    Escribir "Actualizado: ", fahrenheit
                Sino
                    Escribir "Índice inválido."
                FinSi
            Caso 4:
                Escribir "Índice a eliminar:"
                Leer j
                Si j >= 1 Y j < i Entonces
                    Para k <- j Hasta i - 2
                        resultados[k] <- resultados[k+1]
                    FinPara
                    i <- i - 1
                    Escribir "Eliminado."
                Sino
                    Escribir "Índice inválido."
                FinSi
        FinSegun
    Hasta Que opcion = 5
	escribir"   GRACIAS POR UTILIZARNOS"
FinProceso

