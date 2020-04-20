
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2003

import System.IO (isEOF)

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   if input == ""
                    then return ()
                    else do let x = read [input !! 0] :: Int
                                y = read (drop 2 input) :: Int
                                n = x*60 + y+60- 480
                            if n > 0
                             then putStrLn $ "Atraso maximo: " ++ show n
                             else putStrLn "Atraso maximo: 0"
                            main