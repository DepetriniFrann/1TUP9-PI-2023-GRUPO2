Proceso sin_titulo
	Definir datos_Cargados Como Caracter
	Definir nombre_apellido, equipaje_en_bodega, opcion_, opcion_ordenamiento, opcion_listado Como Caracter
	Definir dni, telefono, numero_pasajero, opcion_venta, totalPasajesPrimarios, totalPasajesSecundarios Como Entero
	totalPasajesPrimarios= 120
	totalPasajesSecundarios= 80
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
				Escribir "Opción inválida"
				Escribir "Ingrese un número del 1 al 5 o salir"
			FinSi
		Hasta Que opcion_ = "1" o opcion_ = "2" o opcion_ = "3" o opcion_ = "4" o opcion_ = "5" o mayus = "SALIR"
		Segun opcion_ Hacer
			"1":           //VENTA DE PASAJES
				si contador_brc + contador_salta + contador_bsas + contador_mendoza <> 400 Entonces
					
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
					validar_menu(opcion_venta)
					Segun opcion_venta Hacer
						1:      //VUELO A BARILOCHE
							si contador_brc == 120 Entonces
								Escribir "Opción inválida, no quedan mas pasajes"
							SiNo
								cant_pasajes_disponibles_brc = 120  - contador_brc
								Escribir "Su seleccion fue Buenos Aires - Bariloche"
								Escribir "Ingrese la cantidad de vuelos que va a comprar (Quedan disponibles: ", cant_pasajes_disponibles_brc  ")"
								Leer cant_pasajes_brc
								validacion_pasajes(cant_pasajes_brc, contador_brc, cant_pasajes_disponibles_brc, totalPasajesPrimarios ) 
								solicitar_datos_pasajeros(vuelo_Brc, cant_pasajes_brc, contador_brc,opcion_venta)
								Mostrar "Ruta: Buenos Aires - Bariloche"
								mostrar_datos_pasajeros(vuelo_Brc, cant_pasajes_brc, contador_brc)
							FinSi
						2:           //VUELO A SALTA
							si contador_salta == 120 Entonces
								Escribir "Opción inválida, no quedan mas pasajes"
							SiNo
								cant_pasajes_disponibles_salta = 120 - contador_salta
								Escribir "Su seleccion fue Bueno Aires - Salta"
								Escribir "Ingrese la cantidad de vuelos que va a comprar quedan disponibles: (", cant_pasajes_disponibles_salta ")"
								Leer cant_pasajes_salta
								validacion_pasajes(cant_pasajes_salta, contador_salta, cant_pasajes_disponibles_salta, totalPasajesPrimarios  ) 
								solicitar_datos_pasajeros(vuelo_Salta, cant_pasajes_salta, contador_salta,opcion_venta)
								Mostrar "Ruta: Buenos Aires - Salta"
								mostrar_datos_pasajeros(vuelo_Salta, cant_pasajes_salta, contador_salta)
							FinSi
						3:       //VUELO A BUENOS AIRES
							si contador_bsas == 80 Entonces
								Escribir "Opción inválida, no quedan mas pasajes"
							SiNo
								cant_pasajes_disponibles_bsas = 80 - contador_bsas
								Escribir "Su seleccion fue Rosario - Buenos Aires"
								Escribir "Ingrese la cantidad de vuelos que va a comprar quedan disponibles: (", cant_pasajes_disponibles_bsas ")"
								Leer cant_pasajes_bsas
								validacion_pasajes(cant_pasajes_bsas, contador_bsas, cant_pasajes_disponibles_bsas,totalPasajesSecundarios) 
								solicitar_datos_pasajeros(vuelo_Bsas, cant_pasajes_bsas, contador_bsas,opcion_venta)
								Mostrar "Ruta: Rosario - Buenos Aires"
								mostrar_datos_pasajeros(vuelo_Bsas, cant_pasajes_bsas, contador_bsas)
							FinSi
						4:          //VUELO A MENDOZA
							si contador_mendoza == 80 Entonces
								escribir "opción inválida, no quedan mas pasajes "
							SiNo
								cant_pasajes_disponibles_mdz = 80 - contador_mendoza
								Escribir "Su seleccion fue Mar Del Plata - Mendoza"
								Escribir "ingrese la cantidad de vuelos que va a comprar. Quedan disponibles: (" cant_pasajes_disponibles_mdz ")"
								Leer cant_pasajes_mendoza
								validacion_pasajes(cant_pasajes_mendoza, contador_mendoza, cant_pasajes_disponibles_mdz,totalPasajesSecundarios) 
								solicitar_datos_pasajeros(vuelo_Mendoza, cant_pasajes_mendoza, contador_mendoza,opcion_venta)
								mostrar "Ruta: Mar Del Plata - Mendoza"
								mostrar_datos_pasajeros(vuelo_Mendoza, cant_pasajes_mendoza, contador_mendoza)
							FinSi
						De Otro Modo:
					Fin Segun
				SiNo
					Escribir "No hay mas pasajes"
				FinSi
			"2":                //BUSQUEDA DE PASAJERO POR ASIENTO
				Si contador_brc + contador_salta + contador_bsas + contador_mendoza <> 0 Entonces
					validacion_vuelo(contador_brc, contador_salta, contador_bsas, contador_mendoza)
					validar_menu(opcion_venta)
					sub_segun(opcion_venta, opcion_,  vuelo_Brc, contador_brc, vuelo_Salta , contador_salta, vuelo_Bsas, contador_bsas,vuelo_Mendoza, contador_mendoza, datos_Cargados, opcion_ordenamiento)
				SiNo
					Escribir "No hay ningún vuelo vendido"
				FinSi
			"3":         //BUSQUEDA DE PASAJERO POR NOMBRE Y APELLIDO
				Si contador_brc + contador_salta + contador_bsas + contador_mendoza <> 0 Entonces
					validacion_vuelo(contador_brc, contador_salta, contador_bsas, contador_mendoza)
					validar_menu(opcion_venta)
					sub_segun(opcion_venta, opcion_,  vuelo_Brc, contador_brc, vuelo_Salta , contador_salta, vuelo_Bsas, contador_bsas,vuelo_Mendoza, contador_mendoza, datos_Cargados, opcion_ordenamiento)
				SiNo
					Escribir "No hay ningún vuelo vendido"
				FinSi
			"4":
				Si contador_brc + contador_salta + contador_bsas + contador_mendoza <> 0 Entonces
					Escribir "Ingrese si quiere ordenar de manera Ascendente o Descendente"
					Escribir "ASC || Ascendente"
					Escribir "DSC || Descendente"
					Repetir
						Leer opcion_ordenamiento
						Si Mayusculas(opcion_ordenamiento) <> "ASC" y Mayusculas(opcion_ordenamiento) <> "DSC" Entonces
							Escribir "Opción Inválida"
							Escribir "Las opciones son: ASC || DSC"
						FinSi
					Hasta Que Mayusculas(opcion_ordenamiento) == "ASC" o Mayusculas(opcion_ordenamiento) == "DSC"
					
					
					validacion_vuelo(contador_brc, contador_salta, contador_bsas, contador_mendoza)
					validar_menu(opcion_venta)
					sub_segun(opcion_venta, opcion_,  vuelo_Brc, contador_brc, vuelo_Salta , contador_salta, vuelo_Bsas, contador_bsas,vuelo_Mendoza, contador_mendoza, datos_Cargados, opcion_ordenamiento)
				SiNo
					Escribir "No hay ningún vuelo vendido"
				FinSi
			"5":
				Si contador_brc + contador_salta + contador_bsas + contador_mendoza <> 0 Entonces
					Escribir "Ingrese una opcion "
					Escribir "A | Cantidad de pasajes vendidos por ruta aérea "
					Escribir "B | Porcentaje por ruta aérea "
					Repetir
						Leer opcion_listado
						Si Mayusculas(opcion_listado) <> "A" y  Mayusculas(opcion_listado) <> "B" Entonces
							Escribir "Opción inválida"
							Escribir "Las opciones son: A || B"
						FinSi
					Hasta Que Mayusculas(opcion_listado) == "A" o  Mayusculas(opcion_listado) == "B"
					Si Mayusculas(opcion_listado) == "A" Entonces
						validacion_vuelo(contador_brc, contador_salta, contador_bsas, contador_mendoza )
						validar_menu(opcion_venta)
						Segun opcion_venta Hacer
							1:
								Escribir "La cantidad de pasajes vendidos de Buenos Aires - Bariloche es de: " contador_brc
							2:
								Escribir "La cantidad de pasajes vendidos de Bueno Aires - Salta es de: " contador_salta
							3:
								Escribir "La cantidad de pasajes vendidos de Rosario - Buenos Aires es de: " contador_bsas
							4:
								Escribir "La cantidad de pasajes vendidos de Mar Del Plata - Mendoza es de: " contador_mendoza
						FinSegun
					SiNo
						validacion_vuelo(contador_brc, contador_salta, contador_bsas, contador_mendoza)
						validar_menu(opcion_venta)
						
						Segun opcion_venta Hacer
							1:
								
								Escribir "El porcentaje de Buenos Aires - Bariloche es de: " ((contador_brc * 100)/120) "%"
							2:
								Escribir "El porcentaje de Bueno Aires - Salta es de: " ((contador_salta * 100)/120) "%"
							3:
								Escribir "El porcentaje de Rosario - Buenos Aires es de: " ((contador_bsas * 100)/80) "%"
							4:
								Escribir "El porcentaje de Mar Del Plata - Mendoza es de: " ((contador_mendoza * 100)/80) "%"
						Fin Segun
					FinSi
				SiNo
					Escribir "No hay ningún vuelo vendido"
				FinSi
			De Otro Modo:
		Fin Segun
	Mientras Que mayus <> "SALIR"
