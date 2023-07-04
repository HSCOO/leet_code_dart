/// https://leetcode.cn/problems/fei-bo-na-qi-shu-lie-lcof/
///
/// 剑指 Offer 10- I. 斐波那契数列
///
/// 写一个函数，输入 n ，求斐波那契（Fibonacci）数列的第 n 项（即 F(N)）。斐波那契数列的定义如下：
///
/// F(0) = 0,   F(1) = 1
/// F(N) = F(N - 1) + F(N - 2), 其中 N > 1.
/// 斐波那契数列由 0 和 1 开始，之后的斐波那契数就是由之前的两数相加而得出。
///
/// 答案需要取模 1e9+7（1000000007），如计算初始结果为：1000000008，请返回 1。
///
///
///
/// 示例 1：
///
/// 输入：n = 2
/// 输出：1
/// 示例 2：
///
/// 输入：n = 5
/// 输出：5
///
///
/// 提示：
///
/// 0 <= n <= 100
///

/// 滚动数组
/// 第一轮：p:0 q:1 sum:(0+1)%1000000007=1
/// 第二轮：p:1 q:1 sum:(1+1)%1000000007=2
/// 第三轮：p:1 q:2 sum:(1+2)%1000000007=3
/// 第四轮：p:2 q:3 sum:(2+3)%1000000007=5

// class Solution {
//   int fib(int n) {
//     const int mod = 1000000007;
//     if (n < 2) {
//       return n;
//     }
//     int p = 0;
//     int q = 0;
//     int sum = 1;
//     for(int i = 2; i <= n; i++){
//       p = q;
//       q = sum;
//       sum = (p + q) % mod;
//     }
//     return sum;
//   }
// }


/// 解法2：递归解法
class Solution {
  Map<int,int> cache = {};
  int fib(int n) {
    const int mod = 1000000007;
    if (n < 2) {
      return n;
    }
    if (!cache.containsKey(n)) {
      cache[n] = (fib(n-1) + fib(n-2)) % mod;
    }
    return cache[n] ?? 0;
  }
}