class Solution {
  List<int> partitionLabels(String s) {
    Map<String, int> lastPosition = {};
    for (int i = 0; i < s.length; ++i) {
      lastPosition[s[i]] = i;
    }
    List<int> answer = [];
    int left = 0, right = 0;
    for (int i = 0; i < s.length; ++i) {
      right = right > lastPosition[s[i]]! ? right : lastPosition[s[i]]!;
      if (i == right) {
        answer.add(right - left + 1);
        left = i + 1;
      }
    }
    return answer;
  }
}
