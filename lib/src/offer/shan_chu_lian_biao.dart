///https://leetcode.cn/problems/shan-chu-lian-biao-de-jie-dian-lcof/
///剑指 Offer 18. 删除链表的节点
///简单
///325
///相关企业
///给定单向链表的头指针和一个要删除的节点的值，定义一个函数删除该节点。
///
///返回删除后的链表的头节点。
///
///注意：此题对比原题有改动
///
///示例 1:
///
///输入: head = [4,5,1,9], val = 5
///输出: [4,1,9]
///解释: 给定你链表中值为 5 的第二个节点，那么在调用了你的函数之后，该链表应变为 4 -> 1 -> 9.
///示例 2:
///
///输入: head = [4,5,1,9], val = 1
///输出: [4,5,9]
///解释: 给定你链表中值为 1 的第三个节点，那么在调用了你的函数之后，该链表应变为 4 -> 5 -> 9.
///
///

//  Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;

  ListNode([
    this.val = 0,
    this.next,
  ]);
}

class Solution {
  ListNode? deleteNode(ListNode? head, int val) {
    // 单独处理需要删除头指针
    if (head?.val == val) {
      return head?.next;
    }
    // 遍历找next
    ListNode? curNode = head;
    while (curNode != null){
      if (curNode.next?.val == val) {
        curNode.next = curNode.next?.next;
        break;
      } else{
        curNode = curNode.next;
      }
    }
    return head;
  }
}
