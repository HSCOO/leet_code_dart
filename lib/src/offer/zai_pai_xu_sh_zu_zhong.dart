import 'dart:io';

/// https://leetcode.cn/problems/zai-pai-xu-shu-zu-zhong-cha-zhao-shu-zi-lcof/
///
/// 剑指 Offer 53 - I. 在排序数组中查找数字 I
/// 简单
/// 429
/// 相关企业
/// 统计一个数字在排序数组中出现的次数。
///
///
///
/// 示例 1:
///
/// 输入: nums = [5,7,7,8,8,10], target = 8
/// 输出: 2
/// 示例 2:
///
/// 输入: nums = [5,7,7,8,8,10], target = 6
/// 输出: 0
///

/// 方法一：遍历后记录
// class Solution {
//   int search(List<int> nums, int target) {
//     if (nums.isEmpty) {
//       return 0;
//     }
//     int res = 0;
//     final lastValue = nums.last;
//     if (target > lastValue) {
//       return res;
//     }
//     final int len = nums.length;
//     for(int i = 0; i < len; i++){
//       int value = nums[i];
//       if (target == value) {
//         res++;
//       } else if (target < value){
//         break;
//       }
//     }
//     return res;
//   }
// }

/// 方法二：二分查找
/// 找到左边序号，右边序号，相减就得到值
class Solution {
  int search(List<int> nums, int target) {
    if (nums.isEmpty) {
      return 0;
    }
    int res = 0;
    final lastValue = nums.last;
    if (target > lastValue) {
      return res;
    }
    int leftIndex = findIndex(nums, target - 1);
    int rightIndex = findIndex(nums, target);
    return rightIndex - leftIndex;
  }
  int findIndex(List<int> nums, int target){
    final int len = nums.length;
    int begin = 0;
    int end = len - 1;
    while(begin <= end){
      int mid = (begin + end) >> 1;
      int midValue = nums[mid];
      if (midValue <= target) {
        begin = mid + 1;
      } else if (midValue > target){
        end = mid - 1;
      }
    }
    return begin;
  }
}

