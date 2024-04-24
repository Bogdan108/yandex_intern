// class Solution {
//   int subarraySum(List<int> nums, int k) {
//     int left = 0;
//     int sum = 0;
//     int count = 0;
//     for (int i = 0; i < nums.length; ++i) {
//       sum += nums[i];
//       if (sum == k) {
//         count++;
//         sum -= nums[left];
//         left++;
//       } else {
//         if (sum > k) {
//           while (sum != k && left < i) {
//             sum -= nums[left];
//             left++;
//           }
//         }

//         }
//         if (sum == k) {
//           count++;
//         }
//       }
//     }
//     return count;
//   }
// }

// void main(List<String> args) {
//   var sol = Solution();
//   print(sol.subarraySum([1, 1, 1], 2));
// }
