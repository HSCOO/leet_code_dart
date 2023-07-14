/// https://leetcode.cn/problems/zuo-xuan-zhuan-zi-fu-chuan-lcof/
///
/// 剑指 Offer 58 - II. 左旋转字符串
/// 简单
/// 415
/// 相关企业
/// 字符串的左旋转操作是把字符串前面的若干个字符转移到字符串的尾部。请定义一个函数实现字符串左旋转操作的功能。比如，输入字符串"abcdefg"和数字2，该函数将返回左旋转两位得到的结果"cdefgab"。
///
///
///
/// 示例 1：
///
/// 输入: s = "abcdefg", k = 2
/// 输出: "cdefgab"
/// 示例 2：
///
/// 输入: s = "lrloseumgh", k = 6
/// 输出: "umghlrlose"
///
///

/// 1.先添加再切割
// class Solution {
//   String reverseLeftWords(String s, int n) {
//     for(int i = 0; i < n; i++){
//       s = "$s${s[i]}";
//     }
//     s = s.substring(n);
//     return s;
//   }
// }

/// 2.取余数拼接到后面
class Solution {
  String reverseLeftWords(String s, int n) {
    String res = "";
    final int len = s.length;
    final int totalLen = len + n;
    for(int i = n; i < totalLen; i++){
      // 取余操作，可以简化0-n拼接到后面
      res = "$res${s[i%len]}";
    }
    return res;
  }
}
