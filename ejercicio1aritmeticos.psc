Proceso ejercicio1aritmeticos 
	
    Definir n, opcion, i, j, k Como Entero
    Definir base, altura, area Como Real
    Dimension resultados[100] 
	escribir "       CALCULADORA DE TRIANGULOS"
    Escribir "¿Cuántos triángulos desea almacenar?: "
    Leer n
	
    Si n > 100 Entonces
        Escribir "El máximo permitido es 100. Se establecerá en 100."
        n <- 100
    FinSi
	
    i <- 1  
	
    Repetir
		
        Escribir "---- MENÚ CRUD TRIÁNGULOS ----"
        Escribir "1. Crear (Calcular área y guardar)"
        Escribir "2. Leer áreas almacenadas"
        Escribir "3. Actualizar un área"
        Escribir "4. Eliminar un área"
        Escribir "5. Salir"
        Escribir "Seleccione una opción: "
        Leer opcion
		
        Segun opcion Hacer
			
            Caso 1: 
                Si i <= n Entonces
                    Escribir "Ingresar la base del triángulo: "
                    Leer base
                    Escribir "Ingresar la altura del triángulo: "
                    Leer altura
                    area <- (base * altura) / 2
                    resultados[i] <- area
                    Escribir " Área calculada y guardada en posición ", i, ": ", area
                    i <- i + 1
                Sino
                    Escribir " Límite alcanzado. No puede agregar más."
                FinSi
				
            Caso 2: 
                Si i = 1 Entonces
                    Escribir " No hay áreas guardadas aún."
                Sino
                    Para j <- 1 Hasta i - 1 Con Paso 1
                        Escribir "Área [", j, "]: ", resultados[j]
                    FinPara
                FinSi
				
            Caso 3: 
                Escribir "Ingrese el índice del área a actualizar (1 a ", i - 1, "): "
                Leer j
                Si j >= 1 Y j < i Entonces
                    Escribir "Ingrese la nueva base: "
                    Leer base
                    Escribir "Ingrese la nueva altura: "
                    Leer altura
                    area <- (base * altura) / 2
                    resultados[j] <- area
                    Escribir " Área actualizada en posición ", j, ": ", area
                Sino
                    Escribir " Índice inválido."
                FinSi
				
            Caso 4: 
                Escribir "Ingrese el índice del área a eliminar (1 a ", i - 1, "): "
                Leer j
                Si j >= 1 Y j < i Entonces
                    Para k <- j Hasta i - 2 Con Paso 1
                        resultados[k] <- resultados[k + 1]
                    FinPara
                    i <- i - 1
                    Escribir " Área eliminada correctamente."
                Sino
                    Escribir " Índice inválido."
                FinSi
				
            Caso 5:
                Escribir " Saliendo del programa..."
				
            De Otro Modo:
                Escribir " Opción inválida. Intente de nuevo."
				
        FinSegun
		
    Hasta Que opcion = 5

FinProceso

