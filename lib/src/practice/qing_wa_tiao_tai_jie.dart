/// https://leetcode.cn/problems/qing-wa-tiao-tai-jie-wen-ti-lcof/
///剑指 Offer 10- II. 青蛙跳台阶问题
///一只青蛙一次可以跳上1级台阶，也可以跳上2级台阶。求该青蛙跳上一个 n 级的台阶总共有多少种跳法。
///
///答案需要取模 1e9+7（1000000007），如计算初始结果为：1000000008，请返回 1。
///
///示例 1：
///
///输入：n = 2
///输出：2
///示例 2：
///
///输入：n = 7
///输出：21
///示例 3：
///
///输入：n = 0
///输出：1
///提示：
///
///0 <= n <= 100


// 解法1：递归
// class Solution {
//   Map<int,int> cache = {};
//   int numWays(int n) {
//     // 缓存之前计算好的值
//     if (n == 0) {
//       return 1;
//     }
//     if (n <= 2) {
//       return n;
//     }
//     if (!cache.containsKey(n)) {
//       cache[n] = (numWays(n - 1) + numWays(n - 2)) % 1000000007;
//     }
//     return cache[n] ?? 1;
//   }
// }

// 解法2：动态规划+滑动数组
class Solution {
  int numWays(int n) {
    // 缓存之前计算好的值
    if (n == 0) {
      return 1;
    }
    if (n <= 2) {
      return n;
    }
    int q = 1;
    int p = 1;
    int sum = 2;
    for(int i = 2; i < n; i++){
      q = p;
      p = sum;
      sum = (q + p) % 1000000007;
    }
    return sum;
  }
}