import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class CalculatorAAATest {

    Calculator calculator;

    @BeforeEach
    void setup() {

        calculator = new Calculator();

        System.out.println("Setup");

    }

    @AfterEach
    void teardown() {

        System.out.println("Teardown");

    }

    @Test
    void testAAA() {

        // Arrange
        int a = 20;
        int b = 10;

        // Act
        int result = calculator.add(a, b);

        // Assert
        assertEquals(30, result);

    }

}