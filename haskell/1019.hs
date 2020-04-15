
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1019

repete :: Int -> Int -> Int -> Int -> [Int]
repete 0 h m s = h:m:s:[]
repete n h m s | n - 3600 >= 0 = repete (n-3600) (h+1) m s
               | n - 60 >= 0 = repete (n-60) h (m+1) s
               | n < 60 = repete (n-n) h m n

main :: IO ()
main = do n <- readLn :: IO Int
          let r = repete n 0 0 0
              h = r !! 0
              m = r !! 1
              s = r !! 2
          putStrLn $ show h ++ ":" ++ show m ++ ":" ++ show s