import java.io.ByteArrayOutputStream;
import java.io.PrintStream;

import org.junit.Test;
import org.junit.Before;
import org.junit.After;
import static org.junit.Assert.assertEquals;

public class GreetingTest7a {
    private PrintStream originalOut;
    private final ByteArrayOutputStream outContent = new ByteArrayOutputStream();
    private String[] args;

    @Before
    public void setUp() {
        originalOut = System.out;
        System.setOut(new PrintStream(outContent));
        args = new String[] { "-me", "Hal", "George" };
    }

    @After
    public void tearDown() {
        System.setOut(originalOut);
        args = null;
    }
    
    @Test
    public void test() {
        Greeting.main(args);
        assertEquals("Hello George. My name is Hal. How are you today, George?\n", outContent.toString());
    }
}
