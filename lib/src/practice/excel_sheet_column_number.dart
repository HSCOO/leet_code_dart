/// https:///leetcode.cn/problems/excel-sheet-column-number/description/
/// Excel 表列序号
///
/// 给你一个字符串 columnTitle ，表示 Excel 表格中的列名称。返回 该列名称对应的列序号 。
///
/// 例如：
///
/// A -> 1
/// B -> 2
/// C -> 3
/// ...
/// Z -> 26
/// AA -> 27
/// AB -> 28
/// ...
///
///
/// 示例 1:
///
/// 输入: columnTitle = "A"
/// 输出: 1
/// 示例 2:
///
/// 输入: columnTitle = "AB"
/// 输出: 28
/// 示例 3:
///
/// 输入: columnTitle = "ZY"
/// 输出: 701
///
///
/// 提示：
///
/// 1 <= columnTitle.length <= 7
/// columnTitle 仅由大写英文组成
/// columnTitle 在范围 ["A", "FXSHRXW"] 内
///

class Solution {
  // dart字符串转数字，用codeUnitAt(0)
  int titleToNumber(String columnTitle) {
    int res = 0;
    int aInt = 'A'.codeUnitAt(0);
    for(int i = 0; i < columnTitle.length; i ++){
      int charInt = columnTitle[i].codeUnitAt(0);
      res = 26 * res + (charInt - aInt + 1);
    }
    return res;
  }
}