class Solution {
  int maxProfit(List<int> prices) {
    int maxProfit = 0;
    int min = prices[0];
    for (int i = 0; i < prices.length; ++i) {
      if (min > prices[i]) {
        min = prices[i];
      } else {
        if (prices[i] - min > maxProfit) {
          maxProfit = prices[i] - min;
        }
      }
    }
    return maxProfit;
  }
}
