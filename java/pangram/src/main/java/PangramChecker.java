import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class PangramChecker {
  private Set<String> lettersIn(String str) {
    return new HashSet<String>(
      Arrays.asList(str.toLowerCase().split(""))
    );
  }

  public boolean isPangram(String input) {
    return lettersIn(input).containsAll(lettersIn("abcdefghijklmnopqrstuvwxyz"));
  }
}
