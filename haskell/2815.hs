
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2815

mostra :: [String] -> IO ()
mostra [a] = putStrLn a
mostra (a:as) = (putStr $ a ++ " ") >> mostra as

corrige :: [String] -> [String]
corrige [] = []
corrige (a:as) | length a >= 4 && take 2 a == take 2 (drop 2 a) = (drop 2 a):corrige as
               | otherwise = a:corrige as

main :: IO ()
main = do texto <- getLine
          mostra $ corrige (words texto)