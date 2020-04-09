
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2879

mostraResultado :: Int -> IO ()
mostraResultado r = putStrLn $ show r

repete :: Int -> Int -> IO ()
repete 0 v = mostraResultado v
repete n v = do num <- readLn :: IO Int
                if num > 1
                 then repete (n-1) (v+1)
                 else repete (n-1) v

main :: IO ()
main = do n <- readLn :: IO Int
          repete n 0