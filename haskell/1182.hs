
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1182

import Text.Printf (printf)

getLine' :: Int -> IO [Double]
getLine' 0 = return []
getLine' n = do r <- getLine' (n-1)
                x <- readLn :: IO Double
                return (r ++ [x])

loop :: Int -> IO [[Double]]
loop 0 = return []
loop t = do r <- loop (t-1)
            arr <- getLine' 12
            return (r ++ [arr])

getSum :: [[Double]] -> Int -> Double
getSum [] _ = 0
getSum (x:xs) i = (x !! i) + getSum xs i

main :: IO ()
main = do l <- readLn :: IO Int
          input <- getLine
          let t = head input
          arr <- loop 12
          let r = getSum arr l
          if t == 'S'
           then printf "%.1f\n" r
           else printf "%.1f\n" (r / 12)