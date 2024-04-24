class Solution {
  bool isIsomorphic(String s, String t) {
    Map<String, String> funcS = {}, funcT = {};
    if (s.length != t.length) {
      return false;
    }
    for (int i = 0; i < s.length; i++) {
      if (funcS.containsKey(s[i]) || funcT.containsKey(t[i])) {
        if (funcS[s[i]] != t[i] || funcT[t[i]] != s[i]) {
          return false;
        }
      } else {
        funcS[s[i]] = t[i];
        funcT[t[i]] = s[i];
      }
    }

    return true;
  }
}

void main(List<String> args) {
  var sol = Solution();
  print(sol.isIsomorphic("badc", "baba"));
}
