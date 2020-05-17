
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2692

mostra :: String -> [(Char,Char)] -> IO ()
mostra [] _ = putStrLn ""
mostra (a:as) t = do let b = [x | x <- t, snd x == a]
                     if length b > 0
                      then putStr [fst $ head b]
                      else do let c = [x | x <- t, fst x == a]
                              if length c > 0
                               then putStr [snd $ head c]
                               else putStr [a]
                     mostra as t

repete :: Int -> [(Char,Char)] -> IO ()
repete 0 _ = return ()
repete m t = do input <- getLine
                mostra input t
                repete (m-1) t

getTrocas :: Int -> IO [(Char,Char)]
getTrocas 0 = return []
getTrocas n = do input <- getLine
                 let a = words input
                     e = head (a !! 0)
                     s = head (a !! 1)
                 r <- getTrocas (n-1)
                 return ((e,s):r)

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              n = numbers !! 0
              m = numbers !! 1
          t <- getTrocas n
          repete m t