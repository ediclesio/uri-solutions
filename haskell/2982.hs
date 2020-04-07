
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2982

repete :: Int -> Int -> Int -> IO ()
repete 0 g v = if g > v
                then putStrLn "NAO VAI TER CORTE, VAI TER LUTA!"
                else putStrLn "A greve vai parar."
repete n g v = do input <- getLine
                  let s = words input
                      c = s !! 0
                      num = read (s !! 1) :: Int
                  if c == "G"
                   then repete (n-1) (g+num) v
                   else repete (n-1) g (v+num)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n 0 0