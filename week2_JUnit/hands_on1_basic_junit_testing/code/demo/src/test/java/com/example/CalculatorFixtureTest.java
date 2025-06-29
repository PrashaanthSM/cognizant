package com.example;

import org.junit.Before;
import org.junit.After;
import org.junit.Test;
import static org.junit.Assert.*;

public class CalculatorFixtureTest {

    private Calculator calc;

    @Before
    public void setUp() {
        System.out.println("Setting up...");
        calc = new Calculator();  // Arrange
    }

    @After
    public void tearDown() {
        System.out.println("Tearing down...");
        calc = null;
    }

    @Test
    public void testAddUsingAAA() {
        // Act
        int result = calc.add(7, 3);

        // Assert
        assertEquals(10, result);
    }

    @Test
    public void testMultiplyUsingAAA() {
        int result = calc.multiply(4, 5);
        assertEquals(20, result);
    }
}
