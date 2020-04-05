
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1168

calcLeds :: [Char] -> Int
calcLeds [] = 0
calcLeds (x:xs) = case x of
                   '1' -> 2 + calcLeds xs
                   '2' -> 5 + calcLeds xs
                   '3' -> 5 + calcLeds xs
                   '4' -> 4 + calcLeds xs
                   '5' -> 5 + calcLeds xs
                   '6' -> 6 + calcLeds xs
                   '7' -> 3 + calcLeds xs
                   '8' -> 7 + calcLeds xs
                   '9' -> 6 + calcLeds xs
                   '0' -> 6 + calcLeds xs

repete :: Int -> IO ()
repete 0 = return ()
repete n = do num <- getLine
              putStrLn $ show (calcLeds num) ++ " leds"
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n