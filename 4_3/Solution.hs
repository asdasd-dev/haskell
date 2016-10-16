nseq' q curr sum cou | sum == q = cou + 1
                     | curr + sum > q = cou
                     | curr + sum == q = cou + 1
                     | otherwise = nseq' q (curr + 1) (sum + curr) cou
                         + nseq' q (curr + 1) sum 0
nseq q = nseq' q 1 0 0