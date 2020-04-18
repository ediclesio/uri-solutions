
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1176

resultado :: [(Int,Integer)] -> IO ()
resultado [] = return ()
resultado (x:xs) = do putStrLn $ "Fib(" ++ show (fst x) ++ ") = " ++ show (snd x)
                      resultado xs

fibs :: [Integer]
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

repete :: Int -> [(Int,Integer)] -> IO ()
repete 0 a = resultado (reverse a)
repete i a = do n <- readLn :: IO Int
                let f = if n == 0 then [0] else take n fibs
                repete (i-1) ((n,head $ reverse f):a)

main :: IO ()
main = do t <- readLn :: IO Int
          repete t []