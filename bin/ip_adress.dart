class Solution {
  List<String> restoreIpAddresses(String s) {
    List<String> answer = [];

    for (int i = 1; i < s.length; ++i) {
      for (int j = i + 1; j < s.length; ++j) {
        for (int k = j + 1; k < s.length; ++k) {
          var a = s.substring(0, i);
          var b = s.substring(i, j);
          var c = s.substring(j, k);
          var d = s.substring(k);
          if (validCode(a) && validCode(b) && validCode(c) && validCode(d)) {
            answer.add('$a.$b.$c.$d');
          }
        }
      }
    }
    return answer;
  }

  bool validCode(String code) {
    if (int.parse(code).toString() == code && int.parse(code) <= 255) {
      return true;
    } else {
      return false;
    }
  }
}
