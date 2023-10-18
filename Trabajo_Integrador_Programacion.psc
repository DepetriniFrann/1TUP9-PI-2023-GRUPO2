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
							
							
							
							Para i=0 Hasta cant_pasajes_brc-1 Hacer
								
								Escribir "Ingrese su Nombre y Apellido"
								Leer vuelo_Brc[i,0]
								Escribir "Ingrese su DNI"
								Leer vuelo_Brc[i,1]
								Escribir "Ingrese su Telefono"
								Leer vuelo_Brc[i,2]
								Escribir "Ingrese su Equipaje en Bodega: Si || si || No || no"
								Leer vuelo_Brc[i,3]
								//Mientras !(vuelo_Brc[i,3] == "Si" o vuelo_Brc[i,3] == "si" o vuelo_Brc[i,3] == "No" o vuelo_Brc[i,3] == "no") Hacer
								//	Escribir "Las opciones solo pueden ser Si || si || No || no"
								//	Leer vuelo_Brc[i,3]
								//FinMientras
								Si vuelo_Brc[i,3] == "si" o  vuelo_Brc[i,3] == "Si" Entonces
									vuelo_Brc[i,3] = "Verdadero"
								SiNo
									vuelo_Brc[i,3] = "Falso"
								Fin Si
								Escribir "Ingrese su Numero de Pasajero"
								Leer vuelo_Brc[i,4]
							FinPara
							
							Para i=0 Hasta cant_pasajes_brc-1 Hacer
								
								Mostrar "Ruta: Buenos Aires - Bariloche"
								Mostrar "Nombre y Apellido: ", vuelo_Brc[i,0]
								Mostrar "DNI: ", vuelo_Brc[i,1]
								Mostrar "Telefono: ", vuelo_Brc[i,2]
								Mostrar "Equipaje en Bodega: ", vuelo_Brc[i,3]
								Mostrar "Numero de Pasajero: ", vuelo_Brc[i,4]
								contador_brc = contador_brc+1
								vuelo_Brc[i,6] = ConvertirATexto(contador_brc)
								Mostrar "Asiento: ", vuelo_Brc[i,6]
								
								si contador_brc <= 20 Entonces
									vuelo_Brc[i,5] = ConvertirATexto(150000)
									
								SiNo
									si contador_brc > 20 y contador_brc <= 60 Entonces
										vuelo_Brc[i,5] = ConvertirATexto(150000*1.1)
									SiNo
										vuelo_Brc[i,5] = ConvertirATexto(180000)
									FinSi
								FinSi	
								
								si vuelo_Brc[i,3] == "Verdadero" Entonces
									vuelo_Brc[i,5] = ConvertirATexto(ConvertirANumero(vuelo_Brc[i,5])* 1.05)
								FinSi
								Mostrar "Costo Pasaje: $", vuelo_Brc[i,5]
								Escribir ""
								
							FinPara
							
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
							
							Para s=0 Hasta cant_pasajes_salta-1 Hacer
								
								Escribir "Ingrese su Nombre y Apellido"
								Leer vuelo_Salta[s,0]
								Escribir "Ingrese su DNI"
								Leer vuelo_Salta[s,1]
								Escribir "Ingrese su Telefono"
								Leer vuelo_Salta[s,2]
								Escribir "Ingrese su Equipaje en Bodega: Si || si || No || no"
								Leer vuelo_Salta[s,3]
								//Mientras !(vuelo_Salta[s,3] == "Si" o vuelo_Salta[s,3] == "si" o vuelo_Salta[s,3] == "No" o vuelo_Salta[s,3] == "no") Hacer
								//	Escribir "Las opciones solo pueden ser Si || si || No || no"
								//	Leer vuelo_Salta[s,3]
								//FinMientras
								Si vuelo_Salta[s,3] == "si" o vuelo_Salta[s,3] == "Si"  Entonces
									vuelo_Salta[s,3] = "Verdadero"
								SiNo
									vuelo_Salta[s,3] = "Falso"
								Fin Si
								Escribir "Ingrese su Numero de Pasajero"
								Leer vuelo_Salta[s,4]
							FinPara
							
							Para s=0 Hasta cant_pasajes_salta-1 Hacer
								
								Mostrar "Ruta: Buenos Aires - Salta"
								Mostrar "Nombre y Apellido: ", vuelo_Salta[s,0]
								Mostrar "DNI: ", vuelo_Salta[s,1]
								Mostrar "Telefono: ", vuelo_Salta[s,2]
								Mostrar "Equipaje en Bodega: ", vuelo_Salta[s,3]
								Mostrar "Numero de Pasajero: ", vuelo_Salta[s,4]
								contador_salta = contador_salta+1
								vuelo_Salta[s,6] = ConvertirATexto(contador_salta)
								Mostrar "Asiento: ", vuelo_Salta[s,6]
								
								si contador_salta <= 20 Entonces
									vuelo_Salta[s,5] = ConvertirATexto(120000)
									
								SiNo
									si contador_salta > 20 y contador_salta <= 60 Entonces
										vuelo_Salta[s,5] = ConvertirATexto(120000*1.1)
									SiNo
										vuelo_Salta[s,5] = ConvertirATexto(150000)
									FinSi
								FinSi	
								
								si vuelo_Salta[s,3] == "Verdadero" Entonces
									vuelo_Salta[s,5] = ConvertirATexto(ConvertirANumero(vuelo_Salta[s,5])* 1.05)
								FinSi
								Mostrar "Costo Pasaje: $", vuelo_Salta[s,5]
								Escribir ""
								
							FinPara
							
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
							
							Para b=0 Hasta cant_pasajes_bsas-1 Hacer
								
								Escribir "Ingrese su Nombre y Apellido"
								Leer vuelo_Bsas[b,0]
								Escribir "Ingrese su DNI"
								Leer vuelo_Bsas[b,1]
								Escribir "Ingrese su Telefono"
								Leer vuelo_Bsas[b,2]
								Escribir "Ingrese su Equipaje en Bodega: Si || si || No || no"
								Leer vuelo_Bsas[b,3]
								//Mientras !(vuelo_Bsas[b,3] == "Si" o vuelo_Bsas[b,3] == "si" o vuelo_Bsas[b,3] == "No" o vuelo_Bsas[b,3] == "no") Hacer
								//	Escribir "Las opciones solo pueden ser Si || si || No || no"
								//	Leer vuelo_Bsas[b,3]
								//FinMientras
								Si vuelo_Bsas[b,3] == "si" o vuelo_Bsas[b,3] == "Si"  Entonces
									vuelo_Bsas[b,3] = "Verdadero"
								SiNo
									vuelo_Bsas[b,3] = "Falso"
								Fin Si
								Escribir "Ingrese su Numero de Pasajero"
								Leer vuelo_Bsas[b,4]
							FinPara
							
							Para b=0 Hasta cant_pasajes_bsas-1 Hacer
								
								Mostrar "Ruta: Rosario - Buenos Aires"
								Mostrar "Nombre y Apellido: ", vuelo_Bsas[b,0]
								Mostrar "DNI: ", vuelo_Bsas[b,1]
								Mostrar "Telefono: ", vuelo_Bsas[b,2]
								Mostrar "Equipaje en Bodega: ", vuelo_Bsas[b,3]
								Mostrar "Numero de Pasajero: ", vuelo_Bsas[b,4]
								contador_bsas = contador_bsas+1
								vuelo_Bsas[b,6] = ConvertirATexto(contador_bsas)
								Mostrar "Asiento: ", vuelo_Bsas[b,6]
								
								si contador_bsas <= 10 Entonces
									vuelo_Bsas[b,5] = ConvertirATexto(70000)
									
								SiNo
									si contador_bsas > 10 y contador_bsas <= 40 Entonces
										vuelo_Bsas[b,5] = ConvertirATexto(70000*1.15)
									SiNo
										vuelo_Bsas[b,5] = ConvertirATexto(95000)
									FinSi
								FinSi	
								
								si vuelo_Bsas[b,3] == "Verdadero" Entonces
									vuelo_Bsas[b,5] = ConvertirATexto(ConvertirANumero(vuelo_Bsas[b,5])* 1.05)
								FinSi
								Mostrar "Costo Pasaje: $", vuelo_Bsas[b,5]
								Escribir ""
								
							FinPara
							
						FinSi
						
					4:
						Escribir "Su seleccion fue Mar Del Plata - Mendoza"
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
