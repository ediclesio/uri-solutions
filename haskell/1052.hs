
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1052

main :: IO ()
main = do let months = ["January","February","March",
                        "April","May","June","July",
                        "August","September","October",
                        "November","December"]
          
          n <- readLn :: IO Int
          if n >= 1 && n <= 12
           then putStrLn (months !! (n-1))
           else return ()