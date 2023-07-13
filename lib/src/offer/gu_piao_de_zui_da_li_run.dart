import 'dart:math';

/// https://leetcode.cn/problems/gu-piao-de-zui-da-li-run-lcof/
///
/// 剑指 Offer 63. 股票的最大利润
/// 中等
/// 350
/// 相关企业
/// 假设把某股票的价格按照时间先后顺序存储在数组中，请问买卖该股票一次可能获得的最大利润是多少？
///
///
///
/// 示例 1:
///
/// 输入: [7,1,5,3,6,4]
/// 输出: 5
/// 解释: 在第 2 天（股票价格 = 1）的时候买入，在第 5 天（股票价格 = 6）的时候卖出，最大利润 = 6-1 = 5 。
/// 注意利润不能是 7-1 = 6, 因为卖出价格需要大于买入价格。
/// 示例 2:
///
/// 输入: [7,6,4,3,1]
/// 输出: 0
/// 解释: 在这种情况下, 没有交易完成, 所以最大利润为 0。
///
///
///
///
// class Solution {
//   int maxProfit(List<int> prices) {
//     if (prices.isEmpty) {
//       return 0;
//     }
//     final int len = prices.length;
//     int min = prices.first;
//     int maxPrice = 0;
//     int begin = 1;
//     while(begin < len - 1){
//       if (begin < min) {
//         min = prices[begin];
//       }
//       for(int i = begin; i < len - 1; i ++){
//         maxPrice = max(prices[i] - min, maxPrice);
//       }
//       begin++;
//     }
//     return maxPrice;
//   }
// }


class Solution {
  int maxProfit(List<int> prices) {
    if (prices.isEmpty) {
      return 0;
    }
    final int len = prices.length;
    int minPrice = prices.first;
    int maxPrice = 0;
    for(int i = 0; i < len; i++) {
      if (prices[i] < minPrice) {
        minPrice = prices[i];
      } else if (prices[i] - minPrice > maxPrice) {
        maxPrice = prices[i] - minPrice;
      }
    }
    return maxPrice;
  }
}