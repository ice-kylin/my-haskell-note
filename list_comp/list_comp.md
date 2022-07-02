# List Comprehensions

- in Haskell, a similar comprehension notation can be used to construct new **lists** from old lists
  - `[x^2 | x <- [1 .. 5]]`
    - the expression `x <- [1 .. 5]` is called a **generator**
    - comprehensions can have **multiple** generators, separated by commas
    - changing the **order** of the generators changes the order of the elements in the final list
    - multiple generators are liked **nested loops**, with later generators as more deeply nested loops whose variables change values more frequently
  - dependant generators: later generators can **depend** on the variables that are introduced by earlier generators
  - guards: list comprehensions can use guards to restrict the valuses produced be earlier generators
