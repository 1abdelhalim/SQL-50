# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
from collections import deque 

class Solution:
    def sumOfLeftLeaves(self, root: Optional[TreeNode]) -> int:
        left_sum = 0 
        queue = deque([root]) 
        while queue:
            node = queue.popleft()

            if node.left:
                queue.append(node.left)
                if not node.left.left and not node.left.right:
                    left_sum += node.left.val

            if node.right:
                queue.append(node.right)

        return left_sum
              