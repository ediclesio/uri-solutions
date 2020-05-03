
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1581

inputs :: Int -> IO [String]
inputs 0 = return []
inputs k = do str <- getLine
              a <- inputs (k-1)
              return (a++[str])

repete :: Int -> IO ()
repete 0 = return ()
repete n = do k <- readLn :: IO Int
              s <- inputs k
              if length (filter (== (head s)) s) == length s
               then putStrLn (head s)
               else putStrLn "ingles"
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n