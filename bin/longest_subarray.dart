class Solution {
  int longestSubarray(List<int> nums) {
    int prev = 0, current = 0, max = 0;

    for (int i = 0; i < nums.length; ++i) {
      if (nums[i] == 0) {
        max = max > (current + prev) ? max : current + prev;
        prev = current;
        current = 0;
      } else {
        current++;
      }
    }
    max = max > (current + prev) ? max : current + prev;
    if (current == nums.length) {
      return nums.length - 1;
    }
    return max;
  }
}

void main(List<String> args) {
  var sol = Solution();
  print(sol.longestSubarray([0, 1, 1, 1, 0, 1, 1, 0, 1]));
}
