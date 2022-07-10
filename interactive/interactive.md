# Interactive Programming

- batch programs: take all their inputs at the start and give all their outputs at the end
- interactive programs: read form the keyboard and write to the screen as they are running
- Haskell programs are pure mathematical fucntions which **have no side effects**
- however reading from the keyboard and writing to the screen are side effects (interactive programs have side effects)
- solution
  - interactive programs can be written in Haskell by using types to distinguish pure expressions from actions that may involve side effects
  - evaluating an action executes its side effects, with the final result value being discarded

## Basic Actions

- the standard library provides a number of actions including the following 3 primitives
  - `getChar`: reads a character from the keyboard, echoes it to the screen and returns the character as its result value
  - `putChar c`: writes the character `c` to the screen and returns no results value
  - `return v`: simply returns the value `v` without performing any interaction

## Sequencing

- a sequence of actions can be combined as a single composite action using the keyword `do`
- `getLine`: reading a string from the keyboard
- `putStr`: writing a string to the screen
- `putStrLn`: writing a string and moving to a new line
