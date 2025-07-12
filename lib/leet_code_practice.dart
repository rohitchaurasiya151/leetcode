int calculate() {
  return 6 * 7;
}

//  Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    List<String> list1 = [];
    List<String> list2 = [];
   
      while (l1 != null) {
        list1.add(l1.val.toString());
        l1 = l1.next;
      }
    

      while (l2 != null) {
        list2.add(l2.val.toString());
        l2 = l2.next;
      }
    var num1 = int.tryParse(list1.reversed.join('')) ?? 0;
    var num2 = int.tryParse(list2.reversed.join('')) ?? 0;
    var sum = num1 + num2;

     List<String> digits =sum.toString().split("").reversed.toList();
   
    ListNode? head;
    ListNode? current;

    for (var digit in digits) {
      var node = ListNode(int.parse(digit));
      if (head == null) {
        head = node;
        current = node;
      } else {
        current!.next = node;
        current = node;
      }
    }
    return head;
    
  }
}
