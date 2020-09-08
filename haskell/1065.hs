
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1065

pairs :: [Int] -> [Int]
pairs a = [x | x <- a, mod (abs x) 2 == 0]

loop :: Int -> IO [Int]
loop 0 = return []
loop n = do r <- loop (n-1)
            x <- readLn :: IO Int
            return (r ++ [x])

main :: IO ()
main = do r <- loop 5
          putStrLn $ show (length $ pairs r) ++ " valores pares"