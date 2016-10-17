data Scheme = Resistance Double 
              | Parallel Scheme Scheme 
                | Consistent Scheme Scheme

foldScheme (Resistance n) fc fp fr = fr n
foldScheme (Parallel a b) fc fp fr = let
                                       resA = foldScheme a fc fp fr
                                       resB = foldScheme b fc fp fr
                                     in fp resA resB
foldScheme (Consistent a b) fc fp fr = let
                                         resA = foldScheme a fc fp fr
                                         resB = foldScheme b fc fp fr
                                       in fc resA resB

test1 = foldScheme (Consistent (Parallel (Resistance 2) (Resistance 2)) (Resistance 2)) (+) (\resA resB -> resA * resB / (resA + resB)) (\n -> n)
test2 = foldScheme (Consistent (Parallel (Resistance 2) (Resistance 2)) (Resistance 2)) max max (\n -> n)
test3 = foldScheme (Consistent (Parallel (Resistance 2) (Resistance 2)) (Resistance 2)) (+) (+) (const 1)