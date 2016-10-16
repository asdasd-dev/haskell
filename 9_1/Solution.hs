multTable n = multTable' [[1..n]] 2 n
     where
       multTable' xs m n | m == n + 1 = xs
                         | otherwise = multTable' (xs ++ [map (*m) [1..n]]) (m + 1) n