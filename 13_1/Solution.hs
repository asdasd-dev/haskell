digitsToNum [] = undefined
digitsToNum [x] = x
digitsToNum xs = snd (foldr (\x y -> (fst y * 10, snd y + fst y * x)) (1, 0) xs)