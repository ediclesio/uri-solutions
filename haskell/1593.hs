
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1593

import Data.Char
import Numeric (showIntAtBase)

toBin :: Integer -> String
toBin x = showIntAtBase 2 intToDigit x ""

loop :: Int -> IO ()
loop 0 = return ()
loop t = do i <- readLn :: IO Integer
            let bin = toBin i
                r = length $ filter (== '1') bin
            putStrLn $ show r
            loop (t-1)

main :: IO ()
main = do t <- readLn :: IO Int
          loop t