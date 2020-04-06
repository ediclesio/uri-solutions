
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2413
clicks :: Int -> Int
clicks t = (2*t)*2

main :: IO ()
main = do x <- readLn :: IO Int
          print(clicks x)