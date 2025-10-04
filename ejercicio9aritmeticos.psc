Algoritmo ejercicio9aritmeticos
    Definir n, i, opcion, j, k Como Entero
    Definir baseMayor, baseMenor, altura, area Como Real
    Dimension resultados[100]
	escribir "      CALCULADORA DE TRAPECIOS "
    Escribir "¿Cuántos trapecios desea almacenar?: "
    Leer n
    Si n > 100 Entonces
        n <- 100
    FinSi
    i <- 1
    Repetir
        Escribir "--- MENÚ CRUD - Área Trapecio ---"
        Escribir "1. Crear", " 2. Leer", " 3. Actualizar", " 4. Eliminar", " 5. Salir"
        Leer opcion
        Segun opcion Hacer
            Caso 1:
                Si i <= n Entonces
                    Escribir "Ingresar la base mayor:"
                    Leer baseMayor
                    Escribir "Ingresar la base menor:"
                    Leer baseMenor
                    Escribir "Ingresar la altura:"
                    Leer altura
                    area <- ((baseMayor + baseMenor) * altura) / 2
                    resultados[i] <- area
                    Escribir "Área calculada: ", area
                    i <- i + 1
                Sino
                    Escribir "Límite alcanzado."
                FinSi
            Caso 2:
                Si i = 1 Entonces
                    Escribir "No hay datos aún."
                Sino
                    Para j <- 1 Hasta i - 1
                        Escribir "Área [", j, "]: ", resultados[j]
                    FinPara
                FinSi
            Caso 3:
                Escribir "Índice a actualizar:"
                Leer j
                Si j >= 1 Y j < i Entonces
                    Escribir "Nueva base mayor:"
                    Leer baseMayor
                    Escribir "Nueva base menor:"
                    Leer baseMenor
                    Escribir "Nueva altura:"
                    Leer altura
                    area <- ((baseMayor + baseMenor) * altura) / 2
                    resultados[j] <- area
                    Escribir "Actualizado: ", area
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
	escribir "  GRACIAS :)"
FinProceso
