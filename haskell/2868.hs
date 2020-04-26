
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2868

mostra :: Int -> IO ()
mostra n = putStrLn $ "E" ++ (take n (repeat 'r')) ++ "ou!"

calc :: Int -> Char -> Int -> Int -> Int
calc n1 op n2 r | op == '+' = abs (r-(n1+n2))
                | op == '-' = abs (r-(n1-n2))
                | otherwise = abs (r-(n1*n2))

repete :: Int -> IO ()
repete 0 = return ()
repete n = do input <- getLine
              let a = words input
                  n1 = read (a !! 0) :: Int
                  o = head (a !! 1)
                  n2 = read (a !! 2) :: Int
                  r = read (a !! 4) :: Int
              mostra (calc n1 o n2 r)
              repete (n-1)

main :: IO ()
main = do c <- readLn :: IO Int
          repete c