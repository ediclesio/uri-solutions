
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2061

mostraResultado :: Int -> IO ()
mostraResultado r = putStrLn $ show r

repete :: Int -> Int -> IO ()
repete 0 m = mostraResultado m
repete n m = do str <- getLine
                if str == "fechou"
                 then repete (n-1) (m+1)
                 else repete (n-1) (m-1)

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              m = numbers !! 0
              n = numbers !! 1
          repete n m