{-
# Funcs about list

1. `head`: select the first element of a list
2. `tail`: remove the first element of a list
3. `!!`: select the nth element of a list
4. `take`: select the first n elements of a list
5. `drop`: remove the first n elements of a list
6. `length`: calculate the length of a list
7. `sum`: calculate the sum of a list of numbers
8. `product`: calculate the product of a list of numbers
9. `++`: append two lists
10. `reverse`: reverse a list
-}
main :: IO ()
main = print (head [1, 2, 3, 4, 5])
