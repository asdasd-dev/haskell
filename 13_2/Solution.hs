data Tree = Empty | 
 Node Integer Tree Tree
  deriving (Show, Eq)

renumerate (Node x l r) = snd (renumerate' (Node x l r) 1)
renumerate' (Node x l r) m | l == Empty && r == Empty = (m + 1, Node m Empty Empty)
                           | l == Empty = let (num, rt) = renumerate' r (m + 1)
                                          in (num, Node m Empty rt)
                           | r == Empty = let (num, lt) = renumerate' l (m + 1)
                                          in (num, Node m lt Empty)
                           | otherwise = let
                                          (numl, lt) = renumerate' l (m + 1)
                                          (numr, rt) = renumerate' r numl
                                         in (numr, Node m lt rt)