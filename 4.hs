
isPalindrome x = show x == (reverse $ show x)

palindromes = [x*y| x <- [100..999], y <- [100..999], isPalindrome (x*y)]

solve = maximum palindromes