
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/3038

import System.IO (isEOF)

descrip :: String -> String
descrip [] = []
descrip (a:as) | a == '@' = 'a':descrip as
               | a == '&' = 'e':descrip as
               | a == '!' = 'i':descrip as
               | a == '*' = 'o':descrip as
               | a == '#' = 'u':descrip as
               | otherwise = a:descrip as

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do str <- getLine
                   if str == ""
                    then return ()
                    else do putStrLn $ descrip str
                            main