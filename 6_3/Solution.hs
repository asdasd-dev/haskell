data Tree = Empty | 
 Node Integer Tree Tree
height Empty = 0
height (Node x Empty Empty) = 0
height (Node x l r) = max (1 + height l) (1 + height r)