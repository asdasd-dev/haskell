istrue [] = False
istrue (x:xs) = if x == True then
                  True
                else
                  istrue xs
check cond xs = istrue(map cond xs)