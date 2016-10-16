countEven xs = foldr (\x y -> if mod x 2 == 0 then 1 + y
                              else y) 0 xs
countEven1 xs = length xs - sum (map (`mod` 2) xs)