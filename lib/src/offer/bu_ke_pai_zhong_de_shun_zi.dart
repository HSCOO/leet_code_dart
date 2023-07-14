/// https://leetcode.cn/problems/bu-ke-pai-zhong-de-shun-zi-lcof/description/
///
/// 剑指 Offer 61. 扑克牌中的顺子
/// 简单
/// 342
/// 相关企业
/// 从若干副扑克牌中随机抽 5 张牌，判断是不是一个顺子，即这5张牌是不是连续的。2～10为数字本身，A为1，J为11，Q为12，K为13，而大、小王为 0 ，可以看成任意数字。A 不能视为 14。
///
///
///
/// 示例 1:
///
/// 输入: [1,2,3,4,5]
/// 输出: True
///
///
/// 示例 2:
///
/// 输入: [0,0,1,2,5]
/// 输出: True
///

/// 1.先排序再检查各种情况。
// class Solution {
//   bool isStraight(List<int> nums) {
//     // 先排序
//     nums.sort();
//     final int len = nums.length;
//     int i = 0;
//     // 记录王的数量
//     int joker = 0;
//     while (i + 1 < len) {
//       if (nums[i] == 0) {
//         joker++;
//       } else {
//         // 1.如果相等，就说明不是顺子
//         if (nums[i + 1] == nums[i]) {
//           return false;
//         }
//
//         if (joker == 0) {
//           // 2.没有王，相邻差 > 1，也不是顺子
//           if (nums[i + 1] - nums[i] > 1) {
//             return false;
//           }
//         } else {
//           // 3. 有王，相邻差 > 王数+1，也不是顺子
//           if (nums[i + 1] - nums[i] > joker + 1) {
//             return false;
//             // 4. 有王，相邻差恰好 == 王数+1，就说明刚刚顺子，并且王数=0
//           } else if (nums[i + 1] - nums[i] == joker + 1) {
//             joker = 0;
//           }
//         }
//       }
//       i++;
//     }
//     return true;
//   }
// }

class Solution {
  bool isStraight(List<int> nums) {
    nums.sort();
    final int len = nums.length;
    int i = 0;
    int joker = 0;
    while(i + 1 < len){
      if (nums[i] == 0) {
        joker++;
      } else if (nums[i+1] == nums[i]){
        return false;
      }
      i++;
    }
    // 相邻的牌，如果是顺子，那么最大值-最小值肯定小于len
    // joker不是最小值
    return nums.last - nums[joker] < len;
  }
}
