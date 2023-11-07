// Funciones o SubAlgoritmo  del proyecto
// SubAlgoritmo menus del proyecto
Funcion opcion=presentarMenu(titulo,menu,lim)
	Definir opcion Como Caracter
	Definir pos Como Entero
	Borrar Pantalla
	Escribir titulo
	Para pos=0 Hasta lim-1 Con Paso 1 Hacer
		Escribir menu[pos]
	Fin Para
	Escribir "       Elija opción[1..",lim,"]" Sin Saltar
	leer opcion
FinFuncion

//                 Ejercicios de lógica de programación en PSeInt
//1) Determinar cuánto se debe pagar por cierta cantidad de colas, considerando que si son más
//	de 23 colas, el costo por unidad es de $0,50 caso contrario el precio será 20% mas.
//Al costo resultante calcular el 12% del iva. Se pide presentar: cantidad comprada, el costo ´por
//	unidad, el total sin iva el iva y el total a pagar
Funcion TIENDA(canti)
	//INICIO DE LA FUNCION 
	// ESCRIBO UN MENSAJE DE PRESENTACION
	iva=0.12 
	//PROCESO 
	// PEDIMOS AL USUARIO QUE INGRESE LA CANTIDAD DE COLAS QUE VA A COMPRAR 
	//LEER canti
	// SI EL COSTO ES MAYOR A 23 Entonces
	si canti>=23 Entonces
		// PRECIO SERA DE 0.50 CNTVS
		precio=0.50
		// TOTAL SERA EL PRECIO MULTIPLICADO POR LA CANTIDAD = 0.50*23=11.50
		total<-precio*canti
		// IVA 12% SERA EL TOTAL MULTIPLICADO POR 0.12 = 11.50*0.12=1.38
		iva<-total*iva
		// EL TOTAL A PAGAR SERA EL TOTAL + IVA = 11.50+1.38=12.88
		totalapagar<-total+iva
		// SI NO
	SiNo// SI EL COSTO ES MENOR A 23 Entonces
	si canti<23 Entonces
		// EL PORC ES DE 0.50*0.20=0.10
		porc<-0.50*0.20
		// PRECIO SERA DE 0.50+0.10=0.60 CNTVS
		precio<-0.50+porc
		// TOTAL SERA EL PRECIO MULTIPLICADO POR LA CANTIDAD = 0.60*22=13.20
		total<-precio*canti
		// IVA 12% SERA EL TOTAL MULTIPLICADO POR 0.12 = 13.20*0.12=1.58
		iva<-total*iva
		// EL TOTAL A PAGAR SERA EL TOTAL + IVA = 13.20+1.58=14.78
		totalapagar<-total+iva
		// FIN SI
	FinSi
FinSi 
// SALIDA 
//PRESENTAMOS LOS DATOS DE LA COMPRA 
Escribir "___________________________________________"
Escribir "          <<<FACTURA>>>"
Escribir "___________________________________________"
Escribir "Producto                    COCA COLA  "
Escribir "cantidad                    x",canti,""
Escribir "Costo por unidad            $",precio,"0"
Escribir "Total                       $",total,""
Escribir "Iva 12%                     $",iva,""
Escribir "Total a pagar               $",totalapagar,""
Escribir "___________________________________________"
// FIN DE LA FUNCION 
FinFuncion


//2) La asociación de vinicultores tiene como política fijar un precio inicial al kilo
//de uva, la cual se clasifica en tipos A y B, y además en tamaños 1 y 2.
//Cuando se realiza la venta del producto, ésta es de un solo tipo y tamaño, se
//requiere determinar cuánto recibirá un productor por la uva que entrega en un
//embarque, considerando lo siguiente:Si es de tipo A, se le cargan 20 al precio
//	inicial cuando es de tamaño 1; y 30 si es de tamaño 2. Si es de tipo B, se rebajan
//	30 cuando es de tamaño 1, y 50 cuando es de tamaño 2.
//	Realice un algoritmo para determinar la ganancia obtenida
Funcion ASOCIACIONVINO(com,tipo,tamaño)
	//INICIO DE LA FUNCION 
	// ESCRIBO UN MENSAJE DE PRESENTACION
	// DEFINO MIS VARIBLES 
	//uva,tamaño,rebaja,precio,ganancia,com COMO REAL
	// tipo COMO CARACTER
	// PROCESO
	// PREGUNTAMOS AL USUARIO CUANTOS KILOS DE UVA VA A COMPRAR 
	// Leer COMPRA
	// PEDIMOS AL USUARIO QUE INGRESE QUE TIPO DE UVA ES SI A O B
	// LEER tipo
	// PEDIMOS AL USUARIO QUE INGRESE EL TAMAÑO DE LA UVA SI 1 O 2
	// LEER TAMAÑO
 	// SI EL TAMAÑO ES 1 Y DE TIPO A ENTONCES 
	// SI EL TAMAÑO ES 1 Y DE TIPO A ENTONCES 
	si tamaño=1 Y tipo="A" Entonces
		// NO SE APLICA REBAJA 
		rebaja=0
		// EL PRECIO DEL KILO ES DE 20 DOLARES 
		precio=20
		// el total sera igual a la compra*precio
		Total=(com*precio)
		// el total a pagar seria final 
		final=(Total)-rebaja
	SINO
		// SI EL TAMAÑO ES  2 Y DE TIPO A ENTONCES 
		si tamaño=2 Y tipo="A" Entonces
			// NO SE APLICA REBAJA 
			rebaja=0
			// EL PRECIO DEL KILO ES DE 30 DOLARES 
			precio=30
			// el total sera igual a la compra*precio
			Total=(com*precio)
			// el total a pagar seria final 
			final=(Total)-rebaja
		SINO
			// SI EL TAMAÑO ES  1 Y DE TIPO B ENTONCES 
			si tipo="B" Y tamaño=1 Entonces
				// SE APLICA UNA REBAJA DE 30 DOLARES 
				rebaja=30
				// EL PRECIO DEL KILO ES DE 20 DOLARES 
				precio=20
				//EL TOTAL ES IGUAL A LA COMPRA * EL PRECIO
				Total=(com*precio)
				// EL PRECIO FINAL SERA IGUAL AL TOTAL - REBAJA 
		        final=(Total)-rebaja
			SINO
				// SI EL TAMAÑO ES 2 Y DE TIPO B ENTONCES 
				si tipo="B" Y tamaño=2  Entonces
					// SE APLICA UNA REBAJA DE 50 DOLARES 
					rebaja=50
					// EL PRECIO DEL KILO ES DE 30 DOLARES 
					precio=30
					//EL TOTAL ES IGUAL A LA COMPRA * EL PRECIO
					Total=(com*precio)
					// EL PRECIO FINAL SERA IGUAL AL TOTAL - REBAJA 
					final=(Total)-rebaja
			    FIN SI 
			FINSI 
		FinSi
	FinSi
	// FIN SI 
	//SALIDA 
	// PRESENTAMOS LOS DATOS DE LA COMPRA 
	Escribir "________________________________"
	Escribir "        <<<FACTURA>>>"
	Escribir "--------------------------------"
	Escribir "UVAS                 ",com," KILOS "
	Escribir "PRECIO               $",precio,""
	Escribir "TOTAL                $",Total,""
	Escribir "REBAJA               $",rebaja,""
	Escribir "TOTAL A PAGAR        $",final,""
	Escribir "--------------------------------"
	// FIN DE LA FUNCION 	
FinFuncion


//3) Dado dos números obtener el residuo sin el operador mod, %
Funcion resdid(NUM1,NUM2,residuo)
	//INICIO DE LA FUNCION 
	// ESCRIBO UN MENSAJE DE PRESENTACION
	// DEFINO MIS VARIBLES 
	//PEDIMOS AL USUARIO QUE INGRESE EL DIVIDENDO 
	//LEER NUM1
	// PEDIMOS AL USUARIO QUE INGRESE EL DIVISOR 
	//Leer NUM2
	// SI NUM2=0 
	// SI NUM2=0 Entonces
	SI NUM2=0 Entonces
		// LE DECIMOS AL USUARIO QUE NO SE PUEDE DIVIDIR PARA CERO 
		Escribir "NO SE PUEDE DIVIDIR PARA 0"
		// SI NO 
	SiNo
		// RESIDUO = NUM1 
		residuo=NUM1 
		// MIENTRAS EL RESIDUO SEA MAYOR O IGUAL A NUM2
		Mientras residuo>=NUM2
			//RES SERA IGUAL A LA DIVISION DE NUM1/NUM2
			RES<-NUM1/NUM2
			//EL RESIDUO SERA EL RESIDUO MENOS EL NUM2
			residuo=residuo-NUM2
			// FIN MIENTRAS
		FinMientras
		// SALIDA 
		//ESCRIBIMOS LA DIVISION 
		Escribir "LA DIVISION ES: ",NUM1,"/",NUM2,"=",RES
		// ESCRIBIMOS EL RESULTADO 
		Escribir "EL RESIDUO ES ",residuo,""
	FinSi
	// FIN SI 
	// FIN DE LA FUNCION 
FinFuncion

