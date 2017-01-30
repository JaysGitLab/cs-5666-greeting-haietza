import java.io.ByteArrayOutputStream;
import java.io.PrintStream;

import org.junit.Test;
import org.junit.Before;
import org.junit.After;
import static org.junit.Assert.assertEquals;

public class GreetingTest {
    private final ByteArrayOutputStream outContent = new ByteArrayOutputStream();

    @Before
    public void setUp() {
        System.setOut(new PrintStream(outContent));
    }

    @After
    public void tearDown() {
        System.setOut(null);
    }
    
    @Test
    public void testV1() {
        Greeting greeting = new Greeting();
        greeting.sayHello();
        assertEquals("Hello, World!\n", outContent.toString());
    }
}
