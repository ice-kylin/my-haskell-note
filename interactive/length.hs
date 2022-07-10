-- an action that prompts for a string to be entered and displays its length
strLen :: IO ()
strLen = do
  putStrLn "Enter a string:"
  xs <- getLine
  putStr "The length of the string is "
  putStr (show (length xs))
  putStrLn "."
