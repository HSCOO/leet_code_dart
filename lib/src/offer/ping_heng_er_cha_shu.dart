import 'dart:math';

/// https:///leetcode.cn/problems/ping-heng-er-cha-shu-lcof/
///
/// 剑指 Offer 55 - II. 平衡二叉树
/// 简单
/// 369
/// 相关企业
/// 输入一棵二叉树的根节点，判断该树是不是平衡二叉树。如果某二叉树中任意节点的左右子树的深度相差不超过1，那么它就是一棵平衡二叉树。
///
///
///
/// 示例 1:
///
/// 给定二叉树 [3,9,20,null,null,15,7]
///
/// 3
/// / \
/// 9  20
/// /  \
/// 15   7
/// 返回 true 。
///
/// 示例 2:
///
/// 给定二叉树 [1,2,2,3,3,null,null,4,4]
///
/// 1
/// / \
/// 2   2
/// / \
/// 3   3
/// / \
/// 4   4
/// 返回 false 。
///
///

///Definition for a binary tree node.
class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool isBalanced(TreeNode? root) {
    return height(root) >= 0;
  }

  int height(TreeNode? root) {
    if (root == null) {
      return 0;
    }
    int leftHeight = height(root.left);
    int rightHeight = height(root.right);
    if (leftHeight == -1 ||
        rightHeight == -1 ||
        (leftHeight - rightHeight).abs() > 1) {
      // 如果左右子树有一个-1，就说明左右子树不平衡
      // 如果左右子树相差大于1，就说明左右子树不平衡
      return -1;
    } else {
      // 计算层高，左子树、右子树的最大值+1
      return max(leftHeight, rightHeight) + 1;
    }
  }
}
