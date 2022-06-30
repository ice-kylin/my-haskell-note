# Types and classes

- if evaluating an exception e would produce a value of type t, then e **has type** t
  - written `e :: t`
- well formed exception has a type, which can be automatically calculated at compile time using a process called **type inference**
- strongly typed language

## Basic Types

- `Bool`
- `Char`
- `String`
- `Int`
- `Float`

## List Types

- `[t]` is the type of lists with elements of type `t`
- the type of the list says nothing about its length
- the type of the elements is unrestricted

## Tuple Types

- `(t1, t2, ..., tn)` is the type of n-tuples whose ith components have type `ti` for any `i` in `1...n`
- the type of a tuple encodes its size
- the type of the components is unrestricted

## Function Types

- `t1 -> t2` is the type of function that map values of type `t1` to values of type `t2`

### Curried Functions

- ```hs
  add' :: Int -> Int -> Int
  add' x y = x + y
  ```
  - `add'` takes an integer x and returns a function `add' x`
  - In turn, this function takes an integer `y` and returns the result `x + y`
- curried functions are more flexible than functions on tuples, because useful functions can often be made by **partially applying** a curried function

### Polymorphic Functions

- A function is called **polymorphic** if its type contains one or more type variables
- Type variables must begin with a lower-case letter, and are usually names a, b, c, etc

### Overloaded Functions

- A polymorphic function is called **overloaded** if its type contains one or more class constraints

#### Common Classes

- `Num`
- `Eq`
- `Ord`
