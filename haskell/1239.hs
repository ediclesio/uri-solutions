
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1239

import System.IO (isEOF)

iOpen = "<i>"
iClose = "</i>"
bOpen = "<b>"
bClose = "</b>"

convert :: String -> Int -> Int -> String
convert [] _ _ = []
convert (a:as) i b | a == '_' && i == 0 = iOpen ++ convert as (i+1) b
                   | a == '_' && i > 0 = iClose ++ convert as (i-1) b
                   | a == '*' && b == 0 = bOpen ++ convert as i (b+1)
                   | a == '*' && b > 0 = bClose ++ convert as i (b-1)
                   | otherwise = a : convert as i b

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   if length input > 0
                    then putStrLn (convert input 0 0) >> main
                    else return ()