FinProceso
//VALIDACION PASAJES DISPONIBLES
SubProceso validacion_pasajes(cant_pasajes, contador, cant_pasajes_disponibles, total_pasajes) 
	Mientras (cant_pasajes + contador) > total_pasajes o cant_pasajes > total_pasajes o cant_pasajes < 1 o cant_pasajes == 0 Hacer
		Escribir "Ha superado la cantidad de pasajes disponible"
		Escribir "Solo quedan: " cant_pasajes_disponibles
		Escribir "Vuelva a ingresar la cantidad de vuelos a comprar"
		Leer cant_pasajes
	FinMientras
FinSubProceso
//VALIDACION VUELOS
SubProceso validacion_vuelo(contador_brc, contador_salta, contador_bsas, contador_mendoza )
	Escribir "Ingrese la ruta aérea"
	Si contador_brc <> 0  Entonces
		Escribir "1. Buenos Aires - Bariloche "    //120
	FinSi
	Si contador_salta <> 0  Entonces
		Escribir "2. Bueno Aires - Salta "    //120
	FinSi
	Si contador_bsas <> 0  Entonces
		Escribir "3. Rosario - Buenos Aires "     //80   
	FinSi
	Si contador_mendoza <> 0  Entonces
		Escribir "4. Mar Del Plata - Mendoza "    //80
	FinSi
