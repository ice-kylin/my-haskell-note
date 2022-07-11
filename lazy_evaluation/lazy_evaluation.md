# Lazy Evaluation

- expressions in Haskell are evaluated using a simple technique called lazy evaluation
  - avoid doing **unnecessary** evaluation
  - ensures **termination** whenever possible
  - supports programming with **infinite** lists
  - allows programs to be more **modular**
- any way of evaluating the **same** expression will give the **same** result, provided it terminates

## Evaluation Strategies

- there are two main strategies for deciding which reducible expression (**redex**) to consider next
  - choose a redex that is **innermost**, in the sense that does not contain another redex
  - choose a redex that is **outermost**, in the sense that is not contained in another redex
- outermost evalution may give a result when innermost evaluation **fails to terminate**
- if **any** evaluation sequence terminates, then so does outermost, with the same result
- the outmost version is **inefficient**, because the argument `1 + 2` is duplicated when square is applied and is hence evaluated twice
- due to such duplication, outermost evaluation may require **more** steps than innermost
- this problem can easily be avoided by using **pointers** to indicate sharing of arguments

## Lazy Evaluation

- lazy evaluation = outermost evaluation + sharing of arguments
- lazy evaluation ensures **termination** whenever possible, but **never** requires more steps than innermost evaluation and simetimes fewer

## Infinite Lists

- in gerneral, with **lazy** evaluation expressions are only evaluated as **much as required** by the context in which they are used

## Modular Programming

- lazy evaluation allows us to make programs more **modular** by separating control from data
- without using lazy evaluation the control and data parts would need to be **combined** into one

### Gernerating Primes

- to generate the infinite sequence of primes
  1. write down the infinite sequence `2, 3, 4, ...`
  2. mark the first number p as being prime
  3. delete all multiples of p from the sequence
  4. return to the second step
