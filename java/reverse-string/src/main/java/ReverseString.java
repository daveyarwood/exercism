class ReverseString {
  String reverse(String inputString) {
    String result = "";

    for (int i = inputString.length() - 1; i >= 0; i--) {
      result += inputString.charAt(i);
    }

    return result;
  }
}