FinSubProceso
//INGRESA LOS DATOS DEL PASAJERO
SubProceso solicitar_datos_pasajeros(arreglo Por Referencia, cantidad_pasajes Por Referencia, contador Por Referencia, opcion_venta)
	Para m = contador Hasta (contador + cantidad_pasajes)-1 Hacer
		escribir "Ingrese su nombre y apellido"
		nombre_valido <- validar_nombre(arreglo[m,0])
		arreglo[m,0] = nombre_valido
		escribir "ingrese su DNI"
		leer arreglo[m,1]
		Mientras ConvertirANumero(arreglo[m,1]) < 1000000 o ConvertirANumero(arreglo[m,1]) > 99999999 Hacer
			Escribir "El dni debe de ser entre 1000000 y 99999999"
			Escribir "Ingrese el dni nuevamente"
			leer arreglo[m,1]
		FinMientras
		escribir "ingrese su número de teléfono"
		validar_num(arreglo[m,2])
		Escribir "Desea que su equipaje sea llevado en la bodega? Si || No"
		Leer arreglo[m,3]
		Mientras Mayusculas(arreglo[m,3]) <> "SI" y Mayusculas(arreglo[m,3]) <> "NO" Hacer
			Escribir "Opcion Inválida"
			Escribir "Las opciones son: Si || No"
			Escribir "Ingrese la opción nuevamente"
			Leer arreglo[m,3]
		FinMientras
		si Mayusculas(arreglo[m,3]) == "SI" Entonces
			arreglo[m,3] ="Verdadero"
		SiNo
			arreglo[m,3] ="Falso"
		FinSi
		Escribir "ingrese su número de pasajero (Debe ser entre 3 y 4 cifras)"
		Repetir
			leer arreglo[m,4]
			Si Longitud(arreglo[m,4]) <= 2 o Longitud(arreglo[m,4]) > 4 o ConvertirANumero(arreglo[m,4]) < 0 Entonces
				Escribir "Opción Inválida"
				Escribir "Recuerda que el número de pasajero debe ser positivo y tener entre 3 y 4 dígitos"
			FinSi
		Hasta Que  Longitud(arreglo[m,4]) > 2 y  Longitud(arreglo[m,4]) <= 4 y ConvertirANumero(arreglo[m,4]) > 0
		Segun opcion_venta Hacer
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
	FinPara
