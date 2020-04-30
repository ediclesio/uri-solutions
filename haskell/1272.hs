
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1272

mostra :: [String] -> IO ()
mostra [] = putStrLn ""
mostra (a:as) = do putStr [(a !! 0)]
                   mostra as

repete :: Int -> IO ()
repete 0 = return ()
repete n = do str <- getLine
              mostra (words str)
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n