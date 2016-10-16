data Scheme = Resistance Double 
              | Parallel Scheme Scheme 
                | Consistent Scheme Scheme

totalResistance (Resistance n) = n
totalResistance (Parallel a b) = resA * resB / (resA + resB)
                                     where resA = totalResistance a
                                           resB = totalResistance b
totalResistance (Consistent a b) = totalResistance a + totalResistance b

test = totalResistance (Consistent (Parallel (Resistance 2) (Resistance 2)) (Resistance 2))