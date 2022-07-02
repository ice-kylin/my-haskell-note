# Defining Functions

## Conditional Expressions

- functions can be defined using **conditional expressions**
  - conditional expressions can be nested
  - in haskell, conditional expressions **must always have** an else branch

## Guarded Equations

- functions can be defined using **guarded equations**
  - Guarded Equations can be used to make definitions involving multiple conditions easier to read
  - the catch all condition `otherwise` is defined in the prelude by `otherwise = True`

## Pattern Matching

- many functions have a particularly clear defition using **pattern matching** on their arguments
  - the underscore symbol `_` is a **wildcard** pattern that matches any argument value
  - patterns are matches **in order**
  - patterns may not **repeat** variables

### List Patterns

- internally, every non-empty list is constructed by repeated use of an operator `(:)` called **cons** that adds an element to the start of a list
  - `[1, 2, 3, 4]` means `1 : (2 : (3 : (4 : []))))`
  - functions on lists can be defined using **x:xs** patterns
    - `x:xs` patterns only match **non-empty** lists
    - `x:xs` patterns must be **parenthesised**, because applications has priority over `(:)`

## Lambda Expressions

- functions can be constructed without naming the fuctions be using **lambda exceptions**
- lambda expressions can be used to avoid naming functions that are only **referenced once**

## Operator Sections

- an operator written **between** its two arguments can be converted into a curried function written **before** its two arguments by using parentheses
  - in general, if `x` is the operator then functions of the form `(x)`, `(yx)`, `(xy)` are called **sections**
  - useful functions can sometimes be constructed in a simply way using sections
    - `(1+)`: successor function
    - `(1/)`: reciprocation function
    - `(*2)`: doubling function
    - `(/2)`: halving function
