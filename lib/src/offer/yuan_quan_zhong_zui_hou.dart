/// https://leetcode.cn/problems/yuan-quan-zhong-zui-hou-sheng-xia-de-shu-zi-lcof/
///
/// 剑指 Offer 62. 圆圈中最后剩下的数字
/// 简单
/// 799
/// 相关企业
/// 0,1,···,n-1这n个数字排成一个圆圈，从数字0开始，每次从这个圆圈里删除第m个数字（删除后从下一个数字开始计数）。求出这个圆圈里剩下的最后一个数字。
///
/// 例如，0、1、2、3、4这5个数字组成一个圆圈，从数字0开始每次删除第3个数字，则删除的前4个数字依次是2、0、4、1，因此最后剩下的数字是3。
///
///
///
/// 示例 1：
///
/// 输入: n = 5, m = 3
/// 输出: 3
/// 示例 2：
///
/// 输入: n = 10, m = 17
/// 输出: 2
///
///
class Solution {
  int lastRemaining(int n, int m) {
    int ans = 0;
    for (int i = 2; i <= n; i++){
      ans = (ans + m) % i;
    }
    return ans;
  }
}