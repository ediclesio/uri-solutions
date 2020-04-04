
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1114

main :: IO ()
main = do s <- readLn :: IO Int
          if s == 2002
            then putStrLn $ "Acesso Permitido"
            else do putStrLn $ "Senha Invalida"
                    main