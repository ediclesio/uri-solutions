
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2049

import Data.List

findString :: String -> String -> Maybe Int
findString a b = findIndex (isPrefixOf a) (tails b)

repete :: Int -> IO ()
repete h = do str1 <- getLine
              if str1 /= "0"
               then do str2 <- getLine
                       if h > 1
                        then putStrLn $ "\nInstancia " ++ show h
                        else putStrLn $ "Instancia " ++ show h
                       if findString str1 str2 /= Nothing
                        then putStrLn "verdadeira"
                        else putStrLn "falsa"
                       repete (h+1)
               else return ()

main :: IO ()
main = repete 1