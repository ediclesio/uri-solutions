
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2313

isTriangulo :: Int -> Int -> Int -> Bool
isTriangulo a b c = (abs (b - c) < a && a < (b + c)) &&
                    (abs (a - c) < b && b < (a + c)) &&
                    (abs (a - b) < c && c < (a + b))

tipoTriangulo :: Int -> Int -> Int -> String
tipoTriangulo a b c = if a == b && b == c
                       then "Valido-Equilatero"
                       else if a == b || b == c || a == c
                             then "Valido-Isoceles"
                             else "Valido-Escaleno"

isRetangulo :: Int -> Int -> Int -> Bool
isRetangulo a b c = if (a*a) == ((b*b) + (c*c)) ||
                       (b*b) == ((a*a) + (c*c)) ||
                       (c*c) == ((b*b) + (a*a))
                     then True
                     else False

main :: IO ()
main = do userInput <- getLine
          let numbers = map read (words userInput) :: [Int]
              a = (numbers !! 0)
              b = (numbers !! 1)
              c = (numbers !! 2)
          if (isTriangulo a b c) == False
            then putStrLn $ "Invalido"
            else do putStrLn $ tipoTriangulo a b c
                    if isRetangulo a b c
                     then putStrLn $ "Retangulo: S"
                     else putStrLn $ "Retangulo: N"