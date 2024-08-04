# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def getMinimumDifference(self, root: Optional[TreeNode]) -> int:
        min_abs_diff = float('inf')
        prev_val = [None] 

        def inorder(node):
            nonlocal min_abs_diff  
            if not node:
                return
            
            inorder(node.left)
            
            if prev_val[0] is not None:
                min_abs_diff = min(min_abs_diff, node.val - prev_val[0])
            
            prev_val[0] = node.val
            
            inorder(node.right)
        
        inorder(root)
        return min_abs_diff