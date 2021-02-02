import java.util.Objects;

public class Cuentas {
    private int numero;
    private int saldo;

    public Cuentas(int numero, int saldo) {
        this.numero = numero;
        this.saldo = saldo;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public int getSaldo() {
        return saldo;
    }

    public void setSaldo(int saldo) {
        this.saldo = saldo;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Cuentas cuentas = (Cuentas) o;
        return numero == cuentas.numero &&
                saldo == cuentas.saldo;
    }

    @Override
    public int hashCode() {
        return Objects.hash(numero, saldo);
    }

    @Override
    public String toString() {
        return "Cuentas{" +
                "numero=" + numero +
                ", saldo=" + saldo +
                '}';
    }
}
