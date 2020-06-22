

-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1032

primes :: [Int]
primes = sieve [2..]

sieve :: [Int] -> [Int]
sieve (p:ps) = p : sieve [ x | x <- ps, mod x p /= 0 ]

calc :: Int -> Int -> Int -> Int
calc n r i = mod (r + primes !! (n-i)) i

flavious :: Int -> Int -> Int -> Int
flavious n r i | i <= n = flavious n (calc n r i) (i+1)
               | otherwise = r

main :: IO ()
main = do n <- readLn :: IO Int
          if n == 0
           then return ()
           else do putStrLn $ show (flavious n 0 1 + 1)
                   main