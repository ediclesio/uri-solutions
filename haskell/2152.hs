
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2152

repete :: Int -> IO ()
repete 0 = return ()
repete n = do userInput <- getLine
              let numbers = map read (words userInput) :: [Int]
                  h = (numbers !! 0)
                  m = (numbers !! 1)
                  o = (numbers !! 2)
              if h < 10
                then putStr $ "0" ++ show h
                else putStr $ show h
              putStr $ ":"
              if m < 10
                then putStr $ "0" ++ show m
                else putStr $ show m
              
              if o == 1
                then putStrLn $ " - A porta abriu!"
                else putStrLn $ " - A porta fechou!"
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n