/// https://leetcode.cn/problems/shu-zu-zhong-chu-xian-ci-shu-chao-guo-yi-ban-de-shu-zi-lcof/
/// 剑指 Offer 39. 数组中出现次数超过一半的数字
/// 简单
/// 379
/// 相关企业
/// 数组中有一个数字出现的次数超过数组长度的一半，请找出这个数字。
///
///
///
/// 你可以假设数组是非空的，并且给定的数组总是存在多数元素。
///
///
///
/// 示例 1:
///
/// 输入: [1, 2, 3, 2, 2, 2, 5, 4, 2]
/// 输出: 2

// 方法1：排序后，取中间元素
// class Solution {
//   int majorityElement(List<int> nums) {
//     nums.sort();
//     return nums[nums.length >> 1];
//   }
// }


// 方法2：map
class Solution {
  int majorityElement(List<int> nums) {
    final int len = nums.length;
    Map<int, int> cache = {};
    int max = 0;
    int res = nums.first;
    for(int i = 0; i < len; i++){
      int key = nums[i];
      if (cache.containsKey(key)) {
        int value = cache[key] ?? 0;
        cache[key] = value + 1;
        if (value + 1 > max) {
          max = value + 1;
          res = key;
        }
      } else {
        cache[key] = 1;
      }
    }
    return res;
  }
}
