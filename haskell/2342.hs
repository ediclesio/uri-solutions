
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2342

calc :: Int -> [Char] -> Int -> Int
calc p c q | c == "+" = p+q
           | c == "*" = p*q

main :: IO ()
main = do n <- readLn :: IO Int
          input <- getLine
          let componentes = words input
              p = read (componentes !! 0) :: Int
              c = componentes !! 1
              q = read (componentes !! 2) :: Int
          if calc p c q > n
           then putStrLn "OVERFLOW"
           else putStrLn "OK"