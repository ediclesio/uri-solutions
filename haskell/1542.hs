
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1542

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
          if numbers !! 0 == 0
           then return ()
           else do let q = numbers !! 0
                       d = numbers !! 1
                       p = numbers !! 2
                       r = div (q*d*p) (p-q)
                   if r == 1
                    then putStrLn $ show r ++ " pagina"
                    else putStrLn $ show r ++ " paginas"
                   main