Proceso sin_titulo
	
	Definir nombre_apellido, equipaje_en_bodega, opcion_ Como Caracter
	Definir dni, telefono, numero_pasajero, opcion_venta Como Entero
	//CANTIDAD DE PASAJES DISPONIBLES
	Definir  cant_pasajes_disponibles_salta , cant_pasajes_disponibles_brc, cant_pasajes_disponibles_bsas, cant_pasajes_disponibles_mdz  Como Entero
	//ARRAYS
	Definir vuelo_Brc, vuelo_Salta, vuelo_Bsas, vuelo_Mendoza Como Caracter
	Dimension vuelo_Brc[120,7]
	Dimension vuelo_Salta[120,7]
	Dimension vuelo_Bsas[80,7]
	Dimension vuelo_Mendoza[80,7]
	//CONTADOR DE CADA VUELO
	Definir contador_brc, contador_salta, contador_bsas, contador_mendoza Como Entero
	//CANTIDAD DE PASAJES A COMPRAR
	Definir cant_pasajes_brc, cant_pasajes_salta, cant_pasajes_bsas, cant_pasajes_mendonza Como Entero
	
	Escribir "Bienvenidos a nuestro Sistema de venta de pasajes aéreos"
	Repetir
		
		Escribir "Por favor ingrese una opción:"
		Escribir "1. Venta pasaje"
		Escribir "2. Buscar pasaje vendido"
		Escribir "3. Buscar pasajero"
		Escribir "4. Ordenar y mostrar lista pasajeros"
		Escribir "5. Listado/s"
		Escribir "SALIR"
		
		Repetir
			
			Leer opcion_
			mayus = Mayusculas(opcion_)
			
			si opcion_ <> "1" y opcion_ <> "2" y opcion_ <> "3" y opcion_ <> "4" y opcion_ <> "5" y mayus <> "SALIR" Entonces
				Escribir "Dato incorrecto"
				Escribir "Ingrese un numero del 1 al 5 o salir"
			FinSi
			
		Hasta Que opcion_ = "1" o opcion_ = "2" o opcion_ = "3" o opcion_ = "4" o opcion_ = "5" o mayus = "SALIR" 
		
		
		Segun opcion_ Hacer
			"1":	
				Escribir "Seleccione a donde desea viajar:"
				si contador_bariloche <> 120
					Escribir "1. Buenos Aires - Bariloche" //120
				FinSi
				si contador_salta <> 120 Entonces
					Escribir "2. Bueno Aires - Salta"      //120
				FinSi
				si contador_bsas <> 80 Entonces
					Escribir "3. Rosario - Buenos Aires"   //80
				FinSi
				si contador_mendoza <> 80 Entonces
					Escribir "4. Mar Del Plata - Mendoza"   //80
				FinSi
				
				Leer opcion_venta
				
				Segun opcion_venta Hacer
					1:	si contador_brc == 120 Entonces
							Escribir "Opcion invalida, no quedan mas pasajes"
						SiNo
							
							cant_pasajes_disponibles_brc = 120  - contador_brc
							Escribir "Su seleccion fue Buenos Aires - Bariloche"
							
							Escribir "Ingrese la cantidad de vuelos que va a comprar (Quedan disponibles: ", cant_pasajes_disponibles_brc  ")"
							
							Leer cant_pasajes_brc
							Mientras (cant_pasajes_brc + contador_brc) > 120 o cant_pasajes_brc > 120 Hacer
								Escribir "Ha superado la cantidad de pasajes disponible"
								Escribir "Solo quedan: " cant_pasajes_disponibles_brc 
								Escribir "Vuelva a ingresar la cantidad de vuelos a comprar"
							Leer cant_pasajes_brc
							FinMientras
							
							
							solicitar_datos_pasajeros(vuelo_Brc, cant_pasajes_brc, contador_brc)
							
							Mostrar "Ruta: Buenos Aires - Bariloche"
							mostrar_datos_pasajeros(vuelo_Brc, cant_pasajes_brc, contador_brc, opcion_venta)
							
						FinSi
						
						
						
					2:
						si contador_salta == 120 Entonces
							Escribir "Opcion invalida, no quedan mas pasajes"
						SiNo
							
							cant_pasajes_disponibles_salta = 120 - contador_salta
							Escribir "Su seleccion fue Bueno Aires - Salta"
							
							Escribir "Ingrese la cantidad de vuelos que va a comprar quedan disponibles: (", cant_pasajes_disponibles_salta ")"
							
							Leer cant_pasajes_salta
								
							Mientras (cant_pasajes_salta + contador_salta) > 120 o cant_pasajes_brc > 120 Hacer
								Escribir "Ha superado la cantidad de pasajes disponible"
								Escribir "Solo quedan: " cant_pasajes_disponibles_salta 
								Escribir "Vuelva a ingresar la cantidad de vuelos a comprar"
								Leer cant_pasajes_salta
							FinMientras
							
							solicitar_datos_pasajeros(vuelo_Salta, cant_pasajes_salta, contador_salta)
							Mostrar "Ruta: Buenos Aires - Salta"
							mostrar_datos_pasajeros(vuelo_Salta, cant_pasajes_salta, contador_salta, opcion_venta)
							
						FinSi
						
						
					3:
						
						si contador_bsas == 80 Entonces
							Escribir "Opcion invalida, no quedan mas pasajes"
						SiNo
							
							cant_pasajes_disponibles_bsas = 80 - contador_bsas
							Escribir "Su seleccion fue Rosario - Buenos Aires"
							
							Escribir "Ingrese la cantidad de vuelos que va a comprar quedan disponibles: (", cant_pasajes_disponibles_bsas ")"
							
							Leer cant_pasajes_bsas
							
							Mientras (cant_pasajes_bsas + contador_bsas) > 80 o cant_pasajes_bsas > 80 Hacer
								Escribir "Ha superado la cantidad de pasajes disponible"
								Escribir "Solo quedan: " cant_pasajes_disponibles_bsas 
								Escribir "Vuelva a ingresar la cantidad de vuelos a comprar"
								Leer cant_pasajes_bsas
							FinMientras
							
							
							solicitar_datos_pasajeros(vuelo_Bsas, cant_pasajes_bsas, contador_bsas)
							Mostrar "Ruta: Rosario - Buenos Aires"
							mostrar_datos_pasajeros(vuelo_Bsas, cant_pasajes_bsas, contador_bsas, opcion_venta)
							
						FinSi
						
					4:
						si contador_mendoza == 80 Entonces
							escribir "opcion invalida, no quedan mas pasajes "
						SiNo
							cant_pasajes_disponibles_mdz = 80 - contador_mendoza
							Escribir "Su seleccion fue Mar Del Plata - Mendoza"
							
							Escribir "ingrese la cantidad de vuelos que va a comprar. Quedan disponibles: (" cant_pasajes_disponibles_mdz ")"
							Leer cant_pasajes_mendoza
							
							Mientras (cant_pasajes_mendoza + contador_mendoza) > 80 o cant_pasajes_mendoza > 80 Hacer
								Escribir "Ha superado la cantidad de pasajes disponible"
								Escribir "Solo quedan: " cant_pasajes_disponibles_mdz 
								Escribir "Vuelva a ingresar la cantidad de pasajes a comprar"
								Leer cant_pasajes_mendoza
							FinMientras
							
							solicitar_datos_pasajeros(vuelo_Mendoza, cant_pasajes_mendoza, contador_mendoza)
							
							mostrar "Ruta: Mar Del Plata - Mendoza"
							mostrar_datos_pasajeros(vuelo_Mendoza, cant_pasajes_mendoza, contador_mendoza, opcion_venta)
							
						FinSi
						
					De Otro Modo:
						
				Fin Segun
				
			"2":
				
			"3":
				
			"4":
				
			"5":
				
			De Otro Modo:
				
		Fin Segun
	Mientras Que mayus <> "SALIR"
	
