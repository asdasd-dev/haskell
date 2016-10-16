checkOne (x:xs) = checkOne1 xs x
checkOne1 [] m = False
checkOne1 (x:xs) m = x + m == 10 || checkOne1 xs m
checkSum [] = False
checkSum [x] = False
checkSum (x:xs) = checkOne (x:xs) || checkSum xs