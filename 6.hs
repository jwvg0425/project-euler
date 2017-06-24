
sumsq = sum . map (^2)
sqsum = (^2) . sum
diff xs = sqsum xs - sumsq xs
solve = diff [1..100]