/// https://leetcode.cn/problems/he-wei-sde-liang-ge-shu-zi-lcof/
///
/// 剑指 Offer 57. 和为s的两个数字
/// 简单
/// 264
/// 相关企业
/// 输入一个递增排序的数组和一个数字s，在数组中查找两个数，使得它们的和正好是s。如果有多对数字的和等于s，则输出任意一对即可。
///
///
///
/// 示例 1：
///
/// 输入：nums = [2,7,11,15], target = 9
/// 输出：[2,7] 或者 [7,2]
/// 示例 2：
///
/// 输入：nums = [10,26,30,31,47,60], target = 40
/// 输出：[10,30] 或者 [30,10]
///

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    final int len = nums.length;
    int i = 0;
    int j = len - 1;
    while(i < j){
      int s = nums[i] + nums[j];
      // 如果和小于target，就移动左指针
      if (s < target) {
        i++;
        // 如果和大于target，就移动右指针
      }else if (s > target){
        j--;
      }else{
        return [nums[i], nums[j]];
      }
    }
    return [];
  }
}