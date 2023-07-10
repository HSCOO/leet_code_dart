import 'dart:math';

/// https://leetcode.cn/problems/lian-xu-zi-shu-zu-de-zui-da-he-lcof/
///
/// 剑指 Offer 42. 连续子数组的最大和
/// 简单
/// 709
/// 相关企业
/// 输入一个整型数组，数组中的一个或连续多个整数组成一个子数组。求所有子数组的和的最大值。
///
/// 要求时间复杂度为O(n)。
///
///
///
/// 示例1:
///
/// 输入: nums = [-2,1,-3,4,-1,2,1,-5,4]
/// 输出: 6
/// 解释: 连续子数组 [4,-1,2,1] 的和最大，为 6。
///


// 动态规划
// 转移方程：
// nums[i] = nums[i-1] + nums[i], nums[i-1] > 0
// nums[i] = nums[i], nums[i-1] <= 0
class Solution {
  int maxSubArray(List<int> nums) {
    int res = nums[0];
    final int len = nums.length;
    for (int i = 0; i <len; i++){
      nums[i] += max(nums[i-1], 0);
      res = max(res, nums[i]);
    }
    return res;
  }
}