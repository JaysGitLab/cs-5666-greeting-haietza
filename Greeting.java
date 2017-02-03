public class Greeting {
    protected static String computerName;
    protected static String name;

    public static void main(String[] args) {
        if (args.length == 3) {
            if (args[0].equals("-me")) {
                computerName = args[1].substring(0, 1).toUpperCase() + args[1].substring(1, args[1].length());
                name = args[2].substring(0, 1).toUpperCase() + args[2].substring(1, args[2].length());
            }
            else if (args[1].equals("-me")) {
                computerName = args[2].substring(0, 1).toUpperCase() + args[2].substring(1, args[2].length());
                name = args[0].substring(0, 1).toUpperCase() + args[0].substring(1, args[0].length());
            }
            System.out.println("Hello " + name + ". My name is " + computerName + ". How are you today, " + name + "?");
        }
        else if (args.length == 1) {
            name = args[0].substring(0, 1).toUpperCase() + args[0].substring(1, args[0].length());
            System.out.println("Hello, " + name);
        }
        else {
            System.out.println("Hello Michelle");
        }
    }
}
