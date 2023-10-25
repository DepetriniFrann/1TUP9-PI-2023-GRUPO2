Proceso sin_titulo
	Definir datos_Cargados Como Caracter
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
	//CARGA LA CATEGORIA DE CADA DATO
	Dimension datos_Cargados[7]
	datos_Cargados[0] = "Nombre y Apellido: "
	datos_Cargados[1] = "DNI: "
	datos_Cargados[2] = "Telefono: "
	datos_Cargados[3] = "Equipaje en Bodego: "
	datos_Cargados[4] = "Numero de Pasajero: "
	datos_Cargados[5] = "Precio: $"
	datos_Cargados[6] = "Asiento: "
	
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
			"1":           //VENTA DE PASAJES
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
					
					1:      //VUELO A BARILOCHE
						
						si contador_brc == 120 Entonces
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
						
						
						
					2:           //VUELO A SALTA
						
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
						
						
					3:       //VUELO A BUENOS AIRES
						
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
						
					4:          //VUELO A MENDOZA
						
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
				
			"2":                //BUSQUEDA DE PASAJERO POR ASIENTO
				
				Escribir "Ingrese en que vuelo quiere buscar al pasajero"
				Escribir "1. Buenos Aires - Bariloche (", contador_brc, ")"    //120
				Escribir "2. Bueno Aires - Salta (", contador_salta, ")"       //120
				Escribir "3. Rosario - Buenos Aires (", contador_bsas, ")"     //80
				Escribir "4. Mar Del Plata - Mendoza (", contador_mendoza, ")" //80
				Leer opcion_venta
				
				Segun opcion_venta Hacer
					1:
						Escribir "Su seleccion fue Buenos Aires - Bariloche"
						mostrar_pasajero_buscado(vuelo_Brc, opcion_venta, datos_Cargados)
						
					2:
						Escribir "Su seleccion fue Bueno Aires - Salta"
						mostrar_pasajero_buscado(vuelo_Salta, opcion_venta, datos_Cargados)
					3:
						Escribir "Su seleccion fue Rosario - Buenos Aires"
						mostrar_pasajero_buscado(vuelo_Bsas, opcion_venta, datos_Cargados)
					4:
						Escribir "Su seleccion fue Mar Del Plata - Mendoza"
						mostrar_pasajero_buscado(vuelo_Mendoza, opcion_venta, datos_Cargados)
				Fin Segun
				
				
				
			"3":         //BUSQUEDA DE PASAJERO POR NOMBRE Y APELLIDO
				
				Escribir "Ingrese en que vuelo quiere buscar al pasajero"
				Escribir "1. Buenos Aires - Bariloche (", contador_brc, ")"    //120
				Escribir "2. Bueno Aires - Salta (", contador_salta, ")"       //120
				Escribir "3. Rosario - Buenos Aires (", contador_bsas, ")"     //80
				Escribir "4. Mar Del Plata - Mendoza (", contador_mendoza, ")" //80
				Leer opcion_venta
				
				Segun opcion_venta Hacer
					1:
						Escribir "Su seleccion fue Buenos Aires - Bariloche"
						ordenamiento_lista(vuelo_Brc,contador_brc)
						
						mostrar_pasajero_por_nombre(vuelo_Brc, contador_brc, datos_Cargados, opcion_venta)
					2:
						Escribir "Su seleccion fue Bueno Aires - Salta"
						ordenamiento_lista(vuelo_Salta,contador_salta)
						
						mostrar_pasajero_por_nombre(vuelo_Salta, contador_salta, datos_Cargados, opcion_venta)
					3:
						Escribir "Su seleccion fue Rosario - Buenos Aires"
						ordenamiento_lista(vuelo_Bsas,contador_bsas)
						
						mostrar_pasajero_por_nombre(vuelo_Bsas, contador_bsas, datos_Cargados, opcion_venta)
					4:
						Escribir "Su seleccion fue Mar Del Plata - Mendoza"
						ordenamiento_lista(vuelo_Mendoza,contador_mendoza)
						
						mostrar_pasajero_por_nombre(vuelo_Mendoza, contador_mendoza, datos_Cargados, opcion_venta)
				Fin Segun
			"4":
				
			"5":
				
			De Otro Modo:
				
		Fin Segun
	Mientras Que mayus <> "SALIR"
	
FinProceso










//INGRESA LOS DATOS DEL PASAJERO

SubProceso solicitar_datos_pasajeros(arreglo Por Referencia, cantidad_pasajes Por Referencia, contador Por Referencia)
	
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


//MUESTRA LOS DATOS DEL PASAJERO INGRESADO

