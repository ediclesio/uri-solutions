
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1221

isPrime :: Int -> Bool
isPrime n | n <= 2 = n == 2
          | otherwise = odd n &&
            foldr (\d r -> d * d > n || (n `rem` d /= 0 && r))
                True divisors
divisors :: [Int]
divisors = [3,5..]

repete :: Int -> IO ()
repete 0 = return ()
repete i = do n <- readLn :: IO Int
              if (isPrime n)
                then putStrLn $ "Prime"
                else putStrLn $ "Not Prime"
              repete (i-1)

main :: IO ()
main = do c <- readLn :: IO Int
          repete c