FinSubProceso
//MUESTRA LOS DATOS DEL PASAJERO INGRESADO
SubProceso mostrar_datos_pasajeros(arreglo, cantidad_pasajes, contador Por Referencia)
	Definir costo, costoFinal, recargo Como Real
	
	Para m = contador Hasta (contador + cantidad_pasajes)-1 Hacer
		contador = contador+1
		Mostrar "Nombre y apellido: ", arreglo[m,0]
		mostrar "DNI: ", arreglo[m,1]
		Mostrar "Número de teléfono: ", arreglo[m,2]
		Mostrar "Equipaje en bodega: ", arreglo[m,3]
		Mostrar "Número de pasajero: ", arreglo[m,4]
		arreglo[m,6] = ConvertirATexto(contador)
		Mostrar "Asiento: ", arreglo[m,6]
		Mostrar "Costo del pasaje: $", arreglo[m,5]
		Escribir ""
	FinPara
FinSubProceso
//BUSQUEDA DEL PASAJERO POR EL NUMERO DEL ASIENTO
SubProceso mostrar_pasajero_buscado(arreglo, opcion_venta, datos_Cargados)
	Escribir "Ingrese el número de asiento que se le otorgó"
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
		si buscar_asiento > busqueda_limite o buscar_asiento <= 0 Entonces
			Escribir "Se paso del límite máximo de busqueda"
		FinSi
	Hasta Que buscar_asiento <= busqueda_limite y buscar_asiento > 0
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
		Escribir "No se encontró el pasajero";
	FinSi
FinSubProceso
//ORDENA LA LISTA PARA HACER LA BUSQUEDA BINARIA
SubProceso ordenamiento_lista_ascendente(arreglo Por Referencia, contador)
	Definir aux Como Caracter
	Si contador > 1 Entonces
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
	FinSi
