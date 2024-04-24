class Solution {
  bool isAnagram(String s, String t) {
    Map<String, int> alphabet = {};

    for (int i = 0; i < s.length; ++i) {
      if (alphabet[s[i]] == null) {
        alphabet[s[i]] = 1;
      } else {
        alphabet[s[i]] = alphabet[s[i]]! + 1;
      }
    }

    for (int i = 0; i < t.length; ++i) {
      if (alphabet[t[i]] == null) {
        return false;
      } else {
        alphabet[t[i]] = alphabet[t[i]]! - 1;
        if (alphabet[t[i]] == 0) {
          alphabet.remove(t[i]);
        }
      }
    }
    return alphabet.isEmpty;
  }
}
