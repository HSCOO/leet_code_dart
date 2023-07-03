/// https://leetcode.cn/problems/yong-liang-ge-zhan-shi-xian-dui-lie-lcof/description/
///
/// 剑指 Offer 09. 用两个栈实现队列
///
/// 用两个栈实现一个队列。队列的声明如下，请实现它的两个函数 appendTail 和 deleteHead ，分别完成在队列尾部插入整数和在队列头部删除整数的功能。(若队列中没有元素，deleteHead 操作返回 -1 )
///
///
///
/// 示例 1：
///
/// 输入：
/// ["CQueue","appendTail","deleteHead","deleteHead","deleteHead"]
/// [[],[3],[],[],[]]
/// 输出：[null,null,3,-1,-1]
/// 示例 2：
///
/// 输入：
/// ["CQueue","deleteHead","appendTail","appendTail","deleteHead","deleteHead"]
/// [[],[],[5],[2],[],[]]
/// 输出：[null,-1,null,null,5,2]
///


/// a栈：入队操作
/// b栈：出队操作。讲a栈从尾部开始，添加到b栈，就相当于a栈的倒序。
class CQueue {

  List<int> a = [];
  List<int> b = [];

  void appendTail(int value) {
    a.add(value);
  }

  int deleteHead() {
    if(b.isNotEmpty){
      return b.removeLast();
    }
    if (a.isEmpty) {
      return -1;
    }
    while(a.isNotEmpty){
      b.add(a.removeLast());
    }
    return b.removeLast();
  }
}