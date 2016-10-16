minsum (x:xs) = minsum1 (x:xs) (x + head(xs))
minsum1 [x] i = i
minsum1 (x:xs) i =  if  x + head(xs) < i then 
                     minsum1 xs (x + head(xs))
                    else
                     minsum1 xs i