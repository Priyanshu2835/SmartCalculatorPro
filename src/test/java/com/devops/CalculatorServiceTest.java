package com.devops;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class CalculatorServiceTest {

    CalculatorService calc = new CalculatorService();

    @Test
    public void testAdd() {
        Assertions.assertEquals(8, calc.add(5,3));
    }

    @Test
    public void testSubtract() {
        Assertions.assertEquals(4, calc.subtract(10,6));
    }

    @Test
    public void testMultiply() {
        Assertions.assertEquals(21, calc.multiply(7,3));
    }

    @Test
    public void testDivide() {
        Assertions.assertEquals(2.5, calc.divide(5,2));
    }

    @Test
    public void testDivideByZero() {
        Assertions.assertThrows(ArithmeticException.class, () -> calc.divide(5,0));
    }
}
