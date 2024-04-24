class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  bool isPalindromeList(List<int> array) {
    int left = 0;
    int right = array.length - 1;

    while (left <= right) {
      if (array[left] != array[right]) {
        return false;
      }
      left++;
      right--;
    }
    return true;
  }

  bool isPalindrome(ListNode? head) {
    var next = head;
    List<int> palindrome = [];
    while (next != null) {
      palindrome.add(next.val);
      next = next.next;
    }
    return isPalindromeList(palindrome);
  }
}

void main(List<String> args) {
  var sol = Solution();
  print(sol.isPalindrome([1, 2, 2, 1] as ListNode?));
}
