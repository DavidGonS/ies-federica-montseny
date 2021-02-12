package org.iesfm.Calculator;

import org.iesfm.Calculator.Exceptions.CalculatorException;
import org.junit.Assert;
import org.junit.Test;

public class CalculatorTest {

    private Calculator calculator = new Calculator();

    private final static double DELTA = 0.0000001;

    @Test
    public void sumPositiveNumbersTest() {
        //configuracion del escenario del test
        double a = 2;
        double b = 5;

        //ejecucion del test
        double res = calculator.sum(a, b);

        //comprobaciones del test
        Assert.assertEquals(7, res, DELTA);
    }

    @Test
    public void sumNegativeNumbersTest() {
        //configuracion del escenario del test
        double a = -2;
        double b = -5;

        //ejecucion del test
        double res = calculator.sum(a, b);

        //comprobaciones del test
        Assert.assertEquals(-7, res, DELTA);
    }
    @Test
    public void sumPositiveNumberByNegativeTest() {
        //configuracion del escenario del test
        double a = 2;
        double b = -5;

        //ejecucion del test
        double res = calculator.sum(a, b);

        //comprobaciones del test
        Assert.assertEquals(-3, res, DELTA);
    }

    @Test
    public void sumNegativeNumberByPositiveTest() {
        //configuracion del escenario del test
        double a = -2;
        double b = 5;

        //ejecucion del test
        double res = calculator.sum(a, b);

        //comprobaciones del test
        Assert.assertEquals(3, res, DELTA);
    }

    @Test
    public void substractPositiveNumbersTest() {
        //configuracion del escenario del test
        double a = 2;
        double b = 5;

        //ejecucion del test
        double res = calculator.substract(a, b);

        //comprobaciones del test
        Assert.assertEquals(-3, res, DELTA);
    }

    @Test
    public void substractNegativeNumbersTest() {
        //configuracion del escenario del test
        double a = -2;
        double b = -5;

        //ejecucion del test
        double res = calculator.substract(a, b);

        //comprobaciones del test
        Assert.assertEquals(3, res, DELTA);
    }

    @Test
    public void substractPositiveNumberByNegativeTest() {
        //configuracion del escenario del test
        double a = 2;
        double b = -5;

        //ejecucion del test
        double res = calculator.substract(a, b);

        //comprobaciones del test
        Assert.assertEquals(7, res, DELTA);
    }

    @Test
    public void substractNegativeNumberByPositiveTest() {
        //configuracion del escenario del test
        double a = -2;
        double b = 5;

        //ejecucion del test
        double res = calculator.substract(a, b);

        //comprobaciones del test
        Assert.assertEquals(-7, res, DELTA);
    }

    @Test
    public void divPositiveNumbersTest() {
        //configuracion del escenario del test
        double a = 2;
        double b = 5;

        //ejecucion del test
        double res = calculator.div(a, b);

        //comprobaciones del test
        Assert.assertEquals(0.4, res, DELTA);
    }

    @Test
    public void divNegativeNumbersTest() {
        //configuracion del escenario del test
        double a = -2;
        double b = -5;

        //ejecucion del test
        double res = calculator.div(a, b);

        //comprobaciones del test
        Assert.assertEquals(0.4, res, DELTA);
    }

    @Test
    public void divByZeroTest() {
        //configuracion del escenario del test
        double a = 2;
        double b = 0;

        //ejecucion del test
        double res = calculator.div(a, b);

        //comprobaciones del test
        Assert.assertEquals(7, res, DELTA);
    }

    @Test
    public void divPositiveNumberByNegativeTest() {
        double a = 2;
        double b = -5;

        double res = calculator.div(a, b);

        Assert.assertEquals(-0.4, res, DELTA);
    }

    @Test
    public void factorialPositiveNumber() {
        int a = 5;
        try {
            int res = calculator.factorial(a);

            Assert.assertEquals(120, res);
            //IMPORTANTE PONER ASSERT.FAIL PARA QUE NO PASE EL TEST
        }catch (CalculatorException e){
            Assert.fail("FACTORIAL DE UN POSITIVO NO DEBERIA FALLAR");
        }
    }

    @Test
    public void factorialNegativeNumber() {
        int a = -5;
        try {
            int res = calculator.factorial(a);

            Assert.fail("ES IMPOSIBLE HACER EL FACTORIAL DE UN NUMERO NEGATIVO");

        }catch (CalculatorException e){

        }
    }
}
