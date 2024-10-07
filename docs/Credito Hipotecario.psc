Algoritmo CreditoHipotecario
    Definir montoCasa, a�osPrestamo, enganche, montoFinanciar, interesAnual, interes, interesesAcumulados, totalUtilizado Como Real;
    Definir a�o Como Entero;
	
    Escribir "Ingrese el monto de la casa:";
    Leer montoCasa;
    Escribir "Ingrese el n�mero de a�os del pr�stamo:";
    Leer a�osPrestamo;
    Escribir "Ingrese el enganche de la casa:";
    Leer enganche;
    
	// Calcular el monto a financiar
	montoFinanciar = montoCasa - enganche;
    interesAnual = 0.07; // Tasa de inter�s fija del 7%
    
	// Inicializar variable de intereses acumulados
	interesesAcumulados = 0; 
    
    Escribir "TABLA CREDITO HIPOTECARIO";
    Escribir "-----------------------------------------------";
    Escribir "A�o	|	Enganche	|	Monto	|	Tasa Inter�s	|	Inter�s	|	Intereses Acumulados";
    Escribir "-----------------------------------------------";
	
	// Calcular y mostrar intereses acumulados
    Para a�o <- 1 Hasta a�osPrestamo Hacer
		interes = montoFinanciar * interesAnual;
		interesesAcumulados = interesesAcumulados + interes;
		
		// Mostrar resultados
		Si A�o = 1 Entonces
            Escribir a�o, "	  |	 ", enganche, "	  |  ", montoCasa, "   |  ", interesAnual * 100, "%  |  ", interes, "   |  ", interesesAcumulados;
        Sino
            Escribir a�o, "  |    -    | ", montoCasa, "   |   ", interesAnual * 100, "%   |   ", interes, "   |  ", interesesAcumulados;
        FinSi;
    FinPara;
	
	// Calcular el total de dinero utilizado en el prestamo
	totalUtilizado = enganche + montoFinanciar + interesesAcumulados;
	Escribir "Total de dinero utilizado para el prestamo:", totalUtilizado;
FinAlgoritmo
