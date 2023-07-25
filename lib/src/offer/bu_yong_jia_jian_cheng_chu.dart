/// https://leetcode.cn/problems/bu-yong-jia-jian-cheng-chu-zuo-jia-fa-lcof/description/
///
/// 剑指 Offer 65. 不用加减乘除做加法
/// 简单
/// 439
/// 相关企业
/// 写一个函数，求两个整数之和，要求在函数体内不得使用 “+”、“-”、“*”、“/” 四则运算符号。
///
///
///
/// 示例:
///
/// 输入: a = 1, b = 1
/// 输出: 2
///
///

class Solution {
  int add(int a, int b) {
    while(b != 0){
      int c = (a & b) << 1;
      a ^= b;
      b = c;
    }
    return a;
  }
}