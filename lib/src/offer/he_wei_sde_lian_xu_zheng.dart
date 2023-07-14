/// https://leetcode.cn/problems/he-wei-sde-lian-xu-zheng-shu-xu-lie-lcof/
///
/// 剑指 Offer 57 - II. 和为s的连续正数序列
/// 简单
/// 556
/// 相关企业
/// 输入一个正整数 target ，输出所有和为 target 的连续正整数序列（至少含有两个数）。
///
/// 序列内的数字由小到大排列，不同序列按照首个数字从小到大排列。
///
///
///
/// 示例 1：
///
/// 输入：target = 9
/// 输出：[[2,3,4],[4,5]]
/// 示例 2：
///
/// 输入：target = 15
/// 输出：[[1,2,3,4,5],[4,5,6],[7,8]]
///
///

class Solution {
  List<List<int>> findContinuousSequence(int target) {
    int begin = 1;
    int end = 1;
    int sum = 0;
    List<List<int>> res = [];
    final int len = target >> 1;
    // 如果是开始指针到达一半，就可以退出了。target/2 + （target/2 + 1）> target
    while(begin <= len){
      // 如果和小于目标值
      // 就移动结束指针
      if (sum < target) {
        sum += end;
        end++;
        // 如果和大于目标值
        // 就移动开始指针，移动之后得减值。
      } else if (sum > target){
        sum -= begin;
        begin++;
      } else {
        List<int> arr = [];
        for(int i = begin; i < end; i++){
          arr.add(i);
        }
        res.add(arr);
        sum -= begin;
        begin++;
      }
    }
    return res;
  }
}