//El consultorio del Dr. Paez tiene como política cobrar la consulta con
//base en el número de cita, de la siguiente forma:
//	Las tres primeras citas a $200.00 c/u.
//	Las siguientes dos citas a $150.00 c/u.
//	Las tres siguientes citas a $100.00 c/u.
//	Las restantes a $50.00 c/u, mientras dure el tratamiento.
//Se requiere un algoritmo para determinar:
//			Cuánto pagará el paciente por la cita.
//			El monto de lo que ha pagado el paciente por el tratamiento.
//			Para la solución de este problema se requiere saber qué número de cita se efectuará, con el
//				cual se podrá determinar el costo que tendrá la consulta y cuánto se ha gastado en el
//				tratamiento.
Funcion cit(cita)
	//INICIO DE LA FUNCION 
	// ESCRIBO UN MENSAJE DE PRESENTACION
	// DEFINO MIS VARIBLES 
	// PREGUNTAMOS AL USUARIO SU NUMERO DE CITA 
	// LEER CITA 
	// SEGUN LA CITA QUE TENGA DADO EN LOS CASOS 
	Segun cita 
			// 1 2 3 
		caso 1,2,3:
			// EL COSTO SERA DE $200
			costo=200.00
			// 4 5 
		caso 4,5:
			// EL COSTO SERA DE $150
			costo=150.00
			// 6 7 8 
		Caso 6,7,8:
			// EL COSTO SERA DE $100
			costo=100.00
			// 9 10 
		Caso 9,10:
			// EL COSTO SERA DE $50,00
			costo=50.00
			// FIN SEGUN  
	FinSegun
	// TOTAL=0
	total=0
	// PARA CALCULAR CUANTO HA GASTADO EN LAS CITAS USAMOS EL CICLO PARA  
	Para i<-cita Hasta 1 Con Paso -1 Hacer
		// TOTAL=TOTAL+ COSTO 
		total=total+costo 
		// FIN PARA  
	FinPara
	// SALIDA 
	// PRESENTAMOS LOS DATOS REQUERIDOS
	Escribir "_________________________________"
	Escribir "     CONSULTORIO DR. PAEZ "
	Escribir "_________________________________"
	Escribir "cita:                     #",cita,""
	Escribir "costo de la consulta:     $",costo,""
	Escribir "total gastado:            $",total,""
	Escribir "_________________________________"
	// FIN DE LA FUNCION 
FinFuncion

//5)Escribir un algoritmo que lea cuatro números y determine si el numero 1
//		es la mitad del número 2; Y si el numero 3 es divisor del numero4.
Funcion NUMER(num1,num2,num3,num4)
	//INICIO DE LA FUNCION 
	// ESCRIBO UN MENSAJE DE PRESENTACION
	// DEFINO MIS VARIBLES 
	// PEDIMOS AL USUARIO QUE INGRESE UN NUMERO 
	// LEER num1
	// PEDIMOS AL USUARIO QUE INGRESE UN NUMERO 
	// LEER num2
	// PEDIMOS AL USUARIO QUE INGRESE UN NUMERO 
	// LEER num3
	// PEDIMOS AL USUARIO QUE INGRESE UN NUMERO 
	// LEER num4
	// PROCESO Y SALIDA 
	// SI num1*2=num2 EJ;2*2=4 Entonces
	si num1*2=num2 Entonces
		// LE DECIMOS AL USUARIO QUE NUM1 SI ES LA MITAD DE NUM2 
		Escribir "EL NUMERO ",num1," SI ES LA MITAD DEL NUMERO ",num2,""
		// SI NO 
	SiNo
		// LE DECIMOS AL USUARIO QUE NO LO ES 
		Escribir "EL NUMERO ",num1," NO ES LA MITAD DEL NUMERO ",num2,""
		// FIN SI 
	FinSi
	// SI num3 MOD DE num4=0 Entonces
	SI num3 MOD num4=0 Entonces
		// LE DECIMOS AL USUARIO QUE NUM3 ES DIVISOR DE NUM4 
		Escribir "EL NUMERO ",num3," SI ES DIVISOR DEL NUMERO ",num4,""
		// SI NO 
	SiNo
		// SI NO LO ES LE DECIMOS 
		Escribir "EL NUMERO ",num3," NO ES DIVISOR DEL NUMERO ",NUM4,""
		// FIN SI 
	FinSi
	// FIN DE LA FUNCION 
FinFuncion

//6) El banco XYZ ha decidido aumentar el límite de crédito de las tarjetas de crédito
//de sus clientes, para esto considera que:
//		Si su cliente tiene tarjeta tipo 1, el aumento será del 25%.
//			Si tiene tipo 2 el aumento será del 35%
//				Si tiene tipo 3, el aumento será del 40%
//					Para cualquier otro tipo será del 50%
//						Se pide realizar un algoritmo que ayude al banco a determinar el nuevo límite
//							de crédito que tendrá una persona en su tarjeta considerando que después
//							del aumento de porcentaje se tendrá que subir $20 adicionales a todas las tarjetas
Funcion BANCOXYZ(tipos,CANTID)
	//INICIO DE LA FUNCION 
	// ESCRIBO UN MENSAJE DE PRESENTACION
	// DEFINO MIS VARIBLES 
	// PEDIMOS AL USUARIO QUE INGRESE EL TIPO DE TARJETA QUE TIENE
	// LEER TIPO 
	// PEDIMOS AL USUARIO QUE INGRESE EL LIMITE DE SU TARJETA 
    // leer CANT
	//PROCESO 
	// SEGUN EL TIPO DE TARJETA 
	segun tipos
		    // CASO 1
		caso 1:
			// porcentaje=0.25%
			porcent=0.25
			// CASO 2
		caso 2:
			// porcentaje=0.35%
			porcent=0.35
			// CASO 3
		caso 3:
			// porcentaje=0.40%
			porcent=0.40
			// FIN SEGUN 
	FinSegun
	// SI TIPO >=4 ENTONCES 
	SI tipos>=4 Entonces
		// porcentaje=0.50%
		porcent=0.50
		// FIN SI 
	FinSi
	// LIM=CANT*porcentaje
	LIMI=CANTID*porcent
	// SALIDA 
	// PRESENTAR LOS DATOS 
	Escribir "____________________________________"
	Escribir "       LIMITE DE CREDITO"
	Escribir "____________________________________"
	Escribir "SU TARJETA ES DE TIPO:      [",tipos,"]"
	Escribir "SU LIMITE ACTUAL ES DE:     $",CANTID,""
	Escribir "USTED TIENE UN AUMENTO DE:  ",porcent,"%"
	Escribir "AUMENTO DE:                 $",LIMI,""
	Escribir "ADICIONAL:                  $20"
	Escribir "SU NUEVO LIMITE ES DE:      $",CANTID+LIMI+20,""
	Escribir "____________________________________"
	// FIN DE FUNCION 
FinFuncion

//7)Escribir un algoritmo que lea cuatro números y determine si el numero 1 es divisor del
//		numero3 Y si el numero 2 es el doble del numero4.
Funcion DIVISOR(num1,num2,num3,num4)
	//INICIO DE LA FUNCION 
	// ESCRIBO UN MENSAJE DE PRESENTACION
	// DEFINO MIS VARIBLES 
	// PEDIMOS AL USUARIO QUE INGRESE UN NUMERO 
	// LEER num1
	// PEDIMOS AL USUARIO QUE INGRESE UN NUMERO 
	// LEER num2
	// PEDIMOS AL USUARIO QUE INGRESE UN NUMERO 
	// LEER num3
	// PEDIMOS AL USUARIO QUE INGRESE UN NUMERO 
	// LEER num4
	// PROCESO Y SALIDA 
	// SI num1*2=num2 EJ;2*2=4 Entonces
	si num2*2=num4 Entonces
		// LE DECIMOS AL USUARIO QUE NUM1 SI ES EL DOBLE  DE NUM2 
		Escribir "EL NUMERO ",num2," SI ES EL DOBLE DEL NUMERO ",num4,""
		// SI NO 
	SiNo
		// LE DECIMOS AL USUARIO QUE NO LO ES 
		Escribir "EL NUMERO ",num2," NO ES EL DOBLE DEL NUMERO ",num4,""
		// FIN SI 
	FinSi
	// SI num3 MOD DE num4=0 Entonces
	SI num1 MOD num3=0 Entonces
		// LE DECIMOS AL USUARIO QUE NUM1 ES DIVISOR DE NUM3
		Escribir "EL NUMERO ",num1," SI ES DIVISOR DEL NUMERO ",num3,""
		// SI NO 
	SiNo
		// SI NO LO ES LE DECIMOS 
		Escribir "EL NUMERO ",num1," NO ES DIVISOR DEL NUMERO ",NUM3,""
		// FIN SI 
	FinSi
	// FIN DE LA FUNCION 
FinFuncion

//8) El banco POO ha decidido aumentar el límite de crédito de las tarjetas de crédito
//de sus clientes, para esto considera que:
//		Si su cliente tiene tarjeta tipo 1, el aumento será del $100 .
//			Si tiene tipo 2 el aumento será del $200
//				Si tiene tipo 3, el aumento será del $300
//					Para cualquier otro tipo será del 500
//						Realizar un algoritmo que ayude al banco a determinar el nuevo límite
//							de crédito que tendrá una persona en su tarjeta considerando que
//							después del aumento se tendrá que subir 10% adicionales a todas las tarjetas
Funcion BANCOPOO(tipoz,cant)
	//INICIO DE LA FUNCION 
	// ESCRIBO UN MENSAJE DE PRESENTACION
	// DEFINO MIS VARIBLES 
	// PEDIMOS AL USUARIO QUE INGRESE EL TIPO DE TARJETA QUE TIENE
	// LEER TIPO 
	// PEDIMOS AL USUARIO QUE INGRESE EL LIMITE DE SU TARJETA 
    // leer CANT
	//PROCESO 
	// SEGUN EL TIPO DE TARJETA 
	segun tipoz
		    // CASO 1
		caso 1:
			// aumento=100
			aumento=100
			// CASO 2
		caso 2:
			// aumento=200
			aumento=200
			// CASO 3
		caso 3:
			// aumento=300
			aumento=300
			// FIN SEGUN 
	FinSegun
	// SI TIPO >=4 ENTONCES 
	SI tipoz>=4 Entonces
		// aumento=500
		aumento=500
		// FIN SI 
	FinSi
	// porcentaje=0.10
	porcentaje=0.10
	// lim=(CANT+aumento)*porcentaje
	lim=(CANT+aumento)*porcentaje
	// SALIDA 
	// PRESENTAR LOS DATOS 
	Escribir "____________________________________"
	Escribir "       LIMITE DE CREDITO"
	Escribir "____________________________________"
	Escribir "SU TARJETA ES DE TIPO:      [",tipoz,"]"
	Escribir "SU LIMITE ACTUAL ES DE:     $",CANT,""
	Escribir "USTED TIENE UN AUMENTO DE:  $",aumento,""
	Escribir "AUMENTO DE 10% ADICIONAL    $",LIM,""
	Escribir "SU NUEVO LIMITE ES DE:      $",CANT+aumento+lim,""
	Escribir "____________________________________"
	// FIN DE FUNCION 
