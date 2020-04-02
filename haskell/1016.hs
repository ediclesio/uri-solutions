
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1016

main :: IO ()
main = do kms <- readLn :: IO Int
          putStrLn $ show (2 * kms) ++ " minutos"