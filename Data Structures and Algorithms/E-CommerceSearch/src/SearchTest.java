import java.util.Arrays;
import java.util.Comparator;

public class SearchTest{
    public static void main(String[] args)
    {
        Product[] products = {
            new Product(104,"Laptop","Electronics"),
            new Product(101,"Mouse","Electronics"),
            new Product(103,"Chair","Furniture"),
            new Product(102,"Keyboard","Electronics"),
            new Product(105,"Table","Furniture") 
        };

        System.out.println("Linear Search:");
        Product result = SearchAlgorithms.linearSearch(products, 103);

        if(result != null)
        {
            System.out.println("Product found: "+result);
        }
        else
        {
            System.out.println("Product not found.");
        }

        Arrays.sort(products, Comparator.comparingInt(Product::getProductId));

        System.out.println("\nBinary Search:");
        result = SearchAlgorithms.binarySearch(products, 103);

        if(result != null)
        {
            System.out.println("Product found: "+result);
        }
        else
        {
            System.out.println("Product not found.");
        }
    }
}