class Solution {
  List<int> intersect(List<int> nums1, List<int> nums2) {
    Map<int, int> mapa = {};
    for (var i in nums1) {
      if (mapa.containsKey(i)) {
        mapa[i] = mapa[i]! + 1;
      } else {
        mapa[i] = 1;
      }
    }
    List<int> answer = [];
    for (var i in nums2) {
      if (mapa.containsKey(i)) {
        if (mapa[i]! > 0) {
          mapa[i] = mapa[i]! - 1;
          answer.add(i);
        } else {
          mapa.remove(i);
        }
      }
    }
    return answer;
  }
}
