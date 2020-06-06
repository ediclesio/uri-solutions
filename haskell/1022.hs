
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1022

simp :: Int -> Int -> Int -> Int -> Int
simp i x y z | i > min (abs x) (abs y) = z
             | mod x i == 0 && mod y i == 0 = simp (i+1) x y i
             | otherwise = simp (i+1) x y z

calcNum :: Char -> Int -> Int -> Int -> Int -> Int
calcNum op n1 d1 n2 d2 | op == '+' = n1*d2+n2*d1
                       | op == '-' = n1*d2-n2*d1
                       | op == '*' = n1*n2
                       | otherwise = n1*d2

calcDen :: Char -> Int -> Int -> Int -> Int -> Int
calcDen op n1 d1 n2 d2 | op == '/' = n2*d1
                       | otherwise = d1*d2

loop :: Int -> IO ()
loop 0 = return ()
loop n = do input <- getLine
            let a = words input
                n1 = read (a !! 0) :: Int
                d1 = read (a !! 2) :: Int
                op = head (a !! 3)
                n2 = read (a !! 4) :: Int
                d2 = read (a !! 6) :: Int
                num = calcNum op n1 d1 n2 d2
                den = calcDen op n1 d1 n2 d2
                s = simp 1 num den 1
            putStr $ show num ++ "/" ++ show den ++ " = "
            putStrLn $ show (div num s) ++ "/" ++ show (div den s)
            loop (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          loop n