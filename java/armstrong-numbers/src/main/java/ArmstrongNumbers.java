import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

class ArmstrongNumbers {
	boolean isArmstrongNumber(int numberToCheck) {
    String[] characters = Integer.toString(numberToCheck).split("");
    return Arrays.stream(characters)
                 .map(s -> new Integer(s))
                 .map(i -> Math.pow(i, characters.length))
                 .mapToInt(d -> d.intValue())
                 .sum() == numberToCheck;
	}
}
