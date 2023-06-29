import 'dart:math';

/// https://leetcode.cn/problems/generate-parentheses/description/
///
/// 括号生成
///
/// 数字 n 代表生成括号的对数，请你设计一个函数，用于能够生成所有可能的并且 有效的 括号组合。
///
///
///
/// 示例 1：
///
/// 输入：n = 3
/// 输出：["((()))","(()())","(())()","()(())","()()()"]
/// 示例 2：
///
/// 输入：n = 1
/// 输出：["()"]
///
///
// class Solution {
//   List<String> generateParenthesis(int n) {
//     List<String> res = [];
//     res = backtrack(res, "", 0, 0, n);
//     return res;
//   }
//
//   List<String> backtrack(List<String> ans, String cur, int open, int close, int max){
//     if (cur.length == max * 2) {
//       ans.add(cur);
//       return ans;
//     }
//     if (open < max) {
//       cur = "$cur(";
//       backtrack(ans, cur, open + 1, close, max);
//       cur = cur.substring(0,cur.length - 1);
//     }
//     if (close < open) {
//       cur = "$cur)";
//       backtrack(ans, cur, open, close + 1, max);
//       cur = cur.substring(0,cur.length - 1);
//     }
//     return ans;
//   }
// }


class Solution {
  List<String> generateParenthesis(int n) {
    List<String> res = [];
    if (n == 0) {
      return res;
    }
    return res;
  }
}