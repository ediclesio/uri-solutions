
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2670

main :: IO ()
main = do a1 <- readLn :: IO Int
          a2 <- readLn :: IO Int
          a3 <- readLn :: IO Int
          let a = (a2*2)+(a3*4)
              b = (a1*2)+(a3*2)
              c = (a1*4)+(a2*2)
          putStrLn $ show (minimum (a:b:c:[]))