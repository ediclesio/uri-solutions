
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2373

mostraResultado :: Int -> IO ()
mostraResultado r = putStrLn $ show r

repete :: Int -> Int -> IO ()
repete 0 t = mostraResultado t
repete n t = do input <- getLine
                let numbers = map read (words input) :: [Int]
                    l = numbers !! 0
                    c = numbers !! 1
                if l > c
                 then repete (n-1) (t+c)
                 else repete (n-1) t

main :: IO ()
main = do n <- readLn :: IO Int
          repete n 0