/// https://leetcode.cn/problems/zhong-jian-er-cha-shu-lcof/
///
/// 剑指 Offer 07. 重建二叉树
///
/// 输入某二叉树的前序遍历和中序遍历的结果，请构建该二叉树并返回其根节点。
///
/// 假设输入的前序遍历和中序遍历的结果中都不含重复的数字。
///
///
///
/// 示例 1:
///
///
/// Input: preorder = [3,9,20,15,7], inorder = [9,3,15,20,7]
/// Output: [3,9,20,null,null,15,7]
/// 示例 2:
///
/// Input: preorder = [-1], inorder = [-1]
/// Output: [-1]
///
///
/// 限制：
///
/// 0 <= 节点个数 <= 5000
///

// Definition for a binary tree node.
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
  List<int> _preorder = [];
  final Map<int,int> _dic = {};
  TreeNode? buildTree(List<int> preorder, List<int> inorder) {
    _preorder = preorder;
    for(int i = 0; i < inorder.length; i ++){
      _dic[inorder[i]] = i;
    }
    return recur(0, 0, inorder.length - 1);
  }

  TreeNode? recur(int root, int left, int right){
    if (left > right) {
      return null;
    }
    TreeNode node = TreeNode(_preorder[root]);
    int i = _dic[_preorder[root]] ?? 0;
    node.left = recur(root + 1, left, i-1);
    node.right = recur(root + i - left + 1, i + 1, right);
    return node;
  }
}
