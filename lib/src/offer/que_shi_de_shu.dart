/// https://leetcode.cn/problems/que-shi-de-shu-zi-lcof/
///
/// 剑指 Offer 53 - II. 0～n-1中缺失的数字
/// 简单
/// 389
/// 相关企业
/// 一个长度为n-1的递增排序数组中的所有数字都是唯一的，并且每个数字都在范围0～n-1之内。在范围0～n-1内的n个数字中有且只有一个数字不在该数组中，请找出这个数字。
///
///
///
/// 示例 1:
///
/// 输入: [0,1,3]
/// 输出: 2
/// 示例 2:
///
/// 输入: [0,1,2,3,4,5,6,7,9]
/// 输出: 8
///


class Solution {
  int missingNumber(List<int> nums) {
    final int len = nums.length;
    int begin = 0;
    int end = len - 1;
    if (nums[end] == end) {
      return len;
    }
    while(begin <= end){
      int mid = (begin + end) >> 1;
      if (mid != nums[mid]) {
        end = mid - 1;
      } else{
        begin = mid + 1;
      }
    }
    return begin;
  }
}