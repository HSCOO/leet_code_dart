/// https:///leetcode.cn/problems/er-cha-sou-suo-shu-de-di-kda-jie-dian-lcof/description/
///
/// 剑指 Offer 54. 二叉搜索树的第k大节点
/// 简单
/// 390
/// 相关企业
/// 给定一棵二叉搜索树，请找出其中第 k 大的节点的值。
///
///
///
/// 示例 1:
///
/// 输入: root = [3,1,4,null,2], k = 1
/// 3
/// / \
/// 1   4
/// \
/// 2
/// 输出: 4
/// 示例 2:
///
/// 输入: root = [5,3,6,2,4,null,null,1], k = 3
/// 5
/// / \
/// 3   6
/// / \
/// 2   4
/// /
/// 1
/// 输出: 4
///
///

/// Definition for a binary tree node.
class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([
    this.val = 0,
    this.left,
    this.right,
  ]);
}

class Solution {
  int kthLargest(TreeNode? root, int k) {
    List<int> res = [];
    findValue(root, res,k);
    return res[k-1];
  }
  findValue(TreeNode? root, List<int> res,int k){
    if (root == null) {
      return;
    }
    findValue(root.right, res,k);
    res.add(root.val);
    if (res.length == k) {
      return;
    }
    findValue(root.left, res,k);
  }
}
