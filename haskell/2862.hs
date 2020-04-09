
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2862

repete :: Int -> IO ()
repete 0 = return ()
repete i = do n <- readLn :: IO Int
              if n <= 8000
                then putStrLn $ "Inseto!"
                else putStrLn $ "Mais de 8000!"
              repete (i-1)

main :: IO ()
main = do c <- readLn :: IO Int
          repete c