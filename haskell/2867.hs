
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2867

repete :: Int -> IO ()
repete 0 = return ()
repete i = do userInput <- getLine
              let numbers = map read (words userInput) :: [Integer]
                  n = (numbers !! 0)
                  m = (numbers !! 1)
                  num = toInteger ((floor(logBase 10 (fromIntegral (n ^ m)))) + 1)
              putStrLn $ show (num)
              repete (i-1)

main :: IO ()
main = do c <- readLn :: IO Int
          repete c