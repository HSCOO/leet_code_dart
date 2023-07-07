/// https://leetcode.cn/problems/shun-shi-zhen-da-yin-ju-zhen-lcof/description/
/// 剑指 Offer 29. 顺时针打印矩阵
/// 简单
/// 555
/// 相关企业
/// 输入一个矩阵，按照从外向里以顺时针的顺序依次打印出每一个数字。
///
///
///
/// 示例 1：
///
/// 输入：matrix = [[1,2,3],[4,5,6],[7,8,9]]
/// 输出：[1,2,3,6,9,8,7,4,5]
/// 示例 2：
///
/// 输入：matrix = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
/// 输出：[1,2,3,4,8,12,11,10,9,5,6,7]

class Solution {
  List<int> spiralOrder(List<List<int>> matrix) {
    if (matrix.isEmpty || matrix.first.isEmpty) {
      return [];
    }
    final int rows = matrix.length;
    final int columns = matrix.first.length;
    List<int> order = List.filled(rows * columns, 0);
    int index = 0;
    int left = 0;
    int right = columns - 1;
    int top = 0;
    int bottom = rows - 1;
    while(left <= right && top <= bottom){
        for(int column = left; column <= right; column++){
          order[index++] = matrix[top][column];
        }
        for(int row = top + 1; row <= bottom; row++){
          order[index++] = matrix[row][right];
        }
        if(left < right && top < bottom){
          for(int column = right - 1; column > left; column--){
            order[index++] = matrix[bottom][column];
          }
          for(int row = bottom; row > top; row--){
            order[index++] = matrix[row][left];
          }
        }
        left++;
        right--;
        top++;
        bottom--;
    }
    return order;
  }
}