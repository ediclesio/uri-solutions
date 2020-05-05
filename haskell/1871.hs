
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1871

mostra :: String -> IO ()
mostra [] = putStrLn ""
mostra (x:xs) = do if x /= '0'
                    then putStr [x]
                    else putStr ""
                   mostra xs

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              m = numbers !! 0
              n = numbers !! 1
          if m == 0 || n == 0
           then return ()
           else do mostra (show (m+n))
                   main