SubProceso mostrar_datos_pasajeros(arreglo, cantidad_pasajes, contador Por Referencia, opcion_vuelo)
	Definir costo, costoFinal, recargo Como Real
	
	Para m = contador Hasta (contador + cantidad_pasajes)-1 Hacer
		contador = contador+1
		Mostrar "Nombre y apellido: ", arreglo[m,0]
		mostrar "DNI: ", arreglo[m,1]
		Mostrar "número de teléfono: ", arreglo[m,2]
		Mostrar "equipaje en bodega: ", arreglo[m,3]
		Mostrar "número de pasajero: ", arreglo[m,4]
		
		arreglo[m,6] = ConvertirATexto(contador)
		Mostrar "asiento: ", arreglo[m,6]
		
		Segun opcion_vuelo Hacer
			1: costo = 150000
				costoFinal = 180000
				recargo = 1.1
				pasajes = 20
				pasajesMax = 60
			2:costo = 120000
				costoFinal = 150000
				recargo = 1.1
				pasajes = 20
				pasajesMax = 60
			3:costo = 70000
				costoFinal = 95000
				recargo= 1.15
				pasajes = 10
				pasajesMax = 40
			4:costo = 95000
				costoFinal = 125000
				recargo= 1.15
				pasajes = 10
				pasajesMax = 40
		FinSegun
		si contador <= pasajes Entonces
			arreglo[m,5] = ConvertirATexto(costo)
		SiNo
			si contador > pasajes y contador <= pasajesMax Entonces
				arreglo[m,5] = ConvertirATexto(costo*recargo)
			SiNo
				arreglo[m,5] = ConvertirATexto(costoFinal)
			FinSi
		FinSi
		
		si arreglo[m,3] = "Verdadero" Entonces
			arreglo[m,5] =ConvertirATexto(ConvertirANumero(arreglo[m,5])*1.05)
		FinSi
		Mostrar "Costo del pasaje: $", arreglo[m,5]
		Escribir ""
		
	FinPara
FinSubProceso


//BUSQUEDA DEL PASAJERO POR EL NUMERO DEL ASIENTO

SubProceso mostrar_pasajero_buscado(arreglo, opcion_venta, datos_Cargados)
	Escribir "Ingrese el numero de asiento que se le otorgo"
	
	Segun opcion_venta Hacer
		1:
			busqueda_limite = 120
			ruta = "Ruta: Buenos Aires - Bariloche"
		2:
			busqueda_limite = 120
			ruta = "Ruta: Bueno Aires - Salta"
		3:
			busqueda_limite = 80
			ruta = "Ruta: Rosario - Buenos Aires"
		4:
			busqueda_limite = 80
			ruta = "Ruta: Mar Del Plata - Mendoza"
	Fin Segun
	
	Repetir
		Leer buscar_asiento
		si buscar_asiento > busqueda_limite Entonces
			Escribir "Se paso del limite maximo de busqueda"
		FinSi
	Hasta Que buscar_asiento <= busqueda_limite
	
	elementoEncontrado = Falso;
	Mientras b <= busqueda_limite -1 y no elementoEncontrado Hacer
		
		si arreglo[b,6] == ConvertirATexto(buscar_asiento) Entonces
			
			elementoEncontrado = Verdadero
			
			Mostrar ruta
			Para a = 0 Hasta 6 Hacer
				
				Mostrar Concatenar(datos_Cargados[a],arreglo[b,a])
				
			FinPara
			
		FinSi
		b = b + 1
		
	FinMientras
	
	Si no elementoEncontrado Entonces
		Escribir "No se encontro el pasajero";
	FinSi
	
FinSubProceso


//ORDENA LA LISTA PARA HACER LA BUSQUEDA BINARIA

SubProceso ordenamiento_lista(arreglo Por Referencia, contador)
	Definir aux Como Caracter
	
	Para i = 0 Hasta contador-2 Hacer
		
		Para j = i+1 Hasta contador-1 Hacer
			
			si Mayusculas(arreglo[i,0]) > Mayusculas(arreglo[j,0]) Entonces
				Para k = 0 Hasta 6 Hacer
					
					aux = arreglo[i,k]
					arreglo[i,k] = arreglo[j,k]
					arreglo[j,k] = aux
				FinPara
				
			FinSi
			
		FinPara
		
	FinPara
	
FinSubProceso


//BUSCAR PASAJERO POR NOMBRE Y APELLIDO

SubProceso mostrar_pasajero_por_nombre(arreglo, contador, datos_Cargados, opcion_venta)
	Definir centro, buscar_pasajero_nombre, es_encontrado Como Caracter
	Definir inferior, superior Como Entero
	
	Segun opcion_venta Hacer
		1:
			ruta = "Ruta: Buenos Aires - Bariloche"
		2:
			ruta = "Ruta: Bueno Aires - Salta"
		3:
			ruta = "Ruta: Rosario - Buenos Aires"
		4:
			ruta = "Ruta: Mar Del Plata - Mendoza"
	Fin Segun
	
	Escribir "Ingrese el Nombre y Apellido del pasajero que quiere buscar"
	Leer buscar_pasajero_nombre
	es_encontrado = "Falso"
	inferior = 0
	superior = contador-1
	
	Repetir
		
		centro = ConvertirATexto(trunc((superior + inferior)/2))
		
		si Mayusculas(arreglo[centro, 0]) == Mayusculas(buscar_pasajero_nombre) Entonces
			es_encontrado = "Verdadero"
			Mostrar ruta
			Para a = 0 Hasta 6 Hacer
				
				Mostrar Concatenar(datos_Cargados[a],arreglo[centro,a])
				
			FinPara
		SiNo
			si Mayusculas(arreglo[centro, 0]) < Mayusculas(buscar_pasajero_nombre) Entonces
				
				inferior = ConvertirANumero(centro) + 1
				
			SiNo
				superior = ConvertirANumero(centro) - 1
				
			FinSi
			
		FinSi
		
		si inferior > superior Entonces
			Escribir "El pasajero no existe"
		FinSi
		
	Hasta Que es_encontrado == "Verdadero" o inferior > superior
	
	
FinSubProceso
