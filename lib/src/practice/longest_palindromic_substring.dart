/// https:///leetcode.cn/problems/longest-palindromic-substring/
/// 最长回文子串
/// 给你一个字符串 s，找到 s 中最长的回文子串。
///
/// 如果字符串的反序与原始字符串相同，则该字符串称为回文字符串。
///
///
///
/// 示例 1：
///
/// 输入：s = "babad"
/// 输出："bab"
/// 解释："aba" 同样是符合题意的答案。
/// 示例 2：
///
/// 输入：s = "cbbd"
/// 输出："bb"
///
///
/// 提示：
///
/// 1 <= s.length <= 1000
/// s 仅由数字和英文字母组成
///
///

/// 双指针无法实现： aacabdkacaa，预期：aca
/// 左右两个指针
/// 每次遍历的时候，i默认就是左指针
/// 遍历的时候右指针永远是以最右开始rk=len-1
/// 直到 rk <= i 结束
/// 遍历的时候就要看左右指针的值是否相等，如果相等，左指针+1，右指针-1，如果不等且右指针-左指针=2，就说明中间有一个字符，也算是回文字符串。
// class Solution {
//   String longestPalindrome(String s) {
//     if (s.length == 1) {
//       return s;
//     }
//     final int len = s.length;
//     int lk = 0;
//     int rk = 0;
//     String res = s[0];
//
//     for(int i = 0; i < len; i ++){
//       lk = i;
//       rk = len - 1;
//       String lStr = "";
//       String rStr = "";
//       while(rk > lk){
//         String lValue = s[lk];
//         String rValue = s[rk];
//         if (rValue != lValue) {
//           rk--;
//           lStr = "";
//           rStr = "";
//         }else{
//           lStr += lValue;
//           rStr = "$rValue$rStr";
//           rk--;
//           lk++;
//         }
//       }
//       /// 比如aba的情况，rk移动到b这里
//       if (rk == lk && lStr.isNotEmpty && rStr.isNotEmpty) {
//         lStr += s[lk];
//       }
//       if (res.length < "$lStr$rStr".length) {
//         res = "$lStr$rStr";
//       }
//     }
//     return res;
//   }
// }

class Solution {
  String longestPalindrome(String s) {
    final int len = s.length;
    if (len < 2) {
      return s;
    }
    int maxLen = 1;
    int begin = 0;

    // dp[i][j] 表示 s[i...j]是否是回文串
    List<List<bool>> dp =
        List<List<bool>>.filled(len, List<bool>.filled(len, false));
    // 初始化：所有长度为1的子串都是回文串
    for (int i = 0; i < len; i++) {
      dp[i][i] = true;
    }

    for (int L = 2; L <= len; L++) {
      for (int i = 0; i < len; i++) {
        // 由 L 和 i可以确定右边界，j - i + 1 = L;
        int j = L + i - 1;
        if (j >= len) {
          break;
        }

        if (s[i] != s[j]) {
          dp[i][j] = false;
        } else {
          if (j - i < 3) {
            dp[i][j] = true;
          } else {
            dp[i][j] = dp[i + 1][j - 1];
          }
        }

        if (dp[i][j] && j - i + 1 > maxLen) {
          maxLen = j - i + 1;
          begin = i;
        }
      }
    }

    return s.substring(begin, begin + maxLen);
  }
}

class Demo {
  static _run(){
    print("object");
  }
}
