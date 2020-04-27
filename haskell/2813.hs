
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2813

import Data.Char

repete :: Int -> Int -> Int -> Int -> Int -> IO ()
repete 0 c _ e _ = putStrLn $ show c ++ " " ++ show e
repete n cc cs tc ts = do input <- getLine
                          let strs = words input
                              sd = map toLower (strs !! 0)
                              se = map toLower (strs !! 1)
                              ccx = if sd == "chuva" && cs == 0 
                                     then cc+1
                                     else if sd == "chuva" && cs > 0
                                           then cc-1
                                           else cc
                              
                              tsx = if sd == "chuva" && cs >= 0 
                                     then ts+1
                                     else ts
                              
                              csx = if sd == "chuva" && cs > 0
                                     then cs+1
                                     else cs
                          
                          if se == "chuva" && tsx == 0
                           then repete (n-1) ccx (csx+1) (tc+1) tsx
                           else if se == "chuva" && tsx > 0
                                 then repete (n-1) ccx (csx+1) tc (tsx-1)
                                 else repete (n-1) cc csx tc ts

main :: IO ()
main = do n <- readLn :: IO Int
          repete n 0 0 0 0