
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1515

repete :: Int -> Int -> String -> IO ()
repete 0 _ s = putStrLn s
repete n x s = do input <- getLine
                  let arr = words input
                      str = arr !! 0
                      a = read (arr !! 1) :: Int
                      t = read (arr !! 2) :: Int
                  if a-t < x
                   then repete (n-1) (a-t) str
                   else repete (n-1) x s

main :: IO ()
main = do n <- readLn :: IO Int
          if n == 0
           then return ()
           else do repete n 2114 []
                   main