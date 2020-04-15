
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1021

main :: IO ()
main = do n <- readLn :: IO Double
          let a = div (floor n) 100
              b = mod (floor n) 100
              c = div b 50
              d = mod b 50
              e = div d 20
              f = mod d 20
              g = div f 10
              h = mod f 10
              i = div h 5
              j = mod h 5
              k = div j 2
              l = mod j 2
              ee = n*100
              bb = floor ee
              m = mod bb 100
              nn = div m 50
              o = mod m 50
              p = div o 25
              q = mod o 25
              r = div q 10
              s = mod q 10
              t = div s 5
              u = mod s 5
          putStrLn "NOTAS:"
          putStrLn $ show a ++ " nota(s) de R$ 100.00"
          putStrLn $ show c ++ " nota(s) de R$ 50.00"
          putStrLn $ show e ++ " nota(s) de R$ 20.00"
          putStrLn $ show g ++ " nota(s) de R$ 10.00"
          putStrLn $ show i ++ " nota(s) de R$ 5.00"
          putStrLn $ show k ++ " nota(s) de R$ 2.00"
          putStrLn "MOEDAS:"
          putStrLn $ show l ++ " moeda(s) de R$ 1.00"
          putStrLn $ show nn ++ " moeda(s) de R$ 0.50"
          putStrLn $ show p ++ " moeda(s) de R$ 0.25"
          putStrLn $ show r ++ " moeda(s) de R$ 0.10"
          putStrLn $ show t ++ " moeda(s) de R$ 0.05"
          putStrLn $ show u ++ " moeda(s) de R$ 0.01"