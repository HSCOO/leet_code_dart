/// https:///leetcode.cn/problems/power-of-three/
/// 3 的幂
///
/// 给定一个整数，写一个函数来判断它是否是 3 的幂次方。如果是，返回 true ；否则，返回 false 。
///
/// 整数 n 是 3 的幂次方需满足：存在整数 x 使得 n == 3x
///
///
///
/// 示例 1：
///
/// 输入：n = 27
/// 输出：true
/// 示例 2：
///
/// 输入：n = 0
/// 输出：false
/// 示例 3：
///
/// 输入：n = 9
/// 输出：true
/// 示例 4：
///
/// 输入：n = 45
/// 输出：false
///
///
/// 提示：
///
/// -231 <= n <= 231 - 1
///

// 方法1
// class Solution {
//   bool isPowerOfThree(int n) {
//     if (n == 0) {
//       return false;
//     }
//     if (n == 1) {
//       return true;
//     }
//     if (n ~/ 3 == 1) {
//       if (n % 3 == 0) {
//         return true;
//       } else {
//         return false;
//       }
//     }
//     int tmp = n;
//     // 是否整除
//     n = n ~/ 3;
//     if (n * 3 < tmp) {
//       return false;
//     }
//     return isPowerOfThree(n);
//   }
// }


// 方法2
class Solution {
  bool isPowerOfThree(int n) {
    // 最大范围，3的19次方=1162261467
    // 只需要判断1162261467取n的余数即可
    const int end = 1162261467;
    return n > 0 && (end % n == 0);
  }
}