FinFuncion

//9) Pedir al usuario un número y mostrar si es negativo menor que -20, sino mostrar si es
//		positivo par o impar múltiplo de 7.
Funcion paroimpar(num1)
	//INICIO DE LA FUNCION 
	// ESCRIBO UN MENSAJE DE PRESENTACION
	// DEFINO MIS VARIBLES 
	// PEDIMOS AL USUARIO QUE INGRESE UN NUMERO 
	// LEER num1
	// PROCESO Y SALIDA 
	// SI num1*2=num2 EJ;2*2=4 Entonces
	si  num1<=-20 Entonces
		// LE DECIMOS AL USUARIO QUE NUM1 ES MENOR A -20
		Escribir "EL NUMERO ",num1," ES NEGATIVO MENOR A -20"
		// FINSI 
	FIN SI 
	//SI num1 ES MAYOR A 0 ENTONCES 
	SI num1>0 Entonces
		// LE DECIMOS QUE ES POSITIVO 
		Escribir "EL NUMERO ",num1," ES POSITIVO"
	SiNo// SI NO 
	// LE DECIMOS QUE ES NEGATIVO 
	Escribir "EL NUMERO ",num1," ES NEGATIVO"
	// FINSI 
FinSi
// SI NUM1 MOD DE 2 ME DA 0 Entonces
SI num1 MOD 2 = 0 Entonces
	// LE DECIMOS AL USUARIO QUE ES PAR 
	Escribir "EL NUMERO ",num1," ES PAR"
SiNo // SINO
	// LE DECIMOS AL USUARIO QUE ES IMPAR 
	Escribir "EL NUMERO ",num1," ES IMPAR"
	// FIN SI 
FIN SI
// SI num1 MOD DE 7 ES IGUAL A 0 ENTONCES 
SI num1 MOD 7 = 0 ENTONCES
	// LE DECIMOS QUE ES MULTIPLO DE 7 
	ESCRIBIR "EL NUMERO ",num1," ES MULTIPLO DE 7"
SINO// SI NO 
// LE DECIMOS QUE NO ES MULTIPLO DE 7 
ESCRIBIR "EL NUMERO ",num1," NO MULTIPLO DE 7"
// FIN SI 
FIN SI
// FIN DE LA FUNCION 
FinFuncion

// LUIS ANGULO 
//10) La asociación de vinicultores tiene como política fijar un precio inicial al quintal de
//	pitajaya, la cual se clasifica en tipos "Amarilla" y "Colorada", y además en tamaños 1 y 2.
//	Cuando se realiza la venta del producto, ésta es de un solo tipo y tamaño, se requiere
//	determinar cuánto recibirá un productor por la pitajaya que entrega en un embarque,
//considerando lo siguiente:
//Si es de tipo Amarilla, se le cargan $10 al precio inicial cuando es de tamaño 1; y 15% mas $5
//	si es de tamaño 2
// Si es de tipo Colorada, se rebajan $20 cuando es de tamaño 1, y 20% cuando es de tamaño 2
//	2. Sea tipo Amarilla y Colorada se debe se aplicar un descuento del 5% y el 12% del IVA.
//	Realice un algoritmo para determinar el precio de embarque	
//ent:color,tamaño,precioinicial,porcdescuento,descu,precioembarque,porIva,IVA
//proc:con el condicional vemos si la pitajaya es de un color o tamaño diferente y dependiendo de eso diremos el 
//precio.
//salida:mostramos el precio embarque
funcion PrecioPitajaya(precioinicial,tamaño,color)
	Si color=1 y tamaño=1 Entonces
		precioinicial=precioinicial+10.00
		porcdescuento=precioinicial*0.05
		descu=precioinicial-porcdescuento
		porIva=descu*0.12
		IVA=descu+poriva
		precioembarque=IVA
		Escribir 'precio inicial: ' precioinicial
		Escribir 'descuento: ' descu
		Escribir 'iva : 12%'
		Escribir 'el precio de embarque es de ' precioembarque
	SiNo
		Si color=1 y tamaño=2 Entonces
			precioinicial=precioinicial*0.15+5.00
			porcdescuento=precioinicial*0.05
			descu=precioinicial-porcdescuento
			porIva=descu*0.12
			IVA=descu+poriva
			precioembarque=IVA
			Escribir 'precio inicial: ' precioinicial
			Escribir 'descuento: ' descu
			Escribir 'iva : 12%'
			Escribir 'el precio de embarque es de ' precioembarque
		SiNo
			Si color=2 y tamaño=1 Entonces
				precioinicial=precioinicial-20.00
				porcdescuento=precioinicial*0.05
				descu=precioinicial-porcdescuento
				porIva=descu*0.12
				IVA=descu+poriva
				precioembarque=IVA
				Escribir 'precio inicial: ' precioinicial
				Escribir 'descuento: ' descu
				Escribir 'iva : 12%'
				Escribir 'el precio de embarque es de ' precioembarque
			SiNo
				Si color=2 y tamaño=2 Entonces
					preciopor=precioinicial*0.20
					precio1=precioinicial+preciopor
					porcdescuento=precio1*0.05
					descu=precio1-porcdescuento
					porIva=descu*0.12
					IVA=descu+poriva
					precioembarque=IVA
					Escribir 'precio inicial: ' precio1
					Escribir 'descuento: ' descu
					Escribir 'iva : 12%'
					Escribir 'el precio de embarque es de ' precioembarque
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	
FinFuncion
Funcion NumeroParImparDivisible5(num)
	//11) Pedir al usuario un número y mostrar si es par menor que 10, sino mostrar si es negativo e
//	impar o negativo divisible para 5.
	//ent: num como real
	//proc: comprobamos si el numero ingresado es par menor que 10 o si es negativo e impar o negativo divisible 
	//para 5
	//salida:mostramos dependiendo del numero ingresado si es par menor que 10, sino mostrar si es negativo e
//	impar o negativo divisible para 5.
	Si num % 2 = 0 Y num < 10 Entonces
        Escribir 'El número es par y menor que 10.'
    Sino
        Si num < 0 Y num % 2 <> 0 Entonces
            Escribir 'El número es negativo e impar.'
        Sino
            Si num< 0 Y num % 5 = 0 Entonces
                Escribir 'El número es negativo y divisible por 5.'
            Sino
                Escribir 'incorrecto'
            FinSi
        FinSi
    FinSi
FinFuncion
Funcion CostoDeVentaCometa(clave,materiap)
	//12) Fábricas "El cometa" produce artículos con claves (1, 2, 3, 4, 5 y 6). Se requiere un
	//algoritmo para calcular los precios de venta, para esto hay que considerar lo siguiente:
	//Costo de producción = materia prima + mano de obra + gastos de fabricación.
//	Precio de venta = costo de producción + 45 % de costo de producción.
//	El costo de la mano de obra se obtiene de la siguiente forma: para los productos con clave 3 o
	//4 se carga 75 % del costo de la materia prima; para los que tienen clave 1 o 5 se carga 80 %, y
//	para los que tienen clave 2 o 6, 85 %.
//	Para calcular el gasto de fabricación se considera que, si el artículo que se va a producir tiene
	//claves 2 o 5, este gasto representa 30 % sobre el costo de la materia prima; si las claves son 3 o
	//6, representa 35 %; si las claves son 1 o 4, representa 28 %. La materia prima tiene el mismo
	//costo para cualquier clave
	//ent:clave como entero,costoprod,materiap,manobra,gastof,precioventa
	//proc:Con las condicionales calcularemos el costo de produccion dependiendo del  numero de clave que ingrese
	//el usuario
	//salida:mostramos el precio de venta
	Si clave=3 o clave=4 Entonces
		manobra=0.75*materiap
	SiNo
		Si clave=1 o clave=5 Entonces
			manobra=0.80*materiap
		SiNo
			Si clave=2 o clave=6 Entonces
				manobra=0.85*materiap
			Fin Si
		Fin Si
	Fin Si
	Si clave=2 o clave=5 Entonces
		gastof=0.30*materiap
	SiNo
		Si clave=3 o clave=6 Entonces
			gastof=0.35*materiap
		SiNo
			Si clave=1 o clave=4 Entonces
				gastof=0.28*materiap
			Fin Si
		Fin Si
	Fin Si
	costoprod=materiap+manobra+gastof
	precioventa=costoprod+0.45*costoprod
	Escribir 'el costo de produccion es de: ', costoprod
	Escribir 'el precio de venta es de: ', precioventa
FinFuncion
Funcion NumeroDeDigitos(numdigitos)
	//13) Dado un número entero N, calcular e informar al usuario cuántos dígitos tiene dicho
//	número.
	//ent:num como entero
	//proc: dependiendo de el numero del usuario mostramos cuantos digitos tiene el numero
	//salida:mostramos si es o no capicua
	cont=0
	Mientras numdigitos>0 Hacer
		cont=cont+1
		numdigitos= trunc(numdigitos/10)
	Fin Mientras
	Escribir 'El número tiene ', cont, ' dígitos.'
FinFuncion
funcion NumeroCapicua(numcapi)
	//14) Dado un número, determine si es capicúa.
	//Nota: un número capicúa es aquel que se lee igual hacia adelante que hacia atrás
	//ent:num(como entero),a,b
	//proc:vemos si el numero es capicua con trunc y mod 
	a=trunc(numcapi/100)
	b=numcapi mod 10
	si a==b Entonces
		Escribir 'el numero ' numcapi ' es capicua'
	SiNo
		Escribir 'no es capicua'
	FinSi
