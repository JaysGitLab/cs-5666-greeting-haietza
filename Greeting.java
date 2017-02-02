public class Greeting {
    public static void main(String[] args) {
        if (args.length == 1) {
            String name = args[0].substring(0, 1).toUpperCase() + args[0].substring(1, args[0].length());
            System.out.println("Hello, " + name);
        }
        else {
            System.out.println("Hello Michelle");
        }
    }
}
