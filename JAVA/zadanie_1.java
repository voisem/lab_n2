import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class FindMatchingSubstrings {
    public static void main(String[] args) {
        // ѕример строки из задачи
        String exampleStr = "101tf11flb10001";
        // –егул€рное выражение дл€ соответстви€ шаблону 1[0]1, где [0] обозначает один или более нулей
        Pattern pattern = Pattern.compile("10+1");
        
        // Ќайти все совпадени€ шаблона в строке
        Matcher matcher = pattern.matcher(exampleStr);
        
        // ¬ывести все совпадающие подстроки
        while (matcher.find()) {
            System.out.println(matcher.group());
        }
    }
}
