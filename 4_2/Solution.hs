parts' res [x] currP  = currP : res
parts' res (x:y:xs) currP | x < y = parts' res (y:xs) (currP + 1)
                          | otherwise = parts' (currP : res) (y:xs) 1

nod :: Int -> Int -> Int
nod a b | b > a = nod b a
        | a `rem` b == 0 = b
        | otherwise = nod b (a `rem` b)

parts [x] = False
parts (x:xs) = (foldr nod (head lenghts) $ tail $ lenghts) > 1
                  where lenghts = parts' [] (x:xs) 1