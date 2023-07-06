/// https:///leetcode.cn/problems/diao-zheng-shu-zu-shun-xu-shi-qi-shu-wei-yu-ou-shu-qian-mian-lcof/
/// 剑指 Offer 21. 调整数组顺序使奇数位于偶数前面
/// 简单
/// 317
/// 相关企业
/// 输入一个整数数组，实现一个函数来调整该数组中数字的顺序，使得所有奇数在数组的前半部分，所有偶数在数组的后半部分。
///
///
///
/// 示例：
///
/// 输入：nums = [1,2,3,4]
/// 输出：[1,3,2,4]
/// 注：[3,1,2,4] 也是正确的答案之一。
///

class Solution {
  List<int> exchange(List<int> nums) {
    final int len = nums.length;
    int i = 0;
    int j = len - 1;
    int tmp = 0;
    while(i < j){
      // 如果是奇数，就i++意味着不用交换位置，否者就退出需要交换位置
      while (i < j && nums[i] % 2 == 1){
        i++;
      }
      // 如果是偶数，就j--意味着不用交换位置，否者就退出需要交换位置
      while(i < j && nums[j] % 2 == 0){
        j--;
      }
      tmp = nums[i];
      nums[i] = nums[j];
      nums[j] = tmp;
    }
    return nums;
  }
}