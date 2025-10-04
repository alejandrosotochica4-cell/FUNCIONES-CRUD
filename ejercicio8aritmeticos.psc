Algoritmo ejercicio8aritmeticos
    Definir n, i, opcion, j, k Como Entero
    Definir dolares, tasa, euros Como Real
    Dimension resultados[100]
	escribir "      CASA DE CONVERTIDOR VIRTUAL"
    Escribir "¿Cuántas conversiones desea almacenar?: "
    Leer n
    Si n > 100 Entonces
        n <- 100
    FinSi
    Escribir "Ingrese la tasa de cambio (1 dólar a euros): "
    Leer tasa
    i <- 1
    Repetir
        Escribir "--- MENÚ CRUD - Dólares a Euros ---"
        Escribir "1. Crear", " 2. Leer", " 3. Actualizar", " 4. Eliminar", " 5. Salir"
        Leer opcion
        Segun opcion Hacer
            Caso 1:
                Si i <= n Entonces
                    Escribir "Ingresar cantidad en dólares:"
                    Leer dolares
                    euros <- dolares * tasa
                    resultados[i] <- euros
                    Escribir "Euros: ", euros
                    i <- i + 1
                Sino
                    Escribir "Límite alcanzado."
                FinSi
            Caso 2:
                Si i = 1 Entonces
                    Escribir "No hay datos aún."
                Sino
                    Para j <- 1 Hasta i - 1
                        Escribir "Euros [", j, "]: ", resultados[j]
                    FinPara
                FinSi
            Caso 3:
                Escribir "Índice a actualizar:"
                Leer j
                Si j >= 1 Y j < i Entonces
                    Escribir "Nueva cantidad en dólares:"
                    Leer dolares
                    euros <- dolares * tasa
                    resultados[j] <- euros
                    Escribir "Actualizado: ", euros
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
	escribir "    GRACIAS POR CONVERTIR CON NOSOTROS"
FinProceso