FinFuncion
Funcion DivisoresNum(numdiv)
	//15) Escribir un algoritmo que presente los divisores de un numero
	//ent:num como entero 
	//proc: con el para recorreremos del 1 al numero ingresado y comprobaremos si son divisores o no del
	//numero
	//salida:mostramos en pantalla los divisores del numero ingresado
	Para cont=1 Hasta numdiv-1 Con Paso 1 Hacer
		si numdiv mod cont = 0 Entonces
			Escribir 'los divisores del numero son ' cont
		FinSi
	Fin Para
FinFuncion
funcion sum=SumaDivisores(numdiv)
	//16) Escribir un algoritmo que presente la suma de los divisores de un numero
	//ent:num,resp como entero
	//proc:le pedimos un numero al usuario y sumaremos los divisores de ese numero
	//salida: mostramos el resultado de la suma
	Para i=1 Hasta numdiv-1 Con Paso 1 Hacer
		si numdiv mod i = 0 Entonces
			sum=sum+i
		FinSi
	Fin Para
FinFuncion
funcion CantidadDivisores(numdiv)
	//17) Escribir un algoritmo que presente la cantidad de los divisores de un numero
	//ent:num,cont como entero
	//proc:comprobaremos con el para cuantos divisores tiene el numero ingresado
	//salida:mostramos la cantidad de divisores
	cont=0
	para i=1 Hasta numdiv-1 con paso 1 Hacer
		si numdiv mod i = 0 Entonces
			cont=cont+1
		FinSi
	FinPara
	Escribir 'El numero ingresado tiene ' cont ' divisores'
FinFuncion
funcion resp=NumeroPerfecto(numdiv)
	//18) Escribir un algoritmo que indique si un número es perfecto
	//Nota: un número es perfecto cuando la suma de los divisores del número incluido el 1 y
//	excluido el propio número es igual al numero
	//Ejemplo: numero=6: los divisores del 6 son: 1+2+3=6
	//ent: resp como entero
	//proc: comprobamos si la suma de los divisores del numero es igual al numero y escribimos si es perfecto o no
	//salida:mostramos si es perfecto o no
	Definir resp Como Entero
	resp=sumaDivisores(numdiv)
	si resp=numdiv Entonces
		Escribir 'El numero ' numdiv ' es perfecto'
	SiNo
		Escribir 'El numero ' numdiv '  no es perfecto'
	FinSi
FinFuncion
// ERICK PAZMIÑO
Funcion Operaciones19(N,S)
    //Dado un número N determinar si es un número primo.
	//Nota: Un número primo es aquel que solo es divisible por 1(uno) y por el mismo.
	
	//Entrada: N=0(Leido) pos=2 ,S="Es un numero primo"
	//Proceso:Para pos=2 Hasta N-1 Con Paso 1 Hacer Si N Mod pos = 0
	//S="No es un numero primo"
	//Salida:Mostrar si es un numero primo o no
	Para pos=2 Hasta N-1 Con Paso 1 Hacer
		Si N Mod pos = 0
			S="No es un numero primo"
		FinSi
	FinPara
	Escribir S
FinFuncion

Funcion Operaciones20(N1,N2,S1,S2)
	//20) Dado dos números determinar si son primos gemelos.
    //Nota: Dos números son primos gemelos si los dos son primos y su resta en valor absoluto es 
	//igual a 2. Ejemplo: 7 y 5
	
	//Entrada:N1=0(Leido),N2=0(Leido),pos=0,S1="Es un numero primo",S2"Es un numero primo"
	//Proceso:Para pos=2 Hasta N1-1 Con Paso 1 Hacer Si N1 Mod pos = 0
	//S1="No es un numero primo"
	//Para pos=2 Hasta N2-1 Con Paso 1 Hacer Si N2 Mod pos = 0
	//S2="No es un numero primo"
	//Si S1="Es un numero primo" y S2="Es un numero primo" y abs(N1-N2)=2 Entonces
	//"Son Numeros Primos gemelos"
	//Salida:Mostrar si son o no numeros primos gemelos
	
	Para pos=2 Hasta N1-1 Con Paso 1 Hacer
		Si N1 Mod pos = 0
			S1="No es un numero primo"
		FinSi
	FinPara
	Para pos=2 Hasta N2-1 Con Paso 1 Hacer
		Si N2 Mod pos = 0
			S2="No es un numero primo"
		FinSi
	FinPara
	Escribir N1," ",S1
	Escribir N2," ",S2
	Si S1="Es un numero primo" y S2="Es un numero primo" y abs(N1-N2)=2 Entonces
		Escribir "Son Numeros Primos gemelos"
	SiNo 
		Escribir "No son Numeros Primos gemelos"
	FinSi
FinFuncion

Funcion Operaciones21(N1,N2,R1,R2)
	// Dado dos números determinar si son primos amigos.
    //Nota: Dos números son primos amigos si las sumas de los divisores del numero1 es igual a la 
	//suma de los divisores del numero2. Ejemplo: 6(1+2+3=6) y 25(1+5=6)
	
	//Entrada: N1=0(Leida),N2=0(Leida),pos=1,S1=0(Calculado),S2=0(Calculado)
	//Proceso:Para pos=1 Hasta N1-1 Con Paso 1 Hacer Si N1 Mod pos = 0: S1=S1+pos
	//Para pos=1 Hasta N2-1 Con Paso 1 Hacer Si N2 Mod pos = 0: S2=S2+pos
	//Salida:Mostrar si son o no numeros primos amigos
	
	Para pos=1 Hasta N1-1 Con Paso 1 Hacer
		Si N1 Mod pos = 0
			R1=R1+pos
		FinSi
	FinPara
	Para pos=1 Hasta N2-1 Con Paso 1 Hacer
		Si N2 Mod pos = 0
			R2=R2+pos
		FinSi
	FinPara
	Si R1=R2 Entonces
		Escribir "Son Numeros Primos Amigos"
	SiNo 
		Escribir "No son Numeros Primos Amigos"
	FinSi
FinFuncion


Funcion Arreglosycadenas1(Ni)
	//1) Dada n realizar un algoritmo que presente la siguiente secuencia
	//n=6
	//respuesta= 2 2 4 8 32 256
	
	Escribir "Respuesta"
	Para Pos=0 Hasta 5 Con Paso 1 Hacer
		Escribir " ",Ni[Pos] Sin Saltar
	FinPara
	
FinFuncion
Funcion Arreglosycadenas2(N1,N2)
	// Implementa un programa que calcule el promedio de los elementos pares e impares en un 
	//arreglo de números enteros y los copie en otro arreglo.
    //Ejemplo:
	//arreglo[2,3,4,7] areglo2[3,5]
	
	//Entrada: N1[4] N2[2] pos=0,C1=0(Calculada),C2=0(Calculada),Acu1=0(Calculada),Acu2=0(Calculada)
	//Proceso:Si N1[pos] mod 2 = 0: Acu1=Acu1+N1[pos] C1=C1+1
    //SiNo Acu2=Acu2+N1[pos] C2=C2+1
	//N2[0]=Acu1/C1
	//N2[1]=Acu2/C2
	//Salida:Mostrar promedio de los numeros pares e impares
	
	
	Escribir "Introduzca 4 numeros para mostrar el promedio de los elementos paes e impares"
	
	Para pos=0 Hasta 3 Con Paso 1 Hacer
		Escribir "Introduzca numero ",pos+1
		Leer N1[pos]
		Si N1[pos] mod 2 = 0
			Acu1=Acu1+N1[pos]
			C1=C1+1
		SiNo
			Acu2=Acu2+N1[pos]
			C2=C2+1
		FinSi
	FinPara
	N2[0]=Acu1/C1
	N2[1]=Acu2/C2
	Escribir "El promedio de los pares es ",N2[0]
	Escribir "El promedio de los impares es ",N2[1]
FinFuncion

Funcion ArreglosyCadenas3(Na)
	//Dada n realizar un algoritmo que presente la siguiente secuencia
	//n=6
	//respuesta= 20 5 15 10 5 -5 0
	
	Escribir "Respuesta"
	Para Pos=0 Hasta 5 Con Paso 1 Hacer
		Escribir " ",Na[Pos] Sin Saltar
	FinPara
FinFuncion

Funcion ArreglosyCadenas4(N1s,N2s,N3s)
	//Implementa un programa que copie los números de un arreglo a 2 arreglos en uno los 
	//números positivos y en el otro los negativos Ejemplo:
	//arreglo=[2,-6,4,-9, 12] arregloPositivo=[2,4,12] arregloNegativo[-6,-9]
	
	//Entrada: N1[5],N2[5],N3[5],pos=0,C1=0(Calculado),C2=0(Calculado)
	//Proceso:  Si N1[pos] > 0: C1=C1+1
	//N2[C1-1]=N1[pos]
	//Si N1[pos] < 0 Entonces C2=C2+1
	//N3[C2-1]=N1[pos]
	//Salida: Mostrar los numeros positivos y negativos
	
	
	Escribir "Introduzca 5 numeros para mostrar positivos y negativos"
	
	Para pos=0 Hasta 4 Con Paso 1 Hacer
		Escribir "Introduzca numero ",pos+1
		Leer N1s[pos]
	    Si N1s[pos] > 0
			C1=C1+1
			N2s[C1-1]=N1s[pos]
	    SiNo
			Si N1s[pos] < 0 Entonces
				C2=C2+1
				N3s[C2-1]=N1s[pos]
			FinSi
			
		FinSi
	FinPara
	
	Escribir "Los Numeros positivos son"
	Si C1=0 Entonces
		Escribir "No hay numeros Positivos:"
	SiNo
		Para pos=0 Hasta [C1-1] Con Paso 1 Hacer
			Escribir N2s[pos]," "
		FinPara
	FinSi
	
	Escribir " Los Numeros Negativos son:" 
	Si C2=0 Entonces
		Escribir "No hay numeros Negativos"
	SiNo
		Para Pos=0 Hasta [C2-1] Con Paso 1 Hacer
			Escribir N3s[pos]," "
		FinPara
	FinSi
