euclid a b | a  == 0 = (0, 1)
           | otherwise = (y' - (b `div` a) * x', x')
              where (x', y') = euclid (b `mod` a) a