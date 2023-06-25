import 'dart:math';

/// https://leetcode.cn/problems/intersection-of-two-arrays-ii/description/
///两个数组的交集 II
///给你两个整数数组 nums1 和 nums2 ，请你以数组形式返回两数组的交集。返回结果中每个元素出现的次数，应与元素在两个数组中都出现的次数一致（如果出现次数不一致，则考虑取较小值）。可以不考虑输出结果的顺序。
///
///
///
///示例 1：
///
///输入：nums1 = [1,2,2,1], nums2 = [2,2]
///输出：[2,2]
///示例 2:
///
///输入：nums1 = [4,9,5], nums2 = [9,4,9,8,4]
///输出：[4,9]
///
///
///提示：
///
///1 <= nums1.length, nums2.length <= 1000
///0 <= nums1[i], nums2[i] <= 1000


/// 遍历最短数组，匹配另一个数组的元素
/// 如果匹配上，需要避免重复匹配
class Solution {
  List<int> intersect(List<int> nums1, List<int> nums2) {
    List<int> minLenNums = [];
    List<int> maxLenNums = [];
    if (nums1.length > nums2.length) {
      minLenNums = nums2;
      maxLenNums = nums1;
    }else {
      minLenNums = nums1;
      maxLenNums = nums2;
    }

    List<int> res = [];
    for(int i = 0; i < minLenNums.length; i++){
      int value = minLenNums[i];
      if (maxLenNums.contains(value)) {
        res.add(value);
        // 避免重复匹配，匹配上的就移除
        maxLenNums.remove(value);
      }
    }
    return res;
  }
}