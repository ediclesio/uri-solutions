
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2850

import System.IO (isEOF)

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do str <- getLine
                   if str == ""
                    then return ()
                    else do if str == "esquerda"
                             then putStrLn "ingles"
                             else if str == "direita"
                                   then putStrLn "frances"
                                   else if str == "nenhuma"
                                         then putStrLn "portugues"
                                         else if str == "as duas"
                                               then putStrLn "caiu"
                                               else putStr ""
                            main