FinFuncion

Funcion Arreglosycadenas5(N)
	//Leer una secuencia de números hasta que se ingrese un numero negativo.
	//Mostrar la suma de los pares y la cantidad de los números que son múltiplo de 3
    //Ejemplo:
	//secuencia: 4,14,3,0,21,2,-4
	//Respuesta
	//paresSuma=20
	//contMuliplos3=2
	//Entrada: N[100] pos=0 Mult13=0(Calculado) Pares=0(Calculado)
	//Proceso: Mientras N[pos]>=0 Hacer
	//Si N[pos] mod 2 = 0 Entonces Pares=Pares+N[pos]
	//Si N[pos] mod 3 = 0 Entonces Mult3=Mult3+1
	//pos=pos+1
	//Salida:Mostrar la suma de los pares y la cantidad de los numeros que son multiplos de 3
	
	Mientras N[pos]>=0 Hacer
		Si N[pos] mod 2 = 0 Entonces
			Pares=Pares+N[pos]
		FinSi
		Si N[pos] mod 3 = 0 Entonces
			Mult3=Mult3+1
		FinSi
		pos=pos+1
		Escribir "Ingrese otro numero"
		Leer N[pos]
	FinMientras
	Escribir "La suma de los numeros pares es: ",Pares
	Escribir "La cantidad de los numeros que son multiplo de 3 son: ",Mult3
FinFuncion

Funcion Arreglosycadenas6(Ne)
	//Leer una secuencia de números hasta que se ingrese un 0
	//y almacenarlos en un arreglo
	//Se pide recorrer el arreglo y mostrar la suma del cuadrado de cada numero.
    //Ejemplo: secuencia: 4,3,2,5,0
	//arreglo=[4,3,2,5]
	//exponentes= 16 9 4 25
	//respuestaSuma=54
	
	//Entrada: N[100] pos=0 suma=0(Calculado)
	//Proceso: Mientras N[pos] <> 0 suma = suma + N[pos]^2
	//pos = pos + 1
	//Salida:Mostrar la suma de los cuadrados
	Escribir "Ingrese un número cualquiera, para terminar ingrese 0:"
	Leer Ne[pos]
	Mientras Ne[pos] <> 0 Hacer
		suma = suma + Ne[pos]^2
		pos = pos + 1
		Escribir "Ingrese otro número:"
		Leer Ne[pos]
	FinMientras
	Escribir "La suma de los cuadrados de los números es: ", suma
FinFuncion

// FREDDY CALLE

Funcion Ejer28
	//7) Leer una secuencia de números hasta que se ingrese un numero par.
	//Mostrar la cantidad de los números mayores a 5 y la suma de los múltiplos de 5
	//Ejemplo:
	//secuencia: 3,5,15,7,9, 4
	//Respuesta
	//contMay5=3
	//sumaMultiplos5=20	
	Definir secuencia,pos,mayor5,mult5 como entero
	Dimension secuencia[100]
	pos=1
	Escribir "ingrese un numero"
	leer secuencia[pos]
	Mientras secuencia[pos] mod 2 <> 0 Hacer
		Si secuencia[pos] >5 Entonces
			mayor5=mayor5+secuencia[pos]
		FinSi
		Si secuencia[pos] mod 5 = 0 Entonces
			mult5=mult5+1
		FinSi 
		pos=pos+1
		Escribir "ingrese otro numero"
		leer secuencia[pos]
	FinMientras
	Escribir "No se lee numeros pares"
	Escribir "La suma de los numeros mayor a 5 es: ",mayor5
	Escribir "La cantidad de los numeros multiplos de 5 son: ",mult5
	
FinFuncion

Funcion ejer29
	//8) Leer una secuencia de números hasta que se ingrese un numero negativo
	//y almacenarlos en un arreglo
	//Se pide recorrer el arreglo y mostrar la suma de cada número elevado al cubo.
	//Ejemplo: secuencia: 4,3,2,5,-1
	//arreglo=[4,3,2,5]
	//exponentes= 64 27 8 125
	//respuestaSuma=224 
	Definir secuencia,pos,mult,suma como real
	Dimension secuencia[100]
	Dimension mult[1000]
	pos=1
	i=1
	suma=0
	Escribir "ingrese un numero"
	leer secuencia[pos]
	Mientras secuencia[pos] >0 Hacer
		pos=pos+1
		mult[i]=secuencia[i]*secuencia[i]*secuencia[i]
		suma=suma+mult[i]
		i=i+1
		Escribir "ingrese otro numero"
		Leer secuencia[pos]
	FinMientras
	Para i= 1 hasta [pos]-1 con paso 1 Hacer
		Escribir "la posicion ", i , " es: ", secuencia[i] , " elevado al cubo es: ", mult[i]
		
	FinPara
	Escribir "la suma de cada numero elevado al cubo es ", suma
FinFuncion


Funcion ejer30
	//9) Dado una frase indicar cuantas palabras tiene
	//Ejemplo:
	//frase="hola que tal".
	//contPalabras=3
	// Definir variables
	Definir frase Como cadena
	definir cantidad,pos,i Como Entero
	dimension cant[100]
	pos=0
	cantidad=0
	i=0
	// Obtener la frase del usuario
	Escribir "Ingrese una frase: "
	Leer frase
	cantidad=longitud(frase)
	// Recorrer la frase
	para i=0 hasta cantidad-1 con paso 1 Hacer
		si Subcadena(frase,i,i)=" " Entonces
			pos=pos+1
		FinSi
	FinPara
	Escribir "la frase tiene: ", pos+1, "palabras"
FinFuncion


Funcion ejer31
	//10) Leer una secuencia de números hasta que se ingrese un numero negativo
	//y almacenarlos en arreglo. Se pide recorrer el arreglo y cambiar cada elemento del arreglo por su doble.
	//Ejemplo: secuencia: 4,3,6,9,0
	//arreglo=[4,3,6,9] = [8,6,12,18]
	Definir secuencia,pos,doble como real
	Dimension secuencia[100]
	Dimension doble[1000]
	pos=1
	i=1
	suma=0
	Escribir "ingrese un numero"
	leer secuencia[pos]
	Mientras secuencia[pos] >0 Hacer
		pos=pos+1
		doble[i]=secuencia[i]*2
		i=i+1
		Escribir "ingrese otro numero"
		Leer secuencia[pos]
	FinMientras
	Para i= 1 hasta [pos]-1 con paso 1 Hacer
		Escribir "la posicion ", i , " es: ", secuencia[i] , " el doble es ", doble[i]
	FinPara
FinFuncion


Funcion ejer32
	//11) Leer una secuencia de caracteres hasta que se ingrese un punto.
	//Deberá mostrar cuantos "x" se ingresaron
	//Ejemplo:
	//secuencia="axyrx".
	//contX= 2
	definir Caracter como caracter
	definir ContX como entero
	// Leer caracteres
	Escribir "Ingrese un caracter: hasta que se ingrese un (.) termina la secuencia"
	Mientras (Caracter <> ".") Hacer
		Leer Caracter
		Si (Caracter = "") Entonces
		FinSi
		Si (Caracter = "x") Entonces
			ContX = ContX + 1
		FinSi
	FinMientras
	// Mostrar la cantidad de "x"
	Escribir "La cantidad de x es: ", ContX
FinFuncion


Funcion ejer33
	//12) Leer una secuencia de números hasta que se ingrese un 0
	//y almacenarlos en arreglo. Se pide recorrer el arreglo y pasar a otro
	//arreglo solo los números pares de cada elemento del arreglo1
	//Ejemplo: secuencia: 4,3,6,9,0
	//arreglo1=[4,3,6,9] arreglo2= [4,6]
	Definir secuencia,pos,mult como real
	Dimension secuencia[100]
	Dimension pares[1000]
	pos=1
	i=1
	Escribir "ingrese un numero"
	leer secuencia[pos]
	Mientras secuencia[pos] <> 0 Hacer
		pos=pos+1
		Escribir "ingrese otro numero"
		Leer secuencia[pos]
	FinMientras
	Para i= 1 hasta [pos]-1 con paso 1 Hacer
		Escribir "la posicion ", i , " es: ", secuencia[i] 
	FinPara
	Escribir " <<<<<<Numeros Pares>>>>>>"
	Para i= 1 hasta [i]-1  Hacer
		si secuencia[i] mod 2 = 0 Entonces
			pares[i] = secuencia[i]
			Escribir "la posicion ", i , " es: ", pares[i]
	    Finsi
	FinPara
FinFuncion


Funcion ejer34
	//13) Dado dos números presentar los valores mayores a 5 entre ellos incluidos el numero inicial y final
	//Ejemplo: numero1=2 numero2=10
	//salida= 6 7 8 9 10
	Definir numinicial,numfinal,indice Como Entero
	Escribir "ingrese el numero inicial"
	Leer numinicial
	Escribir "ingrese el numero final"
	Leer numfinal
	indice=numinicial
	Mientras (indice <= numfinal) Hacer
		// Si el número actual es mayor a 5, se muestra
		Si (indice > 5) Entonces
			Escribir indice
		FinSi
		indice = indice + 1
	FinMientras
	
FinFuncion


