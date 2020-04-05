
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1397

showResult :: Int -> Int -> IO ()
showResult a b = putStrLn $ show a ++ " " ++ show b

repete :: Int -> Int -> Int -> IO ()
repete 0 somaA somaB = showResult somaA somaB
repete n somaA somaB = do input <- getLine
                          let numbers = map read (words input) :: [Int]
                              a = numbers !! 0
                              b = numbers !! 1
                          if a > b
                           then repete (n-1) (somaA+1) somaB
                           else if b > a
                                 then repete (n-1) somaA (somaB+1)
                                 else repete (n-1) somaA somaB

main :: IO ()
main = do n <- readLn :: IO Int
          if n /= 0
            then do repete n 0 0
                    main
            else return ()