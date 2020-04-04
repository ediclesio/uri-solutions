
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1101

sequencia :: [Int] -> String
sequencia [] = ""
sequencia [l] = show l
sequencia (l:ls) = (show l)++" "++(sequencia ls)

maiorNum :: Int -> Int -> Int
maiorNum x y | x >= y = x
             | otherwise = y

menorNum :: Int -> Int -> Int
menorNum x y | x <= y = x
             | otherwise = y

main :: IO ()
main = do userInput <- getLine
          let numbers = map read (words userInput) :: [Int]
              n = (numbers !! 0)
              m = (numbers !! 1)
              menor = menorNum n m
              maior = maiorNum n m
          
          if n <= 0 || m <= 0
            then return ()
            else do putStrLn $ sequencia [menor..maior] ++ " Sum=" ++ show (sum [menor..maior])
                    main