Funcion ejer35
	//14) Elaborar un algoritmo que lea una serie de edades de los alumnos de la facultad FACI y 
	//los guarde en un arreglo. Se pide:
	//· calcular el promedio general de las edades de los alumnos
	//· La cantidad y el promedio de las edades mayores o iguales a 18
	//· La cantidad y el promedio de las edades menores a 18
	//Ejemplo:
	//Edades=[20,17,20,23]
	//promedioGeneral=20
	//cantMayorIgual18= 3, promedioMayorIgual18=21
	//cantMenor18= 1, promedioMenor18=17
	Definir cantidad, sumaEdades, promedioGeneral, cantidadMayores18, sumaMayores18, promedioMayores18, cantidadMenores18, sumaMenores18, promedioMenores18 Como Real
    Definir edades Como Entero
    Definir i Como Entero
	
    // Inicialización de variables
    cantidad = 0
    sumaEdades = 0
    cantidadMayores18 = 0
    sumaMayores18 = 0
    cantidadMenores18 = 0
    sumaMenores18 = 0
	
    // Ingreso de edades
    Escribir("Ingrese la cantidad de alumnos:")
    Leer cantidad
	
    Para i = 1 Hasta cantidad Hacer
        Escribir "Ingrese la edad del alumno ", i, ":"
        Leer edades
		
        sumaEdades = sumaEdades + edades
		
        Si edades >= 18 Entonces
            cantidadMayores18 = cantidadMayores18 + 1
            sumaMayores18 = sumaMayores18 + edades
        Sino
            cantidadMenores18 = cantidadMenores18 + 1
            sumaMenores18 = sumaMenores18 + edades
        FinSi
    FinPara
	
    // Calcular promedio general
    Si cantidad > 0 Entonces
        promedioGeneral = sumaEdades / cantidad
        Escribir "Promedio general de edades: ", promedioGeneral
    Sino
        Escribir("No se ingresaron edades.")
    FinSi
	
    // Calcular promedio de mayores de 18
    Si cantidadMayores18 > 0 Entonces
        promedioMayores18 = sumaMayores18 / cantidadMayores18
        Escribir("Alumnos mayores o iguales a 18 años:")
        Escribir "Cantidad: ", cantidadMayores18
        Escribir "Promedio de edades: ", promedioMayores18
    Sino
        Escribir("No hay alumnos mayores o iguales a 18 años.")
    FinSi
	
    // Calcular promedio de menores de 18
    Si cantidadMenores18 > 0 Entonces
        promedioMenores18 = sumaMenores18 / cantidadMenores18
        Escribir("Alumnos menores a 18 años:")
        Escribir "Cantidad: ", cantidadMenores18
        Escribir "Promedio de edades: ", promedioMenores18
    Sino
        Escribir("No hay alumnos menores a 18 años.")
    FinSi
FinFuncion


Funcion ejer36
	//15) Dado dos números presentar los valores Impares comprendidos entre ellos(excluidos el valor inicial y final)
	//Ejemplo: numero1=2 numero2=11
	//salida: 3 5 7 9	
	Definir numinicial,numfinal,indice,pares Como Entero
	Escribir "ingrese el numero inicial"
	Leer numinicial
	Escribir "ingrese el numero final"
	Leer numfinal
	indice=numinicial+2
	Mientras (indice <= numfinal-1) Hacer
		// Si el número actual es mayor a 5, se muestra
		Si (indice mod 2 <> 0 ) Entonces
			Escribir indice
		FinSi
		indice= indice+1
	FinMientras
FinFuncion

// JOEL BRITO 

//16) Elaborar un algoritmo que lea una serie de sueldos de los empleados de la unemi y los
//guarde en un arreglo. Se pide:
//	· Presentar el sueldo más alto de los empleados
//	· La cantidad y el promedio de os sueldos de los empleados
//Ejemplo:
//	sueldos=[500,700,800,600]
//	SueldoMasAlto= 800
//	cantidadSueldos=4 promedioGeneral=650
//    Definir sueldos como Real
//    Definir i, n como Entero
//    Definir mayor, suma como Real
//	dimension sueldos[100]
//    Escribir "Ingrese la cantidad de sueldos a ingresar: "
//    Leer n
//	
//    Para i <- 1 Hasta n Con Paso 1 Hacer
//        Escribir "Ingrese el sueldo ", i, ": "
//        Leer sueldos[i]
//    FinPara
//	
//    mayor <- sueldos[1]
//    suma <- sueldos[1]
//	
//    Para i <- 2 Hasta n Con Paso 1 Hacer
//        Si sueldos[i] > mayor Entonces
//            mayor <- sueldos[i]
//        FinSi
//        suma <- suma + sueldos[i]
//    FinPara
//	
//	Escribir "El sueldo más alto es: ", mayor
//    Escribir "La cantidad de sueldos ingresados es: ", n
//    Escribir "El promedio de los sueldos ingresados es: ", suma / n
Funcion ejerc16(num,suma)
	
	dimension sueldos[100]
	
	Para i <- 1 Hasta num Con Paso 1 Hacer
		Escribir "Ingrese el sueldo ", i, ": "
		Leer sueldos[i]
	FinPara
	
	mayor <- sueldos[1]
	suma <- sueldos[1]
	
	Para i <- 2 Hasta num Con Paso 1 Hacer
		Si sueldos[i] > mayor Entonces
			mayor <- sueldos[i]
		FinSi
		suma <- suma + sueldos[i]
	FinPara
	Escribir "El sueldo más alto es: ", mayor
	Escribir "La cantidad de sueldos ingresados es: ", num
	Escribir "El promedio de los sueldos ingresados es: ", suma / num
FinFuncion

//17) Dadas dos frase indicar la de mayor longitud"
//Definir frase1, frase2 como Cadena
//Definir longitud1, longitud2 como Entero
//
//Escribir "Ingrese la primera frase: "
//Leer frase1
//Escribir "Ingrese la segunda frase: "
//Leer frase2
//
//longitud1 <- Longitud(frase1)
//longitud2 <- Longitud(frase2)
//
//Si longitud1 > longitud2 Entonces
//	Escribir "La primera frase es más larga."
//Sino
//	Si longitud2 > longitud1 Entonces
//		Escribir "La segunda frase es más larga."
//	Sino
//		Escribir "Ambas frases tienen la misma longitud."
//	FinSi
//finsi 
Funcion EJERCI17(frase1,frase2)
	
	longitud1 <- Longitud(frase1)
	longitud2 <- Longitud(frase2)
	
	Si longitud1 > longitud2 Entonces
		Escribir "La primera frase es más larga."
	Sino
		Si longitud2 > longitud1 Entonces
			Escribir "La segunda frase es más larga."
		Sino
			Escribir "Ambas frases tienen la misma longitud."
		FinSi
	finsi 
FinFuncion


//18
//Definir cadena como Cadena
//Definir i, contador como Entero
//
//Escribir "Ingrese una cadena: "
//Leer cadena
//
//contador <- 0
//
//Para i <- 1 Hasta Longitud(cadena) Con Paso 1 Hacer
//	Si Subcadena(cadena, i, i) = "," O Subcadena(cadena, i, i) = "." O Subcadena(cadena, i, i) = ";" O Subcadena(cadena, i, i) = ":" Entonces
//		contador <- contador + 1
//	FinSi
//FinPara
//
//Escribir "La cantidad de caracteres especiales en la cadena es: ", contador
Funcion contador=tarea18(a , b , c ) 
	Escribir "Ingrese una cadena: "
	Leer cadena
	Para i <- 1 Hasta Longitud(cadena) Con Paso 1 Hacer
		Si Subcadena(cadena, i, i) = "," O Subcadena(cadena, i, i) = "." O Subcadena(cadena, i, i) = ";" O Subcadena(cadena, i, i) = ":" Entonces
			contador <- contador + 1
		FinSi
	FinPara
	
FinFuncion


//19
//definir frase como caracter 
//definir n , c , v , x como entero 
//escribir "ingresa la frase "
//leer frase 
//n = Longitud(frase) 
//x = 1 
//c = 0
//v = 0
	//mientras x <= n Hacer
//	segun subcadena(frase ,x,x ) hacer 
//		"a" o "A": 
//			v <- v + 1 
//		"e" o "E":
//			v <- v + 1 
//		"i" o "I":
//			v <- v + 1 
//		"o" o "O":
//			v <- v + 1 
//		"u" o "U": 
//			v <- v + 1 
//		De Otro Modo:
//			c <- c + 1 
//	FinSegun
//	x <- x + 1 
	//FinMientras
	//escribir "la frase " frase ,"tiene " ,v, " vocales "
//escribir"la frase " frase ," tiene " ,c  , " consonantes "
Funcion tarea19( c , v , x)
	escribir "ingresa la frase "
	leer frase 
	n = Longitud(frase) 
	mientras x <= n Hacer
		segun subcadena(frase ,x,x ) hacer 
			"a" o "A": 
				v <- v + 1 
			"e" o "E":
				v <- v + 1 
			"i" o "I":
				v <- v + 1 
			"o" o "O":
				v <- v + 1 
			"u" o "U": 
				v <- v + 1 
			De Otro Modo:
				c <- c + 1 
		FinSegun
		x <- x + 1 
	FinMientras
	escribir "la frase " frase ," tiene " ,v, " vocales "
	escribir"la frase " frase ," tiene " ,c  , " consonantes "
	
FinFuncion


//20)Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
//Definir frase Como Caracter
//Definir palabras Como Entero
//Definir i Como Entero
//
//Escribir "Ingresa una frase:"
//Leer frase
//
//palabras = 1
//i = 0
//
//Mientras i < Longitud(frase) Hacer
//	Si SubCadena(frase, i, 1) = " " Entonces
//		palabras = palabras + 1
//	FinSi
//	i = i + 1
//FinMientras
//
//Escribir "La frase tiene ", palabras, " palabras."
FuncioN EJER20(frase,palabra)
	
	
	palabras = 1
	i = 0
	
	Mientras i < Longitud(frase) Hacer
		Si SubCadena(frase, i, 1) = " " Entonces
			palabras = palabras + 1
		FinSi
		i = i + 1
	FinMientras
	
	Escribir "La frase tiene ", palabras, " palabras."
FinFuncion

