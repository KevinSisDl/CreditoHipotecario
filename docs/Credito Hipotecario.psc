Algoritmo CreditoHipotecario
    Definir montoCasa, añosPrestamo, enganche, montoFinanciar, interesAnual, interes, interesesAcumulados, totalUtilizado Como Real;
    Definir año Como Entero;
	
    Escribir "Ingrese el monto de la casa:";
    Leer montoCasa;
    Escribir "Ingrese el número de años del préstamo:";
    Leer añosPrestamo;
    Escribir "Ingrese el enganche de la casa:";
    Leer enganche;
    
	// Calcular el monto a financiar
	montoFinanciar = montoCasa - enganche;
    interesAnual = 0.07; // Tasa de interés fija del 7%
    
	// Inicializar variable de intereses acumulados
	interesesAcumulados = 0; 
    
    Escribir "TABLA CREDITO HIPOTECARIO";
    Escribir "-----------------------------------------------";
    Escribir "Año	|	Enganche	|	Monto	|	Tasa Interés	|	Interés	|	Intereses Acumulados";
    Escribir "-----------------------------------------------";
	
	// Calcular y mostrar intereses acumulados
    Para año <- 1 Hasta añosPrestamo Hacer
		interes = montoFinanciar * interesAnual;
		interesesAcumulados = interesesAcumulados + interes;
		
		// Mostrar resultados
		Si Año = 1 Entonces
            Escribir año, "	  |	 ", enganche, "	  |  ", montoCasa, "   |  ", interesAnual * 100, "%  |  ", interes, "   |  ", interesesAcumulados;
        Sino
            Escribir año, "  |    -    | ", montoCasa, "   |   ", interesAnual * 100, "%   |   ", interes, "   |  ", interesesAcumulados;
        FinSi;
    FinPara;
	
	// Calcular el total de dinero utilizado en el prestamo
	totalUtilizado = enganche + montoFinanciar + interesesAcumulados;
	Escribir "Total de dinero utilizado para el prestamo:", totalUtilizado;
FinAlgoritmo
