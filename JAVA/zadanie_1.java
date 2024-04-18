import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class FindMatchingSubstrings {
    public static void main(String[] args) {
        // ������ ������ �� ������
        String exampleStr = "101tf11flb10001";
        // ���������� ��������� ��� ������������ ������� 1[0]1, ��� [0] ���������� ���� ��� ����� �����
        Pattern pattern = Pattern.compile("10+1");
        
        // ����� ��� ���������� ������� � ������
        Matcher matcher = pattern.matcher(exampleStr);
        
        // ������� ��� ����������� ���������
        while (matcher.find()) {
            System.out.println(matcher.group());
        }
    }
}
