import java.util.stream.IntStream;

class Hamming {
  private String a;
  private String b;

  Hamming(String leftStrand, String rightStrand) {
    if (leftStrand.length() != rightStrand.length())
      throw new IllegalArgumentException(
        "leftStrand and rightStrand must be of equal length."
      );

    a = leftStrand;
    b = rightStrand;
  }

  int getHammingDistance() {
    return IntStream.range(0, a.length())
                    .reduce(0, (sum, i) ->
                                 a.charAt(i) == b.charAt(i)
                                 ? sum
                                 : sum + 1);
  }
}
