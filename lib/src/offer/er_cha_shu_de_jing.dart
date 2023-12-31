/// https://leetcode.cn/problems/er-cha-shu-de-jing-xiang-lcof/
/// 剑指 Offer 27. 二叉树的镜像
/// 简单
/// 365
/// 相关企业
/// 请完成一个函数，输入一个二叉树，该函数输出它的镜像。
///
/// 例如输入：
///
/// 4
///
/// /   \
///
/// 2     7
///
/// / \   / \
///
/// 1   3 6   9
/// 镜像输出：
///
/// 4
///
/// /   \
///
/// 7     2
///
/// / \   / \
///
/// 9   6 3   1
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
  TreeNode? mirrorTree(TreeNode? root) {
    if (root == null) {
      return null;
    }
    TreeNode? tmp = root.left;
    root.left = root.right;
    root.right = tmp;
    mirrorTree(root.left);
    mirrorTree(root.right);
  }
}
