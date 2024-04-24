class Solution {
  List<int> findThePrefixCommonArray(List<int> A, List<int> B) {
    List<int> answer = [];
    int counter = 0;
    Map<int, int> alphabet = {};
    for (int i = 0; i < A.length; ++i) {
      alphabet[A[i]] = (alphabet[A[i]] ?? 0) + 1;
      alphabet[A[i]] == 2 ? counter += 1 : 0;

      alphabet[B[i]] = (alphabet[B[i]] ?? 0) + 1;
      alphabet[B[i]] == 2 ? counter += 1 : 0;

      answer.add(counter);
    }
    return answer;
  }
}
