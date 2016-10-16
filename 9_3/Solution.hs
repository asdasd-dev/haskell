myfoldl f first [] = first
myfoldl f first (x:xs) = myfoldl f (f first x) xs