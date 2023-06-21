/// 加一
/// 
/// 给定一个由 整数 组成的 非空 数组所表示的非负整数，在该数的基础上加一。
/// 
/// 最高位数字存放在数组的首位， 数组中每个元素只存储单个数字。
/// 
/// 你可以假设除了整数 0 之外，这个整数不会以零开头。
/// 
/// 
/// 
/// 示例1：
/// 
/// 输入：digits = [1,2,3]
/// 输出：[1,2,4]
/// 解释：输入数组表示数字 123。
/// 示例2：
/// 
/// 输入：digits = [4,3,2,1]
/// 输出：[4,3,2,2]
/// 解释：输入数组表示数字 4321。
/// 示例 3：
/// 
/// 输入：digits = [0]
/// 输出：[1]
/// 
/// 
/// 提示：
/// 
/// 1 <= digits.length <= 100
/// 0 <= digits[i] <= 9
/// 
/// 
/// 来源：力扣（LeetCode）
/// 链接：https:///leetcode.cn/problems/plus-one

import 'dart:math' as math;

class Solution {
  List<int> plusOne(List<int> digits) {

    int len = digits.length;
    for(int i = len - 1; i >= 0; i --){
      int value = digits[i];
      value += 1;
      digits[i] = value % 10;
      // 只要当前值为0，就说明需要进1位
      // 如果不为0，就说明可以直接返回
      if (value % 10 != 0) {
        return digits;
      }
    }
    // 如果到了这里，就说明需要新增长度
    List<int> res = List<int>.filled(len + 1, 0);
    res[0] = 1;
    return res;
  }
}