//21) Presentar la suma de los dígitos de una cedula"
//Definir cedula Como Caracter
//Definir suma Como Entero
//Definir i Como Entero
//definir n como cadena 
//Escribir "Ingresa una cédula:"
//Leer cedula
//suma = 0
//i = 0
//
//Mientras i < Longitud(cedula) Hacer
//	suma = suma + longitud(SubCadena(cedula , i, i))
//	i = i + 1
//FinMientras
//Escribir "La suma de los dígitos de la cédula es ", suma, "."
Funcion ejerc21(cedula,suma)
	
	suma = 0
	i = 0
	
	Mientras i < Longitud(cedula) Hacer
		suma = suma + longitud(SubCadena(cedula , i, i))
		i = i + 1
	FinMientras
	Escribir "La suma de los dígitos de la cédula es ", suma, "."
FinFuncion


//22)Indicar si una palabra es palíndroma". Ejemplo: "ana" es palíndroma por se lee igual deinicio a fin que de fin a inicio
//Definir palabra , x  Como Caracter
//Definir i, long  Como Entero
//Escribir "Ingresa una palabra:"
//Leer palabra
//
//long = Longitud(palabra)
//
//Para i <- long hasta 1 hacer
//	x <- concatenar(x, SubCadena(palabra, i, i))
//Fin Para
//
//Si palabra = x entonces
//	Escribir "La palabra es palíndroma."
//Sino
//	Escribir "La palabra no es palíndroma."
//Fin Si
//
Funcion EJERC22(palabra)
	
	long = Longitud(palabra)
	
	Para i <- long hasta 1 hacer
		x <- concatenar(x, SubCadena(palabra, i, i))
	Fin Para
	
	Si palabra = x entonces
		Escribir "La palabra es palíndroma."
	Sino
		Escribir "La palabra no es palíndroma."
	Fin Si
FinFuncion

//23) Presentar la posición de un carácter cualquiera dentro de una cadena"
//Definir arreglo como caracter
//dimension arreglo[5]; 
//Escribir "Ingrese 5 caracteres: "
//Para i <- 1 Hasta 5 Con Paso 1 Hacer
//	Leer arreglo[i]
//FinPara
//Escribir "Los caracteres ingresados son: "
//Para i <- 1 Hasta 5 Con Paso 1 Hacer
//	Escribir arreglo[i]
//FinPara
Funcion EJERC23(arreglo)
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		Leer arreglo[i]
	FinPara
	Escribir "Los caracteres ingresados son: "
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir arreglo[i]
	FinPara
