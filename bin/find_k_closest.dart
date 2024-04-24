class Solution {
  List<int> findClosestElements(List<int> arr, int k, int x) {
    int left = 0, right = arr.length - 1;
    while (right - left >= k) {
      if ((x - arr[left]).abs() <= (x - arr[right]).abs()) {
        right--;
      } else {
        left++;
      }
    }
    if (arr.length == 1) {
      return arr;
    }
    return arr.sublist(left, right + 1);
  }
}
