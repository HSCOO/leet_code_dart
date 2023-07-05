import 'dart:math';

/// https://leetcode.cn/problems/da-yin-cong-1dao-zui-da-de-nwei-shu-lcof/description/
/// 剑指 Offer 17. 打印从1到最大的n位数
///
///输入数字 n，按顺序打印出从 1 到最大的 n 位十进制数。比如输入 3，则打印出 1、2、3 一直到最大的 3 位数 999。
///
///示例 1:
///
///输入: n = 1
///输出: [1,2,3,4,5,6,7,8,9]
///
///
///说明：
///
///用返回一个整数列表来代替打印
///n 为正整数
///
///
class Solution {

  List<int> printNumbers(int n) {
    final List<int> res = [1,2,3,4,5,6,7,8,9];
    // final int len = pow(10, n).toInt() - 1;
    for(int i = 0; i <= n; i++){
      for(int j = 0; j <= 9; j++){
        dfs("$j", i, res);
      }
    }
    return res;
  }

  dfs(String num, int i, List<int> res){
    if (num.length == i) {
      res.add(int.parse(num));
    }
    for(int j = 0; j <= 9; j++){
      dfs("$num$j", i, res);
    }
  }
}