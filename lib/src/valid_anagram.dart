/// https:///leetcode.cn/problems/valid-anagram/
/// 有效的字母异位词
/// 给定两个字符串 s 和 t ，编写一个函数来判断 t 是否是 s 的字母异位词。
///
/// 注意：若 s 和 t 中每个字符出现的次数都相同，则称 s 和 t 互为字母异位词。
///
///
///
/// 示例 1:
///
/// 输入: s = "anagram", t = "nagaram"
/// 输出: true
/// 示例 2:
///
/// 输入: s = "rat", t = "car"
/// 输出: false
///
///
/// 提示:
///
/// 1 <= s.length, t.length <= 5 * 104
/// s 和 t 仅包含小写字母
///

class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) {
      return false;
    }
    final int len = s.length;
    Map<String,int> cache = {};
    for(int i = 0; i < len; i ++){
      String key = s[i];
      int? value = cache[key];
      if (value == null) {
        cache[key] = 1;
      } else {
        cache[key] = value + 1;
      }
    }
    for(int i = 0; i < len; i++){
      String key = t[i];
      int? value = cache[key];
      if (value == null) {
        return false;
      }else{
        if (value - 1 == 0) {
          cache.remove(key);
        }else{
          cache[key] = value - 1;
        }
      }
    }
    if (cache.isNotEmpty) {
      return false;
    }
    return true;
  }
}