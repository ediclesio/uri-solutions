
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2486

price :: String -> Int
price str = case str of
             "suco de laranja" -> 120
             "morango fresco" -> 85
             "mamao" -> 85
             "goiaba vermelha" -> 70
             "manga" -> 56
             "laranja" -> 50
             "brocolis" -> 34
             _ -> 0

loop :: Int -> Int -> IO Int
loop 0 s = return s
loop n s = do input <- getLine
              let a = words input
                  x = read (a !! 0) :: Int
                  str = drop (length (a !! 0) + 1) input
                  t = price str * x
              loop (n-1) (s+t)

main :: IO ()
main = do n <- readLn :: IO Int
          if n == 0
           then return ()
           else do x <- loop n 0
                   if x < 110
                    then putStrLn $ "Mais " ++ show (110-x) ++ " mg"
                    else if x > 130
                          then putStrLn $ "Menos " ++ show (x-130) ++ " mg"
                          else putStrLn $ show x ++ " mg"
                   main