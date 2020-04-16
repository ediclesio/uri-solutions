
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1072

repete :: Int -> Int-> Int -> IO [Int]
repete 0 i o = return (i:o:[])
repete n i o = do x <- readLn :: IO Integer
                  if x >= 10 && x <= 20
                   then repete (n-1) (i+1) o
                   else repete (n-1) i (o+1)

main :: IO ()
main = do n <- readLn :: IO Int
          r <- repete n 0 0
          putStrLn $ show (r !! 0) ++ " in"
          putStrLn $ show (r !! 1) ++ " out"