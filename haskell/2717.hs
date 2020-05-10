
--https://www.urionlinejudge.com.br/judge/pt/problems/view/2717

main :: IO ()
main = do n <- readLn :: IO Int
          input <- getLine
          let numbers = map read (words input) :: [Int]
              a = numbers !! 0
              b = numbers !! 1
          if a+b <= n
           then putStrLn "Farei hoje!"
           else putStrLn "Deixa para amanha!"