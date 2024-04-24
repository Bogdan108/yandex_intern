class Solution {
  int maxDistToClosest(List<int> seats) {
    int last = -1, maximum = 0;
    for (int i = 0; i < seats.length; i++) {
      if (seats[i] == 1) {
        maximum = last < 0 ? i : max((i - last) ~/ 2, maximum);
        last = i;
      }
    }
    return max(maximum, seats.length - last - 1);
  }

  int max(int i, int j) {
    return i > j ? i : j;
  }
}

void main(List<String> args) {
  var sol = Solution();
  print(sol.maxDistToClosest([1, 0, 0, 0, 1, 0, 1]));
}
