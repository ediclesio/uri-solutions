
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2708

repete :: Int -> Int -> IO ()
repete jipes turistas = do input <- getLine
                           let s = words input
                               str = s !! 0
                               a = read (s !! 1) :: Int
                           if str == "ABEND"
                            then putStrLn $ show turistas ++ "\n" ++ show jipes
                            else if str == "SALIDA"
                                  then repete (jipes+1) (turistas+a)
                                  else repete (jipes-1) (turistas-a)

main :: IO ()
main = repete 0 0