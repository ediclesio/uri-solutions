
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1050

main::IO ()
main = do n <- readLn :: IO Float
          case n of
            61 -> putStrLn $ "Brasilia"
            71 -> putStrLn $ "Salvador"
            11 -> putStrLn $ "Sao Paulo"
            21 -> putStrLn $ "Rio de Janeiro"
            32 -> putStrLn $ "Juiz de Fora"
            19 -> putStrLn $ "Campinas"
            27 -> putStrLn $ "Vitoria"
            31 -> putStrLn $ "Belo Horizonte"
            _  -> putStrLn $ "DDD nao cadastrado"