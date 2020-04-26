
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2802

main :: IO ()
main = do n <- readLn :: IO Double
          let a = (n/24)*(n**3-6*n**2+23*n-18)+1
          putStrLn $ show (floor a)