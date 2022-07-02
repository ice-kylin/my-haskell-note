# Recursive Functions

- in Haskell, functions can also be defined in terms of themselves
  - such functions are called **recursive**
- some functions, such as factorial, are **simpler** to define in terms of other functions
- many functions can **naturally** be defined in terms of themselves
- properties of functions defined using recursion can be proved using the simple but powerful mathematical technique of **induction**
- functions with more than one argument can also be defined using recursion

## Recursion on Lists

- recursion can be used to define functions on **lists**

```
  [1, 2] ++ [4, 5]
= 1 : ([2] ++ [4, 5])
= 1 : (2 : ([] ++ [4, 5]))
= 1 : (2 : [4, 5])
= 1 : [2, 4, 5]
= [1, 2, 4, 5]
```
