hip (q, w) (a, s) = sqrt ((q - a)^2 + (w - s)^2)
isosc (q, w) (a, s) (z, x) = hip (q, w) (a, s) == hip (q, w) (z, x) ||
                              hip (z, x) (a, s) == hip (z, x) (q, w) ||
                               hip (a, s) (z, x) == hip (a, s) (q, w)
	{-- не совсем эффективно --}