FinProceso


SubProceso solicitar_datos_pasajeros(arreglo, cantidad_pasajes, contador)
	
	Para m = contador Hasta (contador + cantidad_pasajes)-1 Hacer
		
		escribir "ingrese su nombre y apellido"
		leer arreglo[m,0]
		escribir "ingrese su dni"
		leer arreglo[m,1]
		escribir "ingrese su número de teléfono"
		leer arreglo[m,2]
		Escribir "Desea que su equipaje sea llevado en la bodega? Si || si || No || no"
		Leer arreglo[m,3] 
		si arreglo[m,3] == "Si" o arreglo[m,3] == "si" Entonces
			arreglo[m,3] ="Verdadero"
		SiNo
			arreglo[m,3] ="Falso"
		FinSi
		Escribir "ingrese su número de pasajero"
		leer arreglo[m,4]
	FinPara
	
FinSubProceso

SubProceso mostrar_datos_pasajeros(arreglo, cantidad_pasajes, contador, opcion_vuelo)
	Para m = contador Hasta (contador + cantidad_pasajes)-1 Hacer
		
		Mostrar "Nombre y apellido: ", arreglo[m,0]
		mostrar "DNI: ", arreglo[m,1]
		Mostrar "número de teléfono: ", arreglo[m,2]
		Mostrar "equipaje en bodega: ", arreglo[m,3]
		Mostrar "número de pasajero: ", arreglo[m,4]
		contador = contador+1
		arreglo[m,6] = ConvertirATexto(contador)
		Mostrar "asiento: ", arreglo[m,6]
		si opcion_vuelo = 4 Entonces
			si contador <= 10 Entonces
				arreglo[m,5] = ConvertirATexto(95000)
			SiNo
				si contador > 10 y contador <= 40 Entonces
					arreglo[m,5] = ConvertirATexto(95000*1.15)
				SiNo
					arreglo[m,5] = ConvertirATexto(125000)
				FinSi
			FinSi
		SiNo
			si opcion_vuelo = 3 Entonces
				
			FinSi
		FinSi
		
		
		si arreglo[m,3] = "Verdadero" Entonces
			arreglo[m,5] =ConvertirATexto(ConvertirANumero(arreglo[m,5])*1.05)
		FinSi
		Mostrar "Costo del pasaje: $", arreglo[m,5]
		Escribir ""
		
	FinPara
FinSubProceso
