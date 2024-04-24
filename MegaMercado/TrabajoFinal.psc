Algoritmo TrabajoFinal
	//Definir variables 
	Definir sele1,sele2,i,prodcant,b,res1,a, subtotal Como Entero;
	Definir compro Como Caracter;
	Definir nombreUser Como Caracter;
	//Definiendo valor de la función de busqueda
	encontrado = falso;
	//Definir arreglos
	//Selección #1
	Dimension produ[10];
	Dimension pre[10];
	Dimension codi[10];
	//Selección #1.4
	Dimension code[5]
	Dimension iden[5];
	Dimension nombre[5];
	Dimension apellido[5];
	Dimension cargo[5];
	Dimension sueldo[5];
	Dimension horas[5];
	//Selección #2
	Dimension prod[10];
	Dimension cant[10];
	Dimension codigo[10];
	//Menu de inico
	Repetir
		Limpiar Pantalla
		Escribir "<================== Bienvenidos a la tienda MegaMercado ================>";
		Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"1. Si eres un Empleado";
		Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"2. Si eres un Cliente";
		Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"3. Salir del sistema";
		Leer sele1;
		Limpiar Pantalla
		//Si escribe un número fuera de los rangos del Segun 
		Mientras sele1 < 1  o sele1 > 3 Hacer
			Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"Numero no valido intruduce el número correcto";
			Escribir "<================== Bienvenidos a la tienda MegaMercado ================>";
			Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"1. Si eres un cliente";
			Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"2. Si eres un Empleado";
			Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"3. Salir del sistema";
			Leer sele1;
			Limpiar Pantalla
		FinMientras
		//Selecionar menu
		Segun sele1 Hacer
			1:
				//Selección #1
				Repetir
					//Menu #1
					Limpiar Pantalla;
					Escribir "<============================= Empleados ===============================>";
					Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"1. Ingresar Productos";
					Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"2. Comprar Productos";
					Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"3. Inventario";
					Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"4. Nomina";
					Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"5. Volver al inicio";
					Leer sele2;
					Limpiar Pantalla
					//Si escribe un número fuera de los rangos del Segun 
					Mientras sele2 < 1 o sele2 > 5 Hacer
						Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"Numero no valido intruduce el número correcto";
						Escribir "<============================= Empleados ===============================>";
						Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"1. Ingresar Productos";
						Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"2. Comprar Productos";
						Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"3. Inventario";
						Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"4. Nomina";
						Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"5. Volver al inicio";
						Leer sele2;
						Limpiar Pantalla
					FinMientras
					//Selección Menu #1.1
					Segun sele2 Hacer
						1:
							//Selección #1.1
							Para i<-0 Hasta 9 Con Paso 1 Hacer
								Escribir "Ingresa 10 productos con sus precios:";
								Escribir "Ingresa el producto #",i+1,":";
								Leer produ[i];
								Escribir "Ingresa el precio del producto #",i+1,":";
								Leer pre[i];
								codi[i] = "00" +  ConvertirATexto(i+1);
								Limpiar Pantalla
							Fin Para
							Limpiar Pantalla;
							Escribir "Listo ya tienes los 10 productos, para salir al menú toca cualquier tecla...";
							//Fin selección 1.1
							Esperar Tecla;
						2:
							//Selección #1.2
							Escribir " "+"Compra productos de los que ya tienes acá te muestro tus productos para";
							Escribir " "+" "+" "+" "+" "+" "+" "+"que elijas el codigo y cuanto de ese producto compraras."
							Escribir "1.)" + codi[0] +" = "+ produ[0] +" "+" "+" "+" "+" "+" "+" "+"2.)" + codi[1]+" = "+produ[1]+" "+" "+" "+" "+" "+" "+" "+"3.)" + codi[2]+" = "+produ[2];
							Escribir "4.)" + codi[3] +" = "+ produ[3] +" "+" "+" "+" "+" "+" "+" "+"5.)" + codi[4]+" = "+produ[4]+" "+" "+" "+" "+" "+" "+" "+"6.)" + codi[5]+" = "+produ[5];
							Escribir "7.)" + codi[6] +" = "+ produ[6] +" "+" "+" "+" "+" "+" "+" "+"8.)" + codi[7]+" = "+produ[7]+" "+" "+" "+" "+" "+" "+" "+"9.)" + codi[8]+" = "+produ[8];
							Escribir "10.)" + codi[9] +" = "+ produ[9];
							Leer compro;
							b=0;
							encontrado = Falso;
							Mientras encontrado = Falso Hacer
								// Buscamos el código ingresado en el arreglo de código
								Mientras b <= 9 y encontrado = Falso Hacer
									
									Si codi[b] == compro Entonces
										encontrado <- Verdadero
									SiNo
										b <- b + 1
									FinSi
									
								FinMientras
								
								
								si encontrado = Falso Entonces
									Limpiar Pantalla;
									Escribir " "+"Compra productos de los que ya tienes acá te muestro tus productos para";
									Escribir " "+" "+" "+" "+" "+" "+" "+"que elijas el codigo y cuanto de ese producto compraras."
									Escribir "1.)" + codi[0] +" = "+ produ[0] +" "+" "+" "+" "+" "+" "+" "+"2.)" + codi[1]+" = "+produ[1]+" "+" "+" "+" "+" "+" "+" "+"3.)" + codi[2]+" = "+produ[2];
									Escribir "4.)" + codi[3] +" = "+ produ[3] +" "+" "+" "+" "+" "+" "+" "+"5.)" + codi[4]+" = "+produ[4]+" "+" "+" "+" "+" "+" "+" "+"6.)" + codi[5]+" = "+produ[5];
									Escribir "7.)" + codi[6] +" = "+ produ[6] +" "+" "+" "+" "+" "+" "+" "+"8.)" + codi[7]+" = "+produ[7]+" "+" "+" "+" "+" "+" "+" "+"9.)" + codi[8]+" = "+produ[8];
									Escribir "10.)" + codi[9] +" = "+ produ[9];
									Escribir "Introduce un codigo valido:"
									Leer compro;
									b = 0;
									Limpiar Pantalla;
								FinSi
							FinMientras
							//Ingresa la cantidad de ese producto
							Escribir "Ingrese la cantidad de ese producto ahora:";
							Leer prodcant;
							//Factura de pago
							Limpiar Pantalla
							Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"Factura";
							Escribir "_________________________________________________________________________"
							Escribir "Producto: ", produ[b];
							Escribir "Precio: ", pre[b];
							Escribir "Cantidad: ", prodcant;
							Escribir "_________________________________________________________________________"
							Escribir "Subtotal: ", (prodcant*pre[b]);
							si (prodcant*pre[b]) >= 100000 Entonces
								Escribir "Descuento: ",(prodcant*pre[b]) * 0.25;
								Escribir  "Total: ", (prodcant*pre[b]) - ((prodcant*pre[b]) * 0.25 );
							SiNo
								Escribir "Descuento : " ,0;
								Escribir "Total: ", (prodcant*pre[b]) - 0;
							FinSi
							Escribir "Para salir presiona cualquier tecla...";
							//Fin selección 1.2
							Esperar Tecla;
						3:
							//Selección #1.3
							Escribir "<======================= Inventario de la empresa ======================>";
							Escribir "1.)" + codi[0] +" | "+ produ[0] +" = ",pre[0]," "+" "+" "+" "+"2.)" + codi[1]+" | "+produ[1]+" = ",pre[1]," "+" "+" "+" "+"3.)" + codi[2]+" | "+produ[2]+" = ",pre[2],;
							Escribir "4.)" + codi[3] +" | "+ produ[3] +" = ",pre[3]," "+" "+" "+" "+"5.)" + codi[4]+" | "+produ[4]+" = ",pre[4]," "+" "+" "+" "+"6.)" + codi[5]+" | "+produ[5]+" = ",pre[5],;
							Escribir "7.)" + codi[6] +" | "+ produ[6] +" = ",pre[6]," "+" "+" "+" "+"8.)" + codi[7]+" | "+produ[7]+" = ",pre[7]," "+" "+" "+" "+"9.)" + codi[8]+" | "+produ[8]+" = ",pre[8],;
							Escribir "10.)" + codi[9] +" | "+ produ[9]+" = ",pre[9],;
							Escribir "Para salir presiona cualquier tecla...";
							//Fin selección 1.3
							Esperar Tecla;
						4:
							//Selección #1.4
							Repetir
								Limpiar Pantalla;
								Escribir "<=============================== Nomina ================================>";
								Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"1. Ingresar Empleado";
								Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"2. Ver nomina";
								Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"3. Volver al atrás";
								Leer sele4;
								Limpiar Pantalla
								//Si escribe un número fuera de los rangos del Segun 
								Mientras sele4 < 1 o sele4 > 3 Hacer
									Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"Numero no valido intruduce el número correcto";
									Escribir "<=============================== Nomina ================================>";
									Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"1. Ingresar Empleado";
									Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"2. Ver nomina";
									Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"3. Volver al atrás"
									Leer sele4;
								FinMientras
									Segun sele4 Hacer
										1:
											//Selección 1.4.1
											Para i<-0 Hasta 4 Con Paso 1 Hacer
												Limpiar Pantalla;
												code[i] = "emp_00" +  ConvertirATexto(i+1);
												Escribir "<========================= Datos del empleado N.",i+1," ======================>";
												Escribir "Ingresa tu cédula:";
												Leer iden[i];
												Escribir "Ingresa tu primer nombre:";
												Leer nombre[i];
												Escribir "Ingresa tu primer apellido:";
												Leer apellido[i];
												Escribir "Ingresa tu puesto de trabajo:";
												Leer cargo[i];
												Escribir "Ingresa tu sueldo:";
												Leer sueldo[i];
												Escribir "Ingresa tus horas trabajadas en esta mes:";
												Leer horas[i];
											Fin Para
											Escribir "Presiona cualquier tecla para salir..."
											//Fin de selección 1.4.1
											Esperar Tecla;
										2:
											//Selección 1.4.2
											Escribir " Ingresa el codigo del empleado para saber su sueldo a pagar teniendo en";
											Escribir "   cuenta que el primer empleado registrado tiene de codigo emp_001..."
											Escribir "";
											Escribir "Ingresa el codigo del empleado:";
											leer codigoemp;
											b=0;
											encontrado = falso;
											// Buscamos el código ingresado en el arreglo de código
											Mientras encontrado = Falso Hacer
												Limpiar Pantalla;
												
												mientras b < 5 y encontrado = falso Hacer
													Si code[b] == codigoemp Entonces
														encontrado <- Verdadero
													SiNo
														b <- b + 1
													FinSi
												FinMientras
												
											
												si encontrado = falso Entonces
													Limpiar Pantalla;
													Escribir "                            Codigo invalido!!;"
													Escribir " Ingresa el codigo del empleado para saber su sueldo a pagar teniendo en";
													Escribir "   cuenta que el primer empleado registrado tiene de codigo emp_001..."
													Escribir "";
													Escribir "Ingresa el codigo del empleado:";
													leer codigoemp;
												FinSi
											FinMientras
											//Presentamos el reporte del empleado
											Limpiar Pantalla;
											Escribir "Nombre y apellido: ", nombre[b], " ", apellido[b];
											Escribir "Cargo y cédula: ", cargo[b], ", ", iden[b];
											Escribir "Sueldo bruto y Horas trabajadas: ",  sueldo[b], ", ", horas[b];
											Escribir "Pago por hora y horas totales: ", (sueldo[b]/20)/8," ", ((sueldo[b]/20)/8)* horas[b];
											si horas[b] - 160 > 0 Entonces
												dedu = ((((sueldo[b]/20)/8) * horas[b]) + (sueldo[b]*0.20))*0.05;
												Escribir "Pago por horas extras: ", sueldo[b]*0.20;
												Escribir "Subtotal: ", (((sueldo[b]/20)/8)* horas[b]) + (sueldo[b]*0.20);
												Escribir "Deducciones: ", dedu;
												Escribir "Sueldo Neto: ", (((sueldo[b]/20)/8)* horas[b]) + (sueldo[b]*0.20) - dedu;
											SiNo
												Escribir "Subtotal: ", (((sueldo[b]/20)/8)* horas[b]);
												Escribir "Deducciones: ", ((((sueldo[b]/20)/8)* horas[b])*0.05);
												Escribir "Sueldo Neto: ", (((sueldo[b]/20)/8)* horas[b]) - ((((sueldo[b]/20)/8)* horas[b])*0.05);
											FinSi
											//Fin selección 1.4.2
											Escribir "Presiona cualquier tecla para salir...";
											Esperar Tecla;
									Fin Segun
									Limpiar Pantalla
							Hasta Que sele4 == 3
					Fin Segun
					//Fin de selección #1
				Hasta Que sele2 == 5
			2:
				Repetir
					//Menu #2
					Escribir "<============================= Clientes ================================>";
					Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"1. Comprar Productos";
					Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"2. Volver al inicio";
					Leer sele3;
					Limpiar Pantalla
					//Si escribe un número fuera de los rangos del Segun 
					Mientras sele3 < 1 o sele3 > 2 Hacer
						Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"Numero no valido intruduce el número correcto";
						Escribir "<============================= Clientes ================================>";
						Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"1. Comprar Productos";
						Escribir " "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+" "+"2. Volver al inicio";
						Leer sele3;
						Limpiar Pantalla
					FinMientras
					//Selección Menu #2.1
					Segun sele3 Hacer
						1:
							//Selección #2.1
							Limpiar Pantalla;
							Escribir "Digite su nombre...";
							leer nombreUser;
							Limpiar Pantalla;
							Escribir "<============Bienvenido al apartado de compra " + nombreUser + "==============>";
							Escribir "Cuantos productos compraras:"
							Leer res1;
							Para i<-0 Hasta res1-1 Con Paso 1 Hacer
								Limpiar Pantalla;
								Escribir "<============Bienvenido al apartado de compra " + nombreUser + "==============>";
								Escribir "Ingresa el codigo del producto #",i+1,":";
								Leer codigo11;
								b=0;
								encontrado = Falso;
								Mientras encontrado = Falso Hacer
									// Buscamos el código ingresado en el arreglo de código
									Mientras b <= 9 y encontrado = Falso Hacer
										Si codi[b] == codigo11 Entonces
											encontrado <- Verdadero
											codigo[i]=b;
										SiNo
											b <- b + 1
										FinSi
										
									FinMientras
									
									
									si encontrado = Falso Entonces
										Limpiar Pantalla
										Escribir "    Ingresaste un codigo que no existe, Escribe uno de los existentes: "
										Escribir "<============Bienvenido al apartado de compra " + nombreUser + "==============>";
										Escribir "Ingresa el codigo del producto #",i+1,":";
										Leer codigo11; 
										b = 0;
										Limpiar Pantalla;
									FinSi
									
								FinMientras
								Limpiar Pantalla;
								Escribir "<============Bienvenido al apartado de compra " + nombreUser + "==============>";
								Escribir "Ingresa la cantidad del producto #",i+1,":";
								Leer cant[i];
								Limpiar Pantalla;
							Fin Para
							Escribir "Presiona cualquier tecla para ver la factura...";
							Esperar Tecla;
							Limpiar Pantalla;
							
							Escribir "Factura de " + nombreUser + ":";
							Escribir "Fecha:", FechaActual();
							Escribir "_________________________________________________________________________";
							Para i<-0 Hasta res1-1 Con Paso 1 Hacer
								Escribir "Producto #", i+1, ": ", produ[codigo[i]],"| Cantidad:",cant[i];
							Fin Para
							Para i<-0 Hasta res1-1 Con Paso 1 Hacer
								Escribir "Total de precio del producto #", i+1, ": ", cant[i] * pre[codigo[i]];
								subtotal = subtotal + (cant[i] * pre[codigo[i]]);
							Fin Para
							Escribir "_________________________________________________________________________";
							Escribir "Subtotal: ", subtotal;
							descuento1 = 0.025 * subtotal;
							descuento2 = 0.05 * subtotal;
							si subtotal >= 10000 Entonces
								si subtotal >= 50000 Entonces
									Escribir "Descuento: ", descuento2;
									Escribir "Total: ", subtotal-descuento2;
								SiNo
									Escribir "Descuento: ", descuento1;
									Escribir "Total: ", subtotal-descuento1;
								FinSi
							SiNo
								Escribir "Total: ", subtotal;
							FinSi
							subtotal = 0;
							Escribir "Presiona cualquier tecla para salir...";
							Esperar Tecla;
							Limpiar Pantalla;
					FinSegun
				Hasta Que sele3 == 2
			3: 
				Limpiar Pantalla
				Escribir "Cerrando sistema...";
		Fin Segun
	Hasta Que sele1 == 3
FinAlgoritmo