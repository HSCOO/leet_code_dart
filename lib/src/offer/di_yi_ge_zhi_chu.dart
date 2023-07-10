/// https://leetcode.cn/problems/di-yi-ge-zhi-chu-xian-yi-ci-de-zi-fu-lcof/
///
/// 剑指 Offer 50. 第一个只出现一次的字符
/// 简单
/// 336
/// 相关企业
/// 在字符串 s 中找出第一个只出现一次的字符。如果没有，返回一个单空格。 s 只包含小写字母。
///
/// 示例 1:
///
/// 输入：s = "abaccdeff"
/// 输出：'b'
/// 示例 2:
///
/// 输入：s = ""
/// 输出：' '
///
///
class Solution {
  String firstUniqChar(String s) {
    final int len = s.length;

    Map<String, int> cache = {};
    List<String> checkedChar = [];
    for (int i = 0; i < len; i++) {
      String key = s[i];
      if (cache.containsKey(key)) {
        checkedChar.remove(key);
      } else {
        cache[key] = 0;
        checkedChar.add(key);
      }
    }
    if (checkedChar.isEmpty) {
      return " ";
    }
    return checkedChar.first;
  }
}
