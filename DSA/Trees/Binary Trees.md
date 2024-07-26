A tree with at most two links from one node is known as a binary tree.

## Properties
- Maximum number of nodes - $2^i$
- Height is longest distance between root to leaf nodes (count the edges)
- Maximum number of nodes possible till height h is $(2^0 + 2^1 + 2^2 + \cdots 2^h)$ = $2^{h+1} -1$
>[!danger] ERROR - Minimum nodes at height h is $2^{h-1}$
# Types Of Binary Trees
## Full/Proper/Strict Binary Tree
It is a tree where each node must contain 2 children except the leaf node.

- There are either two children or no children.
- The number of leaf nodes is equal to number of internal nodes + 1
- The minimum number of nodes is equal to $2^h + 1$
- Maximum number of nodes is the same as number of nodes in binary tree, $2^{h+1} - 1$
- The minimum height of the full binary tree is $log_2(n+1) - 1$
## Complete Binary Tree
A binary tree where all the nodes are completely filled except the last level.

# Degenerate Binary Tree

Skews only towards the right, exactly like a linked list.

## Balanced Binary Tree
- The heights of left and right trees can have a maximum height difference of 1.
## Binary Search Tree
Value of left node must be smaller than parent, and value of right node must be greater than the parent node.


