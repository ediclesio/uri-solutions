
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/3076

import System.IO (isEOF)

calc :: Integer -> Integer
calc n | 1 <= n && n <= 100 = 1
       | mod n 100 > 0 = div n 100 + 1
       | otherwise = div n 100

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do n <- readLn :: IO Integer
                   putStrLn $ show (calc n)
                   main