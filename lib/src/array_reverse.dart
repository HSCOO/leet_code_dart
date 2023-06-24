
/// 用递归实现数组反转
class Solution {
  List<int> reverse(List<int> current) {
    if (current.length == 1) {
      return current;
    }
    int first = current.removeAt(0);
    // [1,2,3] 可以拆分成两部分： 1,[2,3]
    // 反转的话，就是：[2,3],1
    // 每次都处理第一个元素就可以了
    List<int> res = reverse(current);
    res.add(first);
    return res;
  }
}