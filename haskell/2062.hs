
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2062

mostra :: [String] -> IO ()
mostra [a] = putStrLn a
mostra (a:as) = do putStr $ a ++ " "
                   mostra as

isIgual :: String -> String -> Bool
isIgual a b = take 2 a == take 2 b

corrige :: [String] -> [String]
corrige [] = []
corrige (a:as) | length a == 3 && isIgual a "OBI" = "OBI":corrige as
               | length a == 3 && isIgual a "URI" = "URI":corrige as
               | otherwise = a:corrige as

main :: IO ()
main = do n <- readLn :: IO Int
          input <- getLine
          mostra $ corrige (words input)