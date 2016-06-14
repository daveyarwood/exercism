using StringTools;

class Bob {
  public static function hey(utterance:String) {
    if (~/[A-Z]/.match(utterance) && !~/[a-z]/.match(utterance)) {
      return 'Whoa, chill out!';
    } else if (!~/[a-zA-Z0-9]/.match(utterance)) {
      return 'Fine. Be that way!';
    } else if (utterance.endsWith('?')) {
      return 'Sure.';
    } else {
      return 'Whatever.';
    }
  }
}
