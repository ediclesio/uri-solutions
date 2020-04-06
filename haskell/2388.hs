
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2388

mostraResultado :: Int -> IO ()
mostraResultado r = putStrLn $ show r

repete :: Int -> Int -> IO ()
repete 0 dt = mostraResultado dt
repete n dt = do input <- getLine
                 let numbers = map read (words input) :: [Int]
                     t = numbers !! 0
                     v = numbers !! 1
                 repete (n-1) (dt + (t*v))

main :: IO ()
main = do n <- readLn :: IO Int
          repete n 0