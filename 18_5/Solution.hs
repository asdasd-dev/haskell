superMap f xs = foldr (\x y -> f x ++ y) [] xs