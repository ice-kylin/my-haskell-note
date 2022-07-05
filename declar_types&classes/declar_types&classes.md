# Declaring Types and Classes

- in Haskell, a new name for an existing type can be difined using a **type declaration**
- like function definitions, type declarations can also have **parameters**
- type declarations can be nested
- however, type declarations cannot be recursive

## Data Declarations

- a completely new type can defined by specifying its values using a **data declaration**
- `date Bool = False | True`
  - the two values `False` and `True` are called the **constructors** for the type Bool
  - type and constructor names must always begin with an upper-case letter
  - data declarations are similar to context free grammars
    - the former specifies the values of a type, the latter the sentences of a language
- the constructors in a data declaration can also have parameters
- data declarations themselves can also have parameters
- in Haskell, new types can be declared in terms of themselves
  - that is, types can be **recursive**
