
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1309

import System.IO (isEOF)

mostra :: String -> IO ()
mostra [] = return ()
mostra (x:xs) = do putStr [x]
                   mostra xs

formatar :: String -> String
formatar [] = []
formatar x | length x > 3 = formatar (drop 3 x) ++ "," ++ (reverse (take 3 x))
           | otherwise = reverse x

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do dolar <- getLine
                   if dolar /= ""
                   then do cents <- readLn :: IO Int
                           let str = formatar (reverse dolar)
                           mostra ('$':str)
                           if cents < 10
                            then putStrLn $ ".0" ++ show cents
                            else putStrLn $ "." ++ show cents
                           main
                   else return ()