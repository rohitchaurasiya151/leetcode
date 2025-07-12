
import 'dart:io';

class ListNode {
  int val;
  ListNode? next;
  ListNode(this.val, [this.next]);
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode dummyHead = ListNode(0);
    ListNode current = dummyHead;
    int carry = 0;

    while (l1 != null || l2 != null || carry != 0) {
      int x = l1?.val ?? 0;
      int y = l2?.val ?? 0;
      int sum = x + y + carry;

      carry = sum ~/ 10;
      current.next = ListNode(sum % 10);
      current = current.next!;

      l1 = l1?.next;
      l2 = l2?.next;
    }

    return dummyHead.next;
  }
}
void main() {
  var l1 = ListNode(2, ListNode(4, ListNode(3)));
  var l2 = ListNode(5, ListNode(6, ListNode(4)));

  var result = Solution().addTwoNumbers(l1, l2);

  while (result != null) {
    stdout.write("${result.val} ");
    result = result.next;
  }
  // Output: 7 0 8
}

