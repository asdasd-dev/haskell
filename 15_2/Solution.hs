data Tree = Empty | 
 Node Integer Tree Tree

foldTree f e (Node val l r) = let
                                resl = foldTree f e l
                                resr = foldTree f e r
                              in f val resl resr
foldTree f e Empty = e

sumOdd (Node val l r) = let
                          resl = sumOdd l
                          resr = sumOdd r
                        in if val `mod` 2 == 1 then 
                             val + resl + resr
                           else resl + resr
sumOdd Empty = 0