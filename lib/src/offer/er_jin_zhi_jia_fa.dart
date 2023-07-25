import 'dart:math';

/// https://leetcode.cn/problems/JFETK5/solutions/1025179/er-jin-zhi-jia-fa-by-leetcode-solution-fa6t/
///
/// 剑指 Offer II 002. 二进制加法
/// 简单
/// 76
/// 相关企业
/// 给定两个 01 字符串 a 和 b ，请计算它们的和，并以二进制字符串的形式输出。
///
/// 输入为 非空 字符串且只包含数字 1 和 0。
///
///
///
/// 示例 1:
///
/// 输入: a = "11", b = "10"
/// 输出: "101"
/// 示例 2:
///
/// 输入: a = "1010", b = "1011"
/// 输出: "10101"

// class Solution {
//   String addBinary(String a, String b) {
//     final int len = max(a.length, b.length);
//     int carry = 0;
//     for(int i = 0; i < len; i++){
//       carry += i < a.length ? (a[a.length - i - 1] - '0'.codeUnitAt(0)) : 0;
//     }
//     return "";
//   }
// }

