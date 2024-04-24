class Solution {
  List<int> sortedSquares(List<int> nums) {
    for (int i = 0; i < nums.length; ++i) {
      nums[i] = nums[i] * nums[i];
    }
    return nums..sort();
  }
}
