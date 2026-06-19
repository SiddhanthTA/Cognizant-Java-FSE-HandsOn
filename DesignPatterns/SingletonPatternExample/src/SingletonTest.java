public class SingletonTest
{
    public static void main(String[] args)
    {
        Logger l1=Logger.getInstance();
        Logger l2=Logger.getInstance();

        l1.log("First Message");
        l2.log("Second Message");
        System.out.println("Checking whether l1 and l2 are same:  "+(l1==l2));
    }
}