
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1551

cont :: String -> Int -> Int
cont [] s = s
cont (a:as) s | s <= 26 && elem a ['a'..'z'] = cont as (s+1)
              | otherwise = cont as s

remDuplicados :: String -> String ->  String
remDuplicados [] b = b
remDuplicados (a:as) b | not (elem a b) = remDuplicados as (a:b)
                       | otherwise = remDuplicados as b

repete :: Int -> IO ()
repete 0 = return ()
repete n = do str <- getLine
              let r = cont (remDuplicados str []) 0
              if r == 26
               then putStrLn "frase completa"
               else if r >= div 26 2
                     then putStrLn "frase quase completa"
                     else putStrLn "frase mal elaborada"
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n