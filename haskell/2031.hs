
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2031

repete :: Int -> IO ()
repete 0 = return ()
repete n = do j1 <- getLine
              j2 <- getLine
              if j1 == "papel" && j2 == "papel"
               then putStrLn "Ambos venceram"
               else if j1 == "ataque" && j2 == "ataque"
                     then putStrLn "Aniquilacao mutua"
                     else if j1 == "pedra" && j2 == "pedra"
                           then putStrLn "Sem ganhador"
                           else if j1 == "ataque" && j2 == "pedra"
                                 then putStrLn "Jogador 1 venceu"
                                 else if j1 == "pedra" && j2 == "ataque"
                                       then putStrLn "Jogador 2 venceu"
                                       else if j1 == "pedra" && j2 == "papel"
                                             then putStrLn "Jogador 1 venceu"
                                             else if j1 == "papel" && j2 == "pedra"
                                                   then putStrLn "Jogador 2 venceu"
                                                   else if j1 == "ataque" && j2 == "papel"
                                                         then putStrLn "Jogador 1 venceu"
                                                         else if j1 == "papel" && j2 == "ataque"
                                                               then putStrLn "Jogador 2 venceu"
                                                               else putStr ""
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n