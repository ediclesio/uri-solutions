
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/3040

resposta :: Int -> Int -> Int -> IO ()
resposta h d g = if h >= 200 && h <= 300 && d >= 50 && g >= 150 && g <= 5000
                  then putStrLn "Sim"
                  else putStrLn "Nao"

repete :: Int -> IO ()
repete 0 = return ()
repete n = do input <- getLine
              let numbers = map read (words input) :: [Int]
                  h = numbers !! 0
                  d = numbers !! 1
                  g = numbers !! 2
              resposta h d g
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n