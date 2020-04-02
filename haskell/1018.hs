
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1018

main :: IO ()
main = do n <- readLn :: IO Int
          let notas100 = div n 100
              notas50 = mod n 100
              notas20 = mod notas50 50
              notas10 = mod notas20 20
              notas5 = mod notas10 10
              notas2 = mod notas5 5
              notas1 = mod notas2 2
          putStrLn $ show n
          putStrLn $ show notas100 ++ " nota(s) de R$ 100,00"
          putStrLn $ show (div notas50 50) ++ " nota(s) de R$ 50,00"
          putStrLn $ show (div notas20 20) ++ " nota(s) de R$ 20,00"
          putStrLn $ show (div notas10 10) ++ " nota(s) de R$ 10,00"
          putStrLn $ show (div notas5 5) ++ " nota(s) de R$ 5,00"
          putStrLn $ show (div notas2 2) ++ " nota(s) de R$ 2,00"
          putStrLn $ show (div notas1 1) ++ " nota(s) de R$ 1,00"