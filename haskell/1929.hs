
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1929

isTriangulo :: Int -> Int -> Int -> Bool
isTriangulo a b c = (abs (b - c) < a && a < (b + c)) &&
                    (abs (a - c) < b && b < (a + c)) &&
                    (abs (a - b) < c && c < (a + b))

main :: IO ()
main = do userInput <- getLine
          let numbers = map read (words userInput) :: [Int]
              a = (numbers !! 0)
              b = (numbers !! 1)
              c = (numbers !! 2)
              d = (numbers !! 3)
          if isTriangulo a b c
            then putStrLn $ "S"
            else if isTriangulo a c d
                  then putStrLn $ "S"
                  else if isTriangulo a b d
                        then putStrLn $ "S"
                        else if isTriangulo b c d
                              then putStrLn $ "S"
                              else putStrLn $ "N"