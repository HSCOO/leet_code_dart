/// https://leetcode.cn/problems/fan-zhuan-dan-ci-shun-xu-lcof/
///
/// 剑指 Offer 58 - I. 翻转单词顺序
/// 简单
/// 302
/// 相关企业
/// 输入一个英文句子，翻转句子中单词的顺序，但单词内字符的顺序不变。为简单起见，标点符号和普通字母一样处理。例如输入字符串"I am a student. "，则输出"student. a am I"。
///
///
///
/// 示例 1：
///
/// 输入: "the sky is blue"
/// 输出: "blue is sky the"
/// 示例 2：
///
/// 输入: "  hello world!  "
/// 输出: "world! hello"
/// 解释: 输入字符串可以在前面或者后面包含多余的空格，但是反转后的字符不能包括。
/// 示例 3：
///
/// 输入: "a good   example"
/// 输出: "example good a"
/// 解释: 如果两个单词间有多余的空格，将反转后单词间的空格减少到只含一个。
///
///

/// 方法1：遍历
// class Solution {
//   String reverseWords(String s) {
//     List<String> cache = [];
//     final int len = s.length;
//     String item = "";
//     for(int i = 0; i < len; i++){
//       String value = s[i].replaceAll(" ", "");
//       if (value.isEmpty) {
//         if (item.isNotEmpty) {
//           cache.add(item);
//           item = "";
//         }
//       } else {
//         item = "$item$value";
//         if (i == len - 1) {
//           cache.add(item);
//         }
//       }
//     }
//
//     final int cacheLen = cache.length;
//     String res = "";
//     for(int i = cacheLen - 1; i >= 0; i--){
//       String value = cache[i];
//       if (res.isEmpty) {
//         res = value;
//       } else {
//         res = "$res $value";
//       }
//     }
//     return res;
//   }
// }

// 方法2：双指针
// 倒序遍历
class Solution {
  String reverseWords(String s) {
    // 去掉左右空格
    String tmpS = s.trim();
    final int len = tmpS.length;
    int i = len - 1;
    String res = "";
    List<String> cache = [];

    while (i >= 0) {
      if (tmpS[i] == " ") {
        if (res.isNotEmpty) {
          cache.add(res);
          res = "";
        }
      } else {
        res = "${tmpS[i]}$res";
        if (i == 0) {
          cache.add(res);
        }
      }
      i--;
    }
    return cache.join(" ");
  }
}
