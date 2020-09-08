
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1234

import Data.Char
import System.IO (isEOF)

convert :: String -> Bool -> String
convert [] _ = []
convert (a:as) c | a == ' ' = a : convert as c
                 | c = toUpper a : convert as False
                 | otherwise = toLower a : convert as True

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   if length input > 0
                    then putStrLn (convert input True) >> main
                    else return ()