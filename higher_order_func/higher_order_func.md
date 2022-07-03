# Higher-Order Functions

- a function is called **higher-order** if it takes a function as an argument or returns a function as a result
- **common programming idioms** can be encoded as functions within the language itself
- **domain specific languages** can be difined as collections of higher-order functions
- **algebraic properties** of higher-order functions can be used to reason about programs

## The Foldr Function

- a number of functions on lists can be defined using the following simple pattern of recursion
  - ```haskell
    sum [] = 0
    sum (x:xs) = x + sum xs
    ```
- the higher-order library functions `foldr` (fold right) encapsulates this simple pattern of recursion, with the function `⊕` and the value `v` as arguments
  - ```
      product [1, 2, 3]
    = foldr (*) 1 [1, 2, 3]
    = foldr (*) 1 (1 : (2 : (3 : [])))
    = 1 * (2 * (3 * 1))
    = 6
    ```
- some recursive functions on lists, such as sum, are **simpler** to define using foldr
- properties of functions defined using foldr can be proved using algebraic properties of foldr, such as **fusion** and the **banana split** rule
- advanced program **optimisations** can be simpler if foldr is used in place of explicit recursion

## Other Library Functions

- the library function `(.)` returns the **composition** of two functions as single function
- the library function `all` decides if every element of a list satisfies a given predicate
- the library function `any` decides if at least one element of a list satisfies a predicate
- the library function `takeWhile` selects elements from a list while a predicate holds of all the elements
- the library function `dropWhile` removes elements while a predicate holds of all the elements
