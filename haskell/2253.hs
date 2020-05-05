
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2253

import System.IO (isEOF)
import Data.Char

isValid :: String -> Bool
isValid str = if all isAlphaNum str &&
                 length [a | a <- str, isLetter a, isLower a] > 0 &&
                 length [a | a <- str, isLetter a, isUpper a] > 0 &&
                 length str > 5 && length str <= 32
               then True
               else False

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do str <- getLine
                   if str /= ""
                    then do if isValid str
                             then putStrLn "Senha valida."
                             else putStrLn "Senha invalida."
                            main
                    else return ()