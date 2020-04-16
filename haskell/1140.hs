
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1140

import Data.Char
import Data.List

isTautograma :: String -> Bool
isTautograma str = do let ws = words str
                          a = map (!! 0) ws
                      if all (== a !! 0) a
                       then True
                       else False

main :: IO ()
main = do str <- getLine
          if str == "*"
           then return ()
           else do if isTautograma $ map toLower str
                    then putStrLn "Y"
                    else putStrLn "N"
                   main