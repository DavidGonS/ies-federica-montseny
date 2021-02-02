import java.util.Scanner;

public class MainBanco {
    static Scanner scan = new Scanner(System.in);

    static Banco info() {
        System.out.println("INTRODUCE EL NOMBRE: ");
        String nombre = scan.next();
        System.out.println("INTRODUCE EL NUMERO DE CLIENTES: ");
        int clientes = scan.nextInt();
        System.out.println("INTRODUCE EL NUMERO DE CUENTAS: ");
        int cuentas = scan.nextInt();

        Banco banco = new Banco(nombre, clientes, cuentas);
        return banco;
    }
}
