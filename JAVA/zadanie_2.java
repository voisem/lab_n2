import java.util.HashMap;
import java.util.Map;

public class Main {
    // ������� ��� �������������� ������� ����� � ����������
    public static int romanToDecimal(String roman) {
        // �����, ���������� ������������ ������� ���� � �� ���������� ��������
        Map<Character, Integer> romanNumerals = new HashMap<>();
        romanNumerals.put('I', 1);
        romanNumerals.put('V', 5);
        romanNumerals.put('X', 10);
        romanNumerals.put('L', 50);
        romanNumerals.put('C', 100);
        romanNumerals.put('D', 500);
        romanNumerals.put('M', 1000);

        int result = 0;
        int prevValue = 0;
        // ������ �� �������� ����� � �����
        for (int i = roman.length() - 1; i >= 0; i--) {
            int value = romanNumerals.get(roman.charAt(i));
            // ���� ������� �������� ������ �����������, �������� ���
            if (value < prevValue) {
                result -= value;
            } else {
                result += value;
            }
            prevValue = value;
        }
        return result;
    }

    public static void main(String[] args) {
        // ������� �������������� ������� ����� � ���������� � ����� ����������
        System.out.println(romanToDecimal("LXVI"));  // �����: 66
        System.out.println(romanToDecimal("LXXXI")); // �����: 81
    }
}
