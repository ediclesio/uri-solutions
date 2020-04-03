
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1043

isTriangulo :: Float -> Float -> Float -> Bool
isTriangulo a b c = (abs (b - c) < a && a < (b + c)) &&
                    (abs (a - c) < b && b < (a + c)) &&
                    (abs (a - b) < c && c < (a + b))

main :: IO ()
main = do userInput <- getLine
          let numbers = map read (words userInput) :: [Float]
              a = (numbers !! 0)
              b = (numbers !! 1)
              c = (numbers !! 2)
          if isTriangulo a b c
           then putStrLn $ "Perimetro = " ++ show (a+b+c)
           else putStrLn $ "Area = " ++ show ((a+b)*c/2)