FinSubProceso
//SUBPROCESO SEGUN
SubProceso sub_segun(opcion_venta, opcion_,  vuelo_Brc, contador_brc, vuelo_Salta , contador_salta, vuelo_Bsas, contador_bsas,vuelo_Mendoza, contador_mendoza, datos_Cargados, opcion_ordenamiento)
	Segun opcion_venta Hacer
		1:
			Escribir "Su selección fue Buenos Aires - Bariloche"
			Si opcion_ == "2" Entonces
				si contador_brc == 0 Entonces
					Escribir "No hay pasajes vendidos"
				SiNo
					mostrar_pasajero_buscado(vuelo_Brc, opcion_venta, datos_Cargados)
				FinSi
			Sino 
				Si opcion_ == "3" Entonces
					si contador_brc == 0 Entonces
						Escribir "No hay pasajes vendidos"
					SiNo
						ordenamiento_lista_ascendente(vuelo_Brc,contador_brc)
						mostrar_pasajero_por_nombre(vuelo_Brc, contador_brc, datos_Cargados, opcion_venta)
					FinSi
				SiNo
					si contador_brc == 0 Entonces
						Escribir "No hay pasajes vendidos"
					SiNo // OPCION 4
						si Mayusculas(opcion_ordenamiento) == "DSC" Entonces
							ordenamiento_lista_descendente(vuelo_Brc, contador_brc)
							mostrar_lista_pasajeros(vuelo_Brc, contador_brc, datos_Cargados)
						SiNo
							ordenamiento_lista_ascendente(vuelo_Brc, contador_brc)
							mostrar_lista_pasajeros(vuelo_Brc, contador_brc, datos_Cargados)
						FinSi
					FinSi
				FinSi
			FinSi
		2:
			Escribir "Su selección fue Bueno Aires - Salta"
			Si opcion_ == "2" Entonces
				si contador_salta == 0 Entonces
					Escribir "No hay pasajes vendidos"
				SiNo
					mostrar_pasajero_buscado(vuelo_Salta, opcion_venta, datos_Cargados)
				FinSi
			Sino 
				Si opcion_ == "3" Entonces
					si contador_salta == 0 Entonces
						Escribir "No hay pasajes vendidos"
					SiNo
						ordenamiento_lista_ascendente(vuelo_Salta,contador_salta)
						mostrar_pasajero_por_nombre(vuelo_Salta, contador_salta, datos_Cargados, opcion_venta)
					FinSi
				SiNo // OPCION 4
					si contador_salta == 0 Entonces
						Escribir "No hay pasajes vendidos"
					SiNo
						si Mayusculas(opcion_ordenamiento) == "DSC" Entonces
							ordenamiento_lista_descendente(vuelo_Salta, contador_salta)
							mostrar_lista_pasajeros(vuelo_Salta, contador_salta, datos_Cargados)
						SiNo
							ordenamiento_lista_ascendente(vuelo_Salta, contador_salta)
							mostrar_lista_pasajeros(vuelo_Salta, contador_salta, datos_Cargados)
						FinSi
					FinSi
					
				FinSi
			FinSi
		3:
			Escribir "Su selección fue Rosario - Buenos Aires"
			Si opcion_ == "2" Entonces //OPCION 2
				si contador_bsas == 0 Entonces
					Escribir "No hay pasajes vendidos"
				SiNo
					mostrar_pasajero_buscado(vuelo_Bsas, opcion_venta, datos_Cargados)
				FinSi
				
			Sino 
				Si opcion_ == "3" Entonces // OPCION 3
					si contador_bsas == 0 Entonces
						Escribir "No hay pasajes vendidos"
					SiNo
						ordenamiento_lista_ascendente(vuelo_Bsas,contador_bsas)
						mostrar_pasajero_por_nombre(vuelo_Bsas, contador_bsas, datos_Cargados, opcion_venta)
					FinSi
				SiNo // OPCION 4
					si contador_bsas == 0 Entonces
						Escribir "No hay pasajes vendidos"
					SiNo
						si Mayusculas(opcion_ordenamiento) == "DSC" Entonces
							ordenamiento_lista_descendente(vuelo_Bsas, contador_bsas)
							mostrar_lista_pasajeros(vuelo_Bsas, contador_bsas, datos_Cargados)
						SiNo
							ordenamiento_lista_ascendente(vuelo_Bsas, contador_bsas)
							mostrar_lista_pasajeros(vuelo_Bsas, contador_bsas, datos_Cargados)
						FinSi
					FinSi
				FinSi
			FinSi
		4:
			Escribir "Su selección fue Mar Del Plata - Mendoza"
			Si opcion_ == "2" Entonces
				si contador_mendoza == 0 Entonces
					Escribir "No hay pasajes vendidos"
				SiNo
					mostrar_pasajero_buscado(vuelo_Mendoza, opcion_venta, datos_Cargados)
				FinSi
				
			Sino 
				Si opcion_ == "3" Entonces
					si contador_mendoza == 0 Entonces
						Escribir "No hay pasajes vendidos"
					SiNo
						ordenamiento_lista_ascendente(vuelo_Mendoza,contador_mendoza)
						mostrar_pasajero_por_nombre(vuelo_Mendoza, contador_mendoza, datos_Cargados, opcion_venta)
					FinSi
				SiNo // OPCION 4
					si contador_mendoza == 0 Entonces
						Escribir "No hay pasajes vendidos"
					SiNo
						si Mayusculas(opcion_ordenamiento) == "DSC" Entonces
							ordenamiento_lista_descendente(vuelo_Mendoza, contador_mendoza)
							mostrar_lista_pasajeros(vuelo_Mendoza, contador_mendoza, datos_Cargados)
						SiNo
							ordenamiento_lista_ascendente(vuelo_Mendoza, contador_mendoza)
							mostrar_lista_pasajeros(vuelo_Mendoza, contador_mendoza, datos_Cargados)
						FinSi
					FinSi
				FinSi
			FinSi
	FinSegun
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
	nombre_valido <- validar_nombre(buscar_pasajero_nombre)
	buscar_pasajero_nombre = nombre_valido
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
//ORDENA LA LISTA DE FORMA DESCENDENTE
SubProceso ordenamiento_lista_descendente(arreglo, contador)
	Definir aux Como Caracter
	Si contador > 1 Entonces
		Para i = 0 Hasta contador-2 Hacer
			Para j = i+1 Hasta contador-1 Hacer
				si Mayusculas(arreglo[i,0]) < Mayusculas(arreglo[j,0]) Entonces
					Para k = 0 Hasta 6 Hacer
						aux = arreglo[i,k]
						arreglo[i,k] = arreglo[j,k]
						arreglo[j,k] = aux
					FinPara
				FinSi
			FinPara
		FinPara
	FinSi
	
FinSubProceso
SubProceso mostrar_lista_pasajeros(arreglo, contador, datos_Cargados)
	Para i = 0 Hasta contador -1 Hacer
		Para j = 0 Hasta  6 Hacer
			Mostrar Concatenar(datos_Cargados[j],arreglo[i,j])
		FinPara
	FinPara
FinSubProceso
SubProceso validar_num(num)
	Repetir
		Leer num 
		Si ConvertirANumero(num) < 0 o num == "" o Longitud(num) < 10 Entonces
			Escribir "El número debe ser positivo y de 10 dígitos"
		FinSi
	Hasta Que ConvertirANumero(num) > 0 y num <> "" y  Longitud(num) == 10
FinSubProceso
Funcion nombre_valido <- validar_nombre(nombre)
	Definir nombre_valido Como Caracter
	Repetir
		Leer nombre
		Si nombre == "" Entonces
			Escribir "El nombre no puede ser vacío o número"
			Escribir "Ingrese el nombre nuevamente"
		FinSi
	Hasta Que nombre <> "" 
	nombre_valido = nombre
FinFuncion
SubProceso validar_menu(opcion_ Por Referencia)
	Repetir
		Leer opcion_
		Si opcion_ < 1 o opcion_ > 4 Entonces
			Escribir "Opción Inválida"
			Escribir "La opción debe de ser entre 1 y 4"
		FinSi
	Hasta Que opcion_ >= 1 y opcion_ <= 4
FinSubProceso
