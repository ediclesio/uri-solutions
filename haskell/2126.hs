
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2126

import System.IO (isEOF)

isSub :: String -> String -> Bool
isSub a b | length a >= length b = take (length b) a == b
          | otherwise = False

contSubs :: String -> String -> Int -> Int -> Int -> (Int,Int)
contSubs [] _ _ _ _ = (0,0)
contSubs _ [] i j c = (c,j)
contSubs s (a:as) i j c | a == s !! 0 && 
                          isSub (a:as) s = contSubs s as (i+1) i (c+1)
                        | otherwise = contSubs s as (i+1) j c

repete :: Int -> IO ()
repete i = do end <- isEOF
              if end
               then return ()
               else do input <- getLine
                       if input == ""
                        then return ()
                        else do str <- getLine
                                let r = contSubs input str 0 0 0
                                    subs = fst r
                                    index = snd r+1
                                putStrLn $ "Caso #" ++ show i ++ ":"
                                if subs > 0
                                 then do putStrLn $ "Qtd.Subsequencias: " ++ show subs
                                         putStrLn $ "Pos: " ++ show index
                                         putStrLn ""
                                 else do putStrLn "Nao existe subsequencia"
                                         putStrLn ""
                                repete (i+1)

main :: IO ()
main = repete 1