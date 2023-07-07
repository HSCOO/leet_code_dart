/// https://leetcode.cn/problems/cong-shang-dao-xia-da-yin-er-cha-shu-ii-lcof/description/
///
/// 剑指 Offer 32 - II. 从上到下打印二叉树 II
/// 简单
/// 295
/// 相关企业
/// 从上到下按层打印二叉树，同一层的节点按从左到右的顺序打印，每一层打印到一行。
///
///
///
/// 例如:
/// 给定二叉树: [3,9,20,null,null,15,7],
///
/// 3
/// / \
/// 9  20
/// /  \
/// 15   7
/// 返回其层次遍历结果：
///
/// [
/// [3],
/// [9,20],
/// [15,7]
/// ]

//Definition for a binary tree node.
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
  List<List<int>> levelOrder(TreeNode? root) {
    // queue里面放的是同一层
    // 比如：当前queue放的是root
    // 第一轮：queue = [root.left, root.right]
    // 第二轮：queue = [root.left.left, root.left.right, root.right.left, root.right.right]
    // 每次遍历queue的时候，就将当前层级的val添加到数组里面，遍历完之前再添加到res里面。
    List<TreeNode> queue = [];
    List<List<int>> res = [];
    if (root != null) {
      queue.add(root);
    }
    while(queue.isNotEmpty){
      List<int> tmp = [];
      for(int i = queue.length; i > 0; i--){
        TreeNode node = queue.removeAt(0);
        tmp.add(node.val);
        if (node.left != null) {
          queue.add(node.left!);
        }
        if (node.right != null) {
          queue.add(node.right!);
        }
      }
      res.add(tmp);
    }
    return res;
  }
}
