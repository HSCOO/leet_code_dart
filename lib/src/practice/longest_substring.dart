
import 'dart:math';

/// https:///leetcode.cn/problems/longest-substring-without-repeating-characters/
/// 无重复字符的最长子串
///
/// 给定一个字符串 s ，请你找出其中不含有重复字符的 最长子串 的长度。
///
///
///
/// 示例 1:
///
/// 输入: s = "abcabcbb"
/// 输出: 3
/// 解释: 因为无重复字符的最长子串是 "abc"，所以其长度为 3。
/// 示例 2:
///
/// 输入: s = "bbbbb"
/// 输出: 1
/// 解释: 因为无重复字符的最长子串是 "b"，所以其长度为 1。
/// 示例 3:
///
/// 输入: s = "pwwkew"
/// 输出: 3
/// 解释: 因为无重复字符的最长子串是 "wke"，所以其长度为 3。
/// 请注意，你的答案必须是 子串 的长度，"pwke" 是一个子序列，不是子串。
///


/// 遍历中的i就是天然的左指针
/// rk就是右指针
/// [i,rk]就是一个滑块，每次遍历的时候都会生成新的滑块，滑块内的字符串是不重复的
class Solution {
  int lengthOfLongestSubstring(String s) {
    List<String> cache = [];
    final int len = s.length;
    int res = 0;
    // 右指针
    int rk = 0;
    for(int i = 0; i < len; i ++){
      // 每次都从当前遍历的字符为起点
      rk = i;
      while (rk < len && !cache.contains(s[rk])){
        cache.add(s[rk]);
        rk++;
      }
      res = max(res, rk - i);
      // 每次循环都清空cache
      cache = [];
    }
    return res;
  }
}