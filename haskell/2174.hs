
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2174

repete :: Int -> [String] -> IO Int
repete 0 arr = return (length arr)
repete n arr = do input <- getLine
                  if elem input arr
                   then repete (n-1) arr
                   else repete (n-1) (input:arr)

main :: IO ()
main = do n <- readLn :: IO Int
          r <- repete n []
          putStrLn $ "Falta(m) " ++ show (151-r) ++ " pomekon(s)."