
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1196

import System.IO (isEOF)

teclado :: String
teclado = "`1234567890-=QWERTYUIOP[]\\ASDFGHJKL;'ZXCVBNM,./"

getChar' :: String -> Char -> Int -> Char
getChar' (a:as) c i | a == c = teclado !! (i-1)
                    | otherwise = getChar' as c (i+1)

repete :: String -> IO ()
repete [] = putStrLn ""
repete (a:as) = do if a == ' '
                    then putStr " "
                    else putStr [getChar' teclado a 0]
                   repete as

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do str <- getLine
                   if str /= ""
                    then do repete str
                            main
                    else return ()