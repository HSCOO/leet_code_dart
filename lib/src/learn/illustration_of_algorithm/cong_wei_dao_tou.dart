/// https://leetcode.cn/problems/cong-wei-dao-tou-da-yin-lian-biao-lcof/
/// 剑指 Offer 06. 从尾到头打印链表
///
/// 输入一个链表的头节点，从尾到头反过来返回每个节点的值（用数组返回）。
///
///
///
/// 示例 1：
///
/// 输入：head = [1,3,2]
/// 输出：[2,3,1]

// Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;

  ListNode([
    this.val = 0,
    this.next,
  ]);
}

/// 递归反转输出链表
class Solution {
  List<int> reversePrint(ListNode? head) {
    List<int> res = [];
    reverse(head,res);
    return res;
  }

  reverse(ListNode? head, List<int> res){
    if (head == null) {
      return res;
    }
    reverse(head.next,res);
    res.add(head.val);
  }
}
