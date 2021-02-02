import java.util.Arrays;
import java.util.Objects;

public class Banco {
    private String nombre;
    private Clientes[] clientes;
    private Cuentas[] cuentas;

    public Banco(String nombre, Clientes[] clientes, Cuentas[] cuentas) {
        this.nombre = nombre;
        this.clientes = clientes;
        this.cuentas = cuentas;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Clientes[] getClientes() {
        return clientes;
    }

    public void setClientes(Clientes[] clientes) {
        this.clientes = clientes;
    }

    public Cuentas[] getCuentas() {
        return cuentas;
    }

    public void setCuentas(Cuentas[] cuentas) {
        this.cuentas = cuentas;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Banco banco = (Banco) o;
        return Objects.equals(nombre, banco.nombre) &&
                Arrays.equals(clientes, banco.clientes) &&
                Arrays.equals(cuentas, banco.cuentas);
    }

    @Override
    public int hashCode() {
        int result = Objects.hash(nombre);
        result = 31 * result + Arrays.hashCode(clientes);
        result = 31 * result + Arrays.hashCode(cuentas);
        return result;
    }

    @Override
    public String toString() {
        return "Banco{" +
                "nombre='" + nombre + '\'' +
                ", clientes=" + Arrays.toString(clientes) +
                ", cuentas=" + Arrays.toString(cuentas) +
                '}';
    }
}
