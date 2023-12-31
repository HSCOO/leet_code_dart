/// https:///leetcode.cn/problems/counting-bits/
/// 比特位计数
///
/// 给你一个整数 n ，对于 0 <= i <= n 中的每个 i ，计算其二进制表示中 1 的个数 ，返回一个长度为 n + 1 的数组 ans 作为答案。
///
///
///
/// 示例 1：
///
/// 输入：n = 2
/// 输出：[0,1,1]
/// 解释：
/// 0 --> 0
/// 1 --> 1
/// 2 --> 10
/// 示例 2：
///
/// 输入：n = 5
/// 输出：[0,1,1,2,1,2]
/// 解释：
/// 0 --> 0
/// 1 --> 1
/// 2 --> 10
/// 3 --> 11
/// 4 --> 100
/// 5 --> 101
///
///
/// 提示：
///
/// 0 <= n <= 105
///
///
///
///
/// 利用 Brian Kernighan算法，可以在一定程度上进一步提升计算速度。
/// Brian Kernighan算法的原理是：对于任意整数 x，令 x=x&(x−1)x，该运算将 x 的二进制表示的最后一个 1 变成 0。
/// 因此，对 x 重复该操作，直到 x 变成 0，则操作次数即为 x 的「一比特数」。

class Solution {
  List<int> countBits(int n) {
    List<int> res = [];
    for (int i = 0; i <= n ; i++){
      res.add(count(i));
    }
    return res;
  }

  // 计算二进制有多少个1
  int count(int x){
    int res = 0;
    while(x > 0){
      x &= (x - 1);
      res++;
    }
    return res;
  }
}