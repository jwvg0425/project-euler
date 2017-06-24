
val = 600851475143

primes = sieve [2..]
    where sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p /= 0]

factors x (p:ps)
    | x `mod` p == 0 = p : factors (x `div` p) (p:ps)
    | p > x = []
    | otherwise = factors x ps

solve = last $ factors val primes