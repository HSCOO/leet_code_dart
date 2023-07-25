/// https://leetcode.cn/problems/w3tCBm/description/
///
/// 剑指 Offer II 003. 前 n 个数字二进制中 1 的个数
/// 简单
/// 138
/// 相关企业
/// 给定一个非负整数 n ，请计算 0 到 n 之间的每个数字的二进制表示中 1 的个数，并输出一个数组。
///
///
///
/// 示例 1:
///
/// 输入: n = 2
/// 输出: [0,1,1]
/// 解释:
/// 0 --> 0
/// 1 --> 1
/// 2 --> 10
/// 示例 2:
///
/// 输入: n = 5
/// 输出: [0,1,1,2,1,2]
/// 解释:
/// 0 --> 0
/// 1 --> 1
/// 2 --> 10
/// 3 --> 11
/// 4 --> 100
/// 5 --> 101
///
///
class Solution {
  List<int> countBits(int n) {
    List<int> res = [];
    for (int i = 0; i <= n; i ++){
      res.add(countBit(i));
    }
    return res;
  }

  int countBit(int x){
    int res = 0;
    while (x > 0){
      x &= (x - 1);
      res++;
    }
    return res;
  }
}