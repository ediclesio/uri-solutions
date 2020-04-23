
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2766

repete :: Int -> IO [String]
repete 0 = return []
repete i = do input <- getLine
              str <- repete (i-1)
              return (input:str)

main :: IO ()
main = do nomes <- repete 10
          putStrLn (nomes !! 2)
          putStrLn (nomes !! 6)
          putStrLn (nomes !! 8)