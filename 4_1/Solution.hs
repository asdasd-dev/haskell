upDown [] = False
upDown (x:xs) = up x xs 0
up m [] a = False
up m (x:xs) a | x > m = up x xs 1
              | x == m = False
              | a == 1 = down x xs
              | otherwise = False
down m [] = True
down m (x:xs) | x < m = down x xs
              | x == m = False
              | otherwise = False
