Proceso sin_titulo
	Definir opcion_, opcion_venta, contador Como Entero
	Definir nombre_apellido, equipaje_en_bodega Como Caracter
	Definir dni, telefono, numero_pasajero, cant_pasajes, cant_pasajes_disponibles Como Entero
	Definir costo_pasaje Como Real
	Definir vuelo_Brc, vuelo_Salta, vuelo_BsAs, vuelo_Mendoza Como Caracter
	Dimension vuelo_Brc[120,7]
	cant_pasajes_disponibles = 120
	//hola
	Escribir "Bienvenidos a nuestro Sistema de venta de pasajes aéreos"
	Repetir
		
		Escribir "Por favor ingrese una opción:"
		Escribir "1. Venta pasaje"
		Escribir "2. Buscar pasaje vendido"
		Escribir "3. Buscar pasajero"
		Escribir "4. Ordenar y mostrar lista pasajeros"
		Escribir "5. Listado/s"
		Leer opcion_
		
		Segun opcion_ Hacer
			1:	
				Escribir "Seleccione a donde desea viajar:"
				si contador <> 120
					Escribir "1. Buenos Aires - Bariloche" //120
				FinSi
				Escribir "2. Bueno Aires - Salta"      //120
				Escribir "3. Rosario - Buenos Aires"   //80
				Escribir "4. Mar Del Plata - Mendoza"  //80
				Leer opcion_venta
				
				Segun opcion_venta Hacer
					1:	si contador == 120 Entonces
							Escribir "Opcion invalida, no quedan mas pasajes"
						SiNo
							cant_pasajes_disponibles = cant_pasajes_disponibles - contador
							Escribir "Su seleccion fue Buenos Aires - Bariloche"
							
							Escribir "Ingrese la cantidad de vuelos que va a comprar quedan disponibles: (", cant_pasajes_disponibles ")"
							Leer cant_pasajes
							
							Mientras (cant_pasajes + ConvertirANumero(vuelo_Brc[i,6])) > 120 Hacer
								Escribir "Ha superado la cantidad de pasajes disponible"
								Escribir "Solo quedan: " cant_pasajes_disponibles
								Escribir "Vuelva a ingresar la cantidad de vuelos a comprar"
								Leer cant_pasajes
							FinMientras
							
							Para i=0 Hasta cant_pasajes-1 Hacer
								
								Escribir "Ingrese su Nombre y Apellido"
								Leer vuelo_Brc[i,0]
								Escribir "Ingrese su DNI"
								Leer vuelo_Brc[i,1]
								Escribir "Ingrese su Telefono"
								Leer vuelo_Brc[i,2]
								Escribir "Ingrese su Equipaje en Bodega: si || no"
								Leer vuelo_Brc[i,3]
								Si vuelo_Brc[i,3] == "si" Entonces
									vuelo_Brc[i,3] = "Verdadero"
								SiNo
									vuelo_Brc[i,3] = "Falso"
								Fin Si
								Escribir "Ingrese su Numero de Pasajero"
								Leer vuelo_Brc[i,4]
							FinPara
							
							Para i=0 Hasta cant_pasajes-1 Hacer
								
								Mostrar "Ruta: Buenos Aires - Bariloche"
								Mostrar "Nombre y Apellido: ", vuelo_Brc[i,0]
								Mostrar "DNI: ", vuelo_Brc[i,1]
								Mostrar "Telefono: ", vuelo_Brc[i,2]
								Mostrar "Equipaje en Bodega: ", vuelo_Brc[i,3]
								Mostrar "Numero de Pasajero: ", vuelo_Brc[i,4]
								contador = contador+1
								vuelo_Brc[i,6] = ConvertirATexto(contador)
								Mostrar "Asiento: ", vuelo_Brc[i,6]
								
								si ConvertirANumero(vuelo_Brc[i,6]) <= 20 Entonces
									vuelo_Brc[i,5] = ConvertirATexto(150000)
									
								SiNo
									si ConvertirANumero(vuelo_Brc[i,6]) > 20 y contador <= 60 Entonces
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
						Escribir "Su seleccion fue Bueno Aires - Salta"
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
