data Tree = Empty | 
 Node Integer Tree Tree

foldTree op comp Empty = comp
foldTree op comp (Node x l r) = (foldTree op comp l) `op` x `op` comp `op` 
                                  (foldTree op comp r)
  {-- `op` comp лишнее --}

test:
foldTree (*) 1 (Node 5 (Node 4 Empty Empty) (Node 3 Empty Empty))
foldTree (+) 0 (Node 5 (Node 4 Empty Empty) (Node 3 Empty Empty))