Boolean isAnagram(String a, String b) {
  String lowera = a.lowercased;
  String lowerb = b.lowercased;
  return lowera != lowerb && sort(lowera) == sort(lowerb);
}

{String*} anagrams(String subject, {String*} candidates) {
  return candidates.filter((candidate) => isAnagram(subject, candidate));
}
