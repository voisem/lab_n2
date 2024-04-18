import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String[] numbers = scanner.nextLine().split(" ");
        for (int i = 0; i < numbers.length; i++) {
            int sum = 0, product = 1;
            for (char c : numbers[i].toCharArray()) {
                int digit = c - '0';
                sum += digit;
                product *= digit;
            }
            if (sum < product) {
                System.out.print(i + " ");
            }
        }
        scanner.close();
    }
}
