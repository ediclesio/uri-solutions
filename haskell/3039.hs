
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/3039

resultado :: Int -> Int -> IO ()
resultado c b = putStrLn $ show c ++ " carrinhos\n" ++ show b ++ " bonecas"

repete :: Int -> Int -> Int -> IO ()
repete 0 c b = resultado c b
repete n c b = do input <- getLine
                  let a = words input
                      nome = a !! 0
                      sexo = a !! 1
                  if sexo == "M"
                   then repete (n-1) (c+1) b
                   else repete (n-1) c (b+1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n 0 0