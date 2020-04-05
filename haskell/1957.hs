
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1957

import Data.Char
import Numeric (showHex)

hexdecimal :: String -> String
hexdecimal [] = []
hexdecimal (l:ls) | isLetter l = (toUpper l):(hexdecimal ls)
                  | otherwise = l:(hexdecimal ls)

main :: IO ()
main = do n <- readLn :: IO Int
          let str = hexdecimal (showHex n "")
          putStrLn $ str