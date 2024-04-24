class Solution {
  List<String> summaryRanges(List<int> nums) {
    if (nums.isEmpty) {
      return [];
    }
    int left = 0, right = 0;
    List<String> answer = [];
    for (int i = 1; i < nums.length; ++i) {
      if (nums[i] - nums[right] == 1) {
        right = i;
      } else {
        answer.add(parseValue(nums[left], nums[right]));
        right = i;
        left = i;
      }
    }

    answer.add(parseValue(nums[left], nums[right]));

    return answer;
  }

  String parseValue(int left, int right) {
    if (left != right) {
      return '$left->$right';
    } else {
      return '$right';
    }
  }
}

void main(List<String> args) {
  var sol = Solution();
  print(sol.summaryRanges([]));
}
