
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2386

mostraResultado :: Int -> IO ()
mostraResultado r = putStrLn $ show r

repete :: Int -> Int -> Int -> IO ()
repete 0 a s = mostraResultado s
repete n a s = do f <- readLn :: IO Int
                  if f*a >= 40000000
                   then repete (n-1) a (s+1)
                   else repete (n-1) a s

main :: IO ()
main = do a <- readLn :: IO Int
          n <- readLn :: IO Int
          repete n a 0