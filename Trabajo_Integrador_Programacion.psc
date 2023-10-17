Proceso sin_titulo
	Definir opcion_, opcion_venta, contador_bariloche Como Entero
	Definir nombre_apellido, equipaje_en_bodega Como Caracter
	Definir dni, telefono, numero_pasajero, cant_pasajes_brc, cant_pasajes_disponibles_brc  Como Entero
	Definir cant_pasajes_salta, cant_pasajes_disponibles_salta, contador_salta Como Entero
	Definir costo_pasaje Como Real
	Definir vuelo_Brc, vuelo_Salta, vuelo_BsAs, vuelo_Mendoza Como Caracter
	Dimension vuelo_Brc[120,7]
	Dimension vuelo_Salta[120,7]
	
	
	Escribir "Bienvenidos a nuestro Sistema de venta de pasajes a�reos"
	Repetir
		
		Escribir "Por favor ingrese una opci�n:"
		Escribir "1. Venta pasaje"
		Escribir "2. Buscar pasaje vendido"
		Escribir "3. Buscar pasajero"
		Escribir "4. Ordenar y mostrar lista pasajeros"
		Escribir "5. Listado/s"
		Leer opcion_
		
		Segun opcion_ Hacer
			1:	
				Escribir "Seleccione a donde desea viajar:"
				si contador_bariloche <> 120
					Escribir "1. Buenos Aires - Bariloche" //120
				FinSi
				si contador_salta <> 120 Entonces
					Escribir "2. Bueno Aires - Salta"      //120
				FinSi
				Escribir "3. Rosario - Buenos Aires"   //80
				Escribir "4. Mar Del Plata - Mendoza"  //80
				Leer opcion_venta
				
				Segun opcion_venta Hacer
					1:	si contador_brc == 120 Entonces
							Escribir "Opcion invalida, no quedan mas pasajes"
						SiNo
							cant_pasajes_disponibles_brc = 120
							cant_pasajes_disponibles_brc = cant_pasajes_disponibles_brc  - contador_brc
							Escribir "Su seleccion fue Buenos Aires - Bariloche"
							
							Escribir "Ingrese la cantidad de vuelos que va a comprar quedan disponibles: (", cant_pasajes_disponibles_brc  ")"
							
							Repetir
								Leer cant_pasajes_brc
								si cant_pasajes_brc > cant_pasajes_disponibles_brc Entonces
										Escribir "Ha superado la cantidad de pasajes disponible"
										Escribir "Solo quedan: " cant_pasajes_disponibles_brc 
										Escribir "Vuelva a ingresar la cantidad de vuelos a comprar"
								FinSi
							Mientras Que cant_pasajes_brc > cant_pasajes_disponibles_brc
							
							
							
							
							//Mientras (cant_pasajes_brc + contador_brc) > 120 o cant_pasajes_brc > 120 Hacer
							//	Escribir "Ha superado la cantidad de pasajes disponible"
							//	Escribir "Solo quedan: " cant_pasajes_disponibles_brc 
							//	Escribir "Vuelva a ingresar la cantidad de vuelos a comprar"
							//	Leer cant_pasajes
							//FinMientras
							
							
							
							Para i=0 Hasta cant_pasajes_brc-1 Hacer
								
								Escribir "Ingrese su Nombre y Apellido"
								Leer vuelo_Brc[i,0]
								Escribir "Ingrese su DNI"
								Leer vuelo_Brc[i,1]
								Escribir "Ingrese su Telefono"
								Leer vuelo_Brc[i,2]
								Escribir "Ingrese su Equipaje en Bodega: Si || si || No || no"
								Leer vuelo_Brc[i,3]
								Mientras !(vuelo_Brc[i,3] == "Si" o vuelo_Brc[i,3] == "si" o vuelo_Brc[i,3] == "No" o vuelo_Brc[i,3] == "no") Hacer
									Escribir "Las opciones solo pueden ser Si || si || No || no"
									Leer vuelo_Brc[i,3]
								FinMientras
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
							cant_pasajes_disponibles_salta = 120
							cant_pasajes_disponibles_salta = cant_pasajes_disponibles_salta - contador_salta
							Escribir "Su seleccion fue Bueno Aires - Salta"
							
							Escribir "Ingrese la cantidad de vuelos que va a comprar quedan disponibles: (", cant_pasajes_disponibles_salta ")"
							
							
							
							Repetir
								Leer cant_pasajes_salta
								si cant_pasajes_salta > cant_pasajes_disponibles_salta Entonces
									Escribir "Ha superado la cantidad de pasajes disponible"
									Escribir "Solo quedan: " cant_pasajes_disponibles_salta 
									Escribir "Vuelva a ingresar la cantidad de vuelos a comprar"
								FinSi
							Mientras Que cant_pasajes_salta > cant_pasajes_disponibles_salta
							
							
							//Mientras (cant_pasajes_salta + contador_salta) > 120 o cant_pasajes_salta > 120  Hacer
							//	Escribir "Ha superado la cantidad de pasajes disponible"
							//	Escribir "Solo quedan: " cant_pasajes_disponibles_salta
							//	Escribir "Vuelva a ingresar la cantidad de vuelos a comprar"
							//	Leer cant_pasajes_salta
							//FinMientras
							
							Para s=0 Hasta cant_pasajes_salta-1 Hacer
								
								Escribir "Ingrese su Nombre y Apellido"
								Leer vuelo_Salta[s,0]
								Escribir "Ingrese su DNI"
								Leer vuelo_Salta[s,1]
								Escribir "Ingrese su Telefono"
								Leer vuelo_Salta[s,2]
								Escribir "Ingrese su Equipaje en Bodega: Si || si || No || no"
								Leer vuelo_Salta[s,3]
								Mientras !(vuelo_Salta[s,3] == "Si" o vuelo_Salta[s,3] == "si" o vuelo_Salta[s,3] == "No" o vuelo_Salta[s,3] == "no") Hacer
									Escribir "Las opciones solo pueden ser Si || si || No || no"
									Leer vuelo_Salta[s,3]
								FinMientras
								Si vuelo_Salta[s,3] == "si" o vuelo_Salta[s,3] == "Si"  Entonces
									vuelo_Salta[s,3] = "Verdadero"
								SiNo
									vuelo_Salta[s,3] = "Falso"
								Fin Si
								Escribir "Ingrese su Numero de Pasajero"
								Leer vuelo_Salta[s,4]
							FinPara
							
							Para s=0 Hasta cant_pasajes_salta-1 Hacer
								
								Mostrar "Ruta: Buenos Aires - Bariloche"
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
						Escribir "Su seleccion fue Rosario - Buenos Aires"
					4:
						Escribir "Su seleccion fue Mar Del Plata - Mendoza"
					De Otro Modo:
						
				Fin Segun
				
			2:
				
			3:
				
			4:
				
			5:
				
			De Otro Modo:
				
		Fin Segun
Hasta Que opcion_ = 5
FinProceso