finfuncion 
// Algoritmo principal del proyecto
Algoritmo Proyecto
	Definir menuPrincipal,menuNumeros,menuCadenasyarreglos,titulo,titulo2,opc,opcn,apcc,apca Como Caracter
	Definir pos,lim Como Entero
	Dimension menuPrincipal[3],menuNumeros[22],menuCadenasyarreglo[24]
	// Arreglo menu principal
	menuPrincipal[0] = "  1)Ejercicios de 0peraciones con números"
	menuPrincipal[1] = "  2)Ejercicios con Cadenas Y ARREGLO"
	menuPrincipal[2] = "  3)Salir"
	
	
	// arreglo submenu numeros
	menuNumeros[0] = "  1)CANTIDAD DE COLAS"
	
	menuNumeros[1] = "  2)ASOCIACION DE VINICULTORES"
	
	menuNumeros[2] = "  3)RESIDUO DE UN NUMERO"
	
	menuNumeros[3] = "  4)CONSULTORIO DR. PAEZ"
	
	menuNumeros[4] = "  5)MITAD Y DIVISOR"
	
	menuNumeros[5] = "  6)BANCO XYZ"
	
	menuNumeros[6] = "  7)DIVISOR Y DOBLE"
	
	menuNumeros[7] = "  8)BANCO POO"
	
	menuNumeros[8] = "  9)NEGATIVO MENOR A -20 PAR O IMPAR M:7"
	
	menuNumeros[9] = "  10)PRECIO DE LA PITAJAYA"
	
	menuNumeros[10]= "  11)PAR O IMPAR DIVISIBLE PARA 5"
	
	menuNumeros[11]= "  12)COSTO DE COMETA"
	
	menuNumeros[12]= "  13)NUMERO DE DIGITOS"
	
	menuNumeros[13]= "  14)NUMERO CAPICUA "
	
	menuNumeros[14]= "  15)DIVISORES DE UN NUMERO"
	
	menuNumeros[15]= "  16)SUMA DE DIVISORES"
	
	menuNumeros[16]= "  17)CANTIDAD DE DIVISORES"
	
	menuNumeros[17]= "  18)NUMERO PERFECTO"
	
	menuNumeros[18]= "  19)NUMERO PRIMO"
	
	menuNumeros[19]= "  20)NUMEROS PRIMOS GEMELOS"
	
	menuNumeros[20]= "  21)NUMEROS PRIMOS AMIGOS"
	
	menuNumeros[21]= "  22)Salir"
	
	// MENU DE CADENAS Y ARREGLOS
	
	menuCadenasyarreglo[0] = "  1)DADO N PRESENTAR SECUENCIA N=6"
	
	menuCadenasyarreglo[1] = "  2)PROMEDIO PARES Y IMPARES"
	
	menuCadenasyarreglo[2] = "  3)DADO N PRESENTAR SECUENCIA N=6"
	
	menuCadenasyarreglo[3] = "  4)ARREGLO NEGATIVO Y POSITIVO"
	
	menuCadenasyarreglo[4] = "  5)SUMA DE PARES Y MULTIPLO DE 3"
	
	menuCadenasyarreglo[5] = "  6)ARREGLO AL CUADRADO"
	
	menuCadenasyarreglo[6] = "  7)CANTIDAD MAYORES A 5 Y MULTIPLO DE 5 "
	
	menuCadenasyarreglo[7] = "  8)ARREGLO ELEVADO AL CUBO"
	
	menuCadenasyarreglo[8] = "  9)CANTIDAD DE FRASES"
	
	menuCadenasyarreglo[9] = "  10)CANBIAR ARREGLO POR SU DOBLE"
	
	menuCadenasyarreglo[10] = "  11)CUANTAS X SE INGRESARON"
	
	menuCadenasyarreglo[11] = "  12)PASAR ARREGLO CON A NUMEROS PARES"
	
	menuCadenasyarreglo[12] = "  13)VALORES MAYORES A 5"
	
	menuCadenasyarreglo[13] = "  14)EDAD GENERAL"
	
	menuCadenasyarreglo[14] = "  15)PRESENTAR VALORES IMPARES"
	
	menuCadenasyarreglo[15] = "  16)SERIE DE SUELDO"
	
	menuCadenasyarreglo[16] = "  17)FRASE CON MAYOR LONGITUD"
	
	menuCadenasyarreglo[17] = "  18)CONTADOR DE ,.;:"
	
	menuCadenasyarreglo[18] = "  19)VOCALES, CONSOMNANTE Y DIGITOS"
	
	menuCadenasyarreglo[19] = "  20)CUANTAS PALABRAS HAY EN UNA FRASE"
	
	menuCadenasyarreglo[20] = "  21)DIGITOS DE CEDULA"
	
	menuCadenasyarreglo[21] = "  22)PALABRA PALINDROMA "
	
	menuCadenasyarreglo[22] = "  23)POSICION DE CARACTER"
	
	menuCadenasyarreglo[23] = "  24)Salir"
		
	
	opc=""
    Mientras opc <> "4" Hacer
		Borrar Pantalla
		opc=presentarMenu("Menu Principal",menuPrincipal,3)
		Segun opc Hacer
			"1":
				opcn=""
				Mientras opcn <> "22" Hacer         
					opcn=presentarMenu("Menu Numeros",menuNumeros,22)
					Segun opcn Hacer
						"1":
							Escribir "             EJERCICIO 1"
							Escribir "        <<CANTIDAD DE COLAS>> "
							Escribir "INGRESE LA CANTIDAD DE COLAS QUE VA A COMPRAR"
							//LEER canti
							Leer canti
							TIENDA(canti)
							Esperar 3 Segundos
						"2":
							Escribir "           EJERCICIO 2"
							Escribir "     <<ASOCIACION VINICULTORES>> "
							Escribir "CUANTOS KILOS DE UVA VA A COMPRAR"
							tipo=""
							Leer com
							Escribir "INGRESE EL TIPO DE UVA A o B"
							Leer tipo
							Escribir "INGRESE EL TAMAÑO DE UVA 1 o 2"
							// LEER TAMAÑO
							Leer tamaño
							ASOCIACIONVINO(com,tipo,tamaño)
							Esperar 3 Segundos
						"3":
							Escribir "          EJERCICIO 3"
							Escribir "     <<RESIDUO DE UN NUMERO>> "
							Escribir "INGRESE EL DIVIDENDO"
							Leer NUM1
							Escribir "INGRESE EL DIVISOR"
							LEER NUM2
							resdid(NUM1,NUM2,residuo)					
							Esperar 3 Segundos
						"4":
							Escribir "           EJERCICIO 4"
							Escribir "     <<CONSULTORIO DR. PAEZ>> "
							// DEFINO MIS VARIBLES 
							Definir cita Como Real
							// PREGUNTAMOS AL USUARIO SU NUMERO DE CITA 
							Escribir "¿CUAL ES EL NUMERO DE SU CITA?"
							// LEER CITA 
							Leer cita
							cit(cita)
							Esperar 3 Segundos
						"5":
							Escribir "        EJERCICIO 5"
							Escribir "     <<MITAD Y DIVISOR>> "
							Escribir "INGRESE UN NUMERO"
							Leer num1
							Escribir "INGRESE UN NUMERO"
							Leer num2
							Escribir "INGRESE UN NUMERO"
							Leer num3
							Escribir "INGRESE UN NUMERO"
							Leer num4
							NUMER(num1,num2,num3,num4)
							Esperar 3 Segundos
						"6":
								Escribir "      EJERCICIO 6"
								Escribir "     <<BANCO XYZ>> "
							Escribir "¿QUE TIPO DE TARJETA TIENE?"
							Leer tipos
							Escribir "INGRESE EL LIMITE DE SU TARJETA DE CREDITO"
							Leer CANTID
							BANCOXYZ(tipos,CANTID)	
							Esperar 3 Segundos
						"7":
							Escribir "         EJERCICIO 7"
							Escribir "     <<DIVISOR Y DOBLES>> "
							Escribir "INGRESE UN NUMERO"
							Leer num1
							Escribir "INGRESE UN NUMERO"
							Leer num2
							Escribir "INGRESE UN NUMERO"
							Leer num3
							Escribir "INGRESE UN NUMERO"
							Leer num4
							DIVISOR(num1,num2,num3,num4)
							Esperar 3 Segundos
						"8":
							Escribir "      EJERCICIO 8"
							Escribir "     <<BANCO POO>> "
							Escribir "¿QUE TIPO DE TARJETA TIENE?"
							Leer tipoz
							Escribir "INGRESE EL LIMITE DE SU TARJETA DE CREDITO"
							Leer cant
							BANCOPOO(tipoz,cant)
							Esperar 3 Segundos
						"9":
							Escribir "               EJERCICIO 9"
							Escribir "  <<NEGATIVO MENOR A -20 PAR O IMPAR M:7S>> "
							Escribir "INGRESE UN NUMERO"
							Leer num1
							paroimpar(num1)
							Esperar 3 Segundos
						"10":
							Escribir "EJERCICIO 10"
							definir precioinicial,materiap como real
							Escribir 'ingrese precio'
							leer precioinicial
							Escribir 'ingrese el color de la pitajaya,amarilla(1),colorada(2)'
							leer color
							Escribir 'ingrese el tamaño 1,2'
							leer tamaño
							PrecioPitajaya(precioinicial,tamaño,color)
							Esperar 3 Segundos
						"11":
							Escribir "EJERCICIO 11"
							Escribir 'ingrese numero'
							leer num
							NumeroParImparDivisible5(num)
							Esperar 3 Segundos
						"12":
							Escribir "EJERCICIO 12"
							Escribir 'ingrese el numero de clave (1, 2, 3, 4, 5 y 6)'
							leer clave
							Escribir 'ingrese el costo de materia prima'
							leer materiap
							CostoDeVentaCometa(clave,materiap)
							Esperar 3 Segundos
						"13":
							Escribir "EJERCICIO 13"
							escribir 'ingrese un numero para ver sus digitos'
							leer numdigitos
							NumeroDeDigitos(numdigitos)
							Esperar 3 Segundos
						"14":
							Escribir "EJERCICIO 14"
							Escribir 'ingrese un numero de 3 digitos'
							leer numcapi
							NumeroCapicua(numcapi)
							Esperar 3 Segundos
						"15":
							Escribir "EJERCICIO 15"
							Escribir 'ingrese numero'
							leer numdiv
							DivisoresNum(numdiv)
							Esperar 3 Segundos
						"16":
							Escribir "EJERCICIO 16"
							Escribir 'ingrese numero'
							leer numdiv
							resp=SumaDivisores(numdiv)
							Escribir "EL RESULTADO ES ",resp,""
							Esperar 3 Segundos
						"17":
							Escribir "EJERCICIO 17"
							Escribir 'ingrese numero'
							leer numdiv
							CantidadDivisores(numdiv)
							Esperar 3 Segundos
						"18":
							Escribir "EJERCICIO 18"
							Escribir 'La suma de divisores es: ' resp
							resp=NumeroPerfecto(numdiv)
							Esperar 3 Segundos
							
						"19":
							Escribir "EJERCICIO 19"
							Escribir "Ingrese un Numero"
							Leer N
							Operaciones19(N,"Es un numero primo")						
							Esperar 3 Segundos
						"20":
							Escribir "EJERCICIO 20"
							Escribir "Ingrese Numero 1"
							Leer N1
							Escribir "Ingrese Numero 2"
							Leer N2
							Operaciones20(N1,N2,"Es un numero primo","Es un numero primo")
							Esperar 3 Segundos	
						"21":
							Escribir "EJERCICIO 21"
							Escribir "Ingrese Numero 1"
							Leer N1
							Escribir "Ingrese Numero 2"
							Leer N2
							Operaciones21(N1,N2,0,0)
							
							Esperar 3 Segundos
						
						"22":
							Escribir "Regresando al Menu Principal"
							Esperar 3 Segundos
						De Otro Modo:
							Escribir "Opcion invalida..."
							Esperar 3 Segundos
					Fin Segun
				FinMientras 
			"2":
				opcn=""
				Mientras opcn <> "24" Hacer         
					opcn=presentarMenu("Menu cadena y arreglo",menuCadenasyarreglo,24)
					Segun opcn Hacer
								"1":
									Escribir "EJERCICIO 1"
									Dimension Ni[6]
									Ni[0]=2
									Ni[1]=2
									Ni[2]=4
									Ni[3]=8
									Ni[4]=32
									Ni[5]=256
									Arreglosycadenas1(Ni)						
									Esperar 3 Segundos
								"2":
									Escribir "EJERCICIO 2"
									Dimension N1[4]
									Dimension N2[2]
									Arreglosycadenas2(N1,N2)
									Esperar 3 Segundos
								"3":
									Escribir "EJERCICIO 3"
									Dimension Na[6]
									Na[0]=20
									Na[1]=5
									Na[2]=15
									Na[3]=10
									Na[4]=5
									Na[5]=-5
									ArreglosyCadenas3(Na)
									Esperar 3 Segundos
								"4":
									Escribir "EJERCICIO 4"
									Dimension N1s[5]
									Dimension N2s[5]
									Dimension N3s[5]
									ArreglosyCadenas4(N1s,N2s,N3s)						
									Esperar 3 Segundos
								"5":
									Escribir "EJERCICIO 5"							
									Dimension N[100]
									Escribir "Ingrese Numero "
									pos=0
									Leer N[pos]
									Arreglosycadenas5(N)
									Esperar 3 Segundos
								"6":
									Escribir "EJERCICIO 6"
									Definir Suma Como real
									Dimension Ne[100]
									pos=0
									suma=0
									Arreglosycadenas6(Ne)
									Esperar 3 Segundos
								"7":
									Escribir "EJERCICIO 7"
									Ejer28()
									escribir ""
									Esperar 3 Segundos
								"8":
									Escribir "EJERCICIO 8"
									Ejer29()
									escribir ""
									Esperar 3 Segundos
								"9":
									Escribir "EJERCICIO 9"
									Ejer30()
									escribir ""
									Esperar 3 Segundos
								"10":
									Escribir "EJERCICIO 10"
									Ejer31()
									escribir ""
									Esperar 3 Segundos
								"11":
									Escribir "EJERCICIO 11"
									Ejer32()
									escribir ""
									Esperar 3 Segundos
								"12":
									Escribir "EJERCICIO 12"
									Ejer33()
									escribir ""
									Esperar 3 Segundos
								"13":
									Escribir "EJERCICIO 13"
									Ejer34()
									escribir ""
									Esperar 3 Segundos
								"14":
									Escribir "EJERCICIO 14"
									Ejer35()
									escribir ""
									Esperar 3 Segundos
								"15":
									Escribir "EJERCICIO 15"
									Ejer36()
									escribir ""
									Esperar 3 Segundos
								"16":
									Escribir "EJERCICIO 16"
									Definir sueldos como Real
									Definir i, num como Entero
									Escribir "Ingrese la cantidad de sueldos a ingresar: "
									Leer num
									ejerc16(num,suma)
									Esperar 3 Segundos
								"17":	
									Escribir "EJERCICIO 17"
									Definir frase1, frase2 como Cadena
									Definir longitud1, longitud2 como Entero
									Escribir "Ingrese la primera frase: "
									Leer frase1
									Escribir "Ingrese la segunda frase: "
									Leer frase2
									EJERCI17(frase1,frase2)
									Esperar 3 Segundos
								"18":
									Escribir "EJERCICIO 18"
									Definir cadena como Cadena
									contador <- 0
									contador=tarea18(a , b , c ) 
									Escribir "La cantidad de caracteres especiales en la cadena es: ", contador
									Esperar 3 Segundos
								"19":
									Escribir "EJERCICIO 19"
									definir frase como caracter 
									x = 1 
									c = 0
									v = 0
									tarea19( c , v , x)
									Esperar 3 Segundos
								"20":
									Escribir "EJERCICIO 20"
									Definir palabras Como Entero
									Escribir "Ingresa una frase:"
									Leer frase
									EJER20(frase,palabra)
									Esperar 3 Segundos
									
								"21":
									Escribir "EJERCICIO 21"
									Definir cedula Como Caracter
									Definir i Como Entero
									definir n como cadena 
									Escribir "Ingresa una cédula:"
									Leer cedula
									ejerc21(cedula,suma)
									Esperar 3 Segundos
								"22":
									Escribir "EJERCICIO 22"
									Escribir "Ingresa una palabra:"
									Leer palabra
									EJERC22(palabra)
									Esperar 3 Segundos
								"23":
									Escribir "EJERCICIO 23"
									Definir arreglo como caracter
									dimension arreglo[6]=i 
									Escribir "Ingrese 5 caracteres: "
									EJERC23(arreglo)
									Esperar 3 Segundos
								"24":
									Escribir "Regresando al Menu Principal"
									Esperar 3 Segundos
								De Otro Modo:
									Escribir "Opcion invalida..."
									Esperar 3 Segundos
							Fin Segun
						FinMientras 
		
					"3":
						Escribir "Gracias por usar el Sistema"
						Esperar 3 Segundos
		Fin Segun
    Fin Mientras


FinAlgoritmo
