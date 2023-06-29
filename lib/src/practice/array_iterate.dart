/// 用递归实现数组遍历
/// 只需要处理第一个元素，以及退出条件
class Solution {
  iterate(List<int> current, Function(int) callback) {
    if (current.isEmpty) {
      return;
    }
    // 每次callback首个元素
    int first = current.removeAt(0);
    callback(first);
    // 递归剩下的元素
    iterate(current,callback);
  }
}