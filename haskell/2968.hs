
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2968

repete :: Int -> Int -> Int -> IO ()
repete i v n = if i < 10
                then do if mod (i*v*n) 10 /= 0
                         then putStr $ show (1+div (i*v*n) 10)
                         else putStr $ show (div (i*v*n) 10)
                        if i == 9
                         then putStrLn ""
                         else putStr " "
                        repete (i+1) v n
                else return ()

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              v = numbers !! 0
              n = numbers !! 1
          repete 1 v n