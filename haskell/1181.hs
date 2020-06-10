
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1181

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

main :: IO ()
main = do l <- readLn :: IO Int
          input <- getLine
          let t = head input
          arr <- loop 12
          if t == 'S'
           then printf "%.1f\n" (sum $ arr !! l)
           else printf "%.1f\n" ((sum $ arr !! l) / 12)