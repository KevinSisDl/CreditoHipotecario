import java.util.Scanner;

public class CreditoHipotecario {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double montoCasa, añosPrestamo, enganche, montoFinanciar, interesAnual, interes, interesesAcumulados, totalUtilizado;
        int año;

        System.out.print("Ingrese el monto de la casa: ");
        montoCasa = scanner.nextDouble();
        System.out.print("Ingrese el número de años del préstamo: ");
        añosPrestamo = scanner.nextDouble();
        System.out.print("Ingrese el enganche de la casa: ");
        enganche = scanner.nextDouble();

        montoFinanciar = montoCasa - enganche;
        interesAnual = 0.07;
        interesesAcumulados = 0;

        System.out.println("\n" + String.format("%50s", "TABLA CREDITO HIPOTECARIO"));
        System.out.println("---------------------------------------------------------");
        System.out.printf("%-5s | %-10s | %-10s | %-12s | %-10s | %-20s\n", "Año", "Enganche", "Monto", "Tasa Interés", "Interés", "Intereses Acumulados");
        System.out.println("---------------------------------------------------------");

        for (año = 1; año <= añosPrestamo; año++) {
            interes = montoFinanciar * interesAnual;
            interesesAcumulados += interes;

            if (año == 1) {
                System.out.printf("%-5d | %-10.2f | %-10.2f | %-12.2f%% | %-10.2f | %-20.2f\n", año, enganche, montoCasa, interesAnual * 100, interes, interesesAcumulados);
            } else {
                System.out.printf("%-5d | %-10s | %-10.2f | %-12.2f%% | %-10.2f | %-20.2f\n", año, "-", montoCasa, interesAnual * 100, interes, interesesAcumulados);
            }
        }

        totalUtilizado = enganche + montoFinanciar + interesesAcumulados;
        System.out.printf("\nTotal de dinero utilizado para el préstamo: %.2f\n", totalUtilizado);
        
        scanner.close();
    }
}
