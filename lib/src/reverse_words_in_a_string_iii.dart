/// 反转字符串中的单词 III

///给定一个字符串s，你需要反转字符串中每个单词的字符顺序，同时仍保留空格和单词的初始顺序。
///
///
///
///示例 1：
///
///输入：s = "Let's take LeetCode contest"
///输出："s'teL ekat edoCteeL tsetnoc"
///示例 2:
///
///输入： s = "God Ding"
///输出："doG gniD"
///
///
///提示：
///
///1 <= s.length <= 5 * 104
///s包含可打印的 ASCII 字符。
///s不包含任何开头或结尾空格。
///s里 至少 有一个词。
///s中的所有单词都用一个空格隔开。
///
///来源：力扣（LeetCode）
///链接：https:///leetcode.cn/problems/reverse-words-in-a-string-iii
///


/// 思路：
/// 1. 反转单词的string
///  a.遇到空格就表示单词结束
///  b.拼接完成之后，还需要清空，为下一个单词准备
/// 2. 最后一个单词就结束了
class Solution {
  String reverseWords(String s) {
    String resString = "";
    String wordString = "";
    for (int i = 0; i < s.length; i++) {
      String char = s[i];
      if (char == " ") {
        resString += "$wordString ";
        wordString = "";
      } else {
        wordString = "$char$wordString";
      }
      if (i == s.length - 1) {
        resString += wordString;
      }
    }
    return resString;
  }
}
