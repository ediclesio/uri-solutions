
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2779

repete :: Int -> Int -> [Int] -> IO Int
repete 0 n _ = return n
repete m n arr = do x <- readLn :: IO Int
                    if elem x arr
                     then repete (m-1) n arr
                     else repete (m-1) (n-1) (x:arr)

main :: IO ()
main = do n <- readLn :: IO Int
          m <- readLn :: IO Int
          r <- repete m n []
          putStrLn $ show r