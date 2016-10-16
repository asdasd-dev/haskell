minlist [x] = x
minlist (x:xs) = minlist1 (x:xs) m where m = x
minlist1 [] m = m
minlist1 (x:xs) m = 
                if x < m then
                 minlist1 xs x
                else
                 minlist1 xs m
