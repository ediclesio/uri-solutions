
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1281

import Text.Printf (printf)

f :: [(String, Double)] -> String -> Double
f [] _ = 0
f (a:as) fruta | fst a /= fruta = f as fruta
               | otherwise = snd a

toDouble :: Int -> Double
toDouble x = fromIntegral x

calc :: [(String, Int)] -> [(String, Double)] -> Double
calc [] _ = 0
calc (a:as) b = (toDouble (snd a) * f b (fst a)) + calc as b

qntd :: Int -> IO [(String, Int)]
qntd 0 = return []
qntd p = do input <- getLine
            let a = words input
                f = a !! 0
                q = read (a !! 1) :: Int
            arr <- qntd (p-1)
            return (arr ++ [(f, q)])

frutas :: Int -> IO [(String, Double)]
frutas 0 = return []
frutas m = do input <- getLine
              let a = words input
                  f = a !! 0
                  p = read (a !! 1) :: Double
              arr <- frutas (m-1)
              return (arr ++ [(f, p)])

repete :: Int -> IO ()
repete 0 = return ()
repete n = do m <- readLn :: IO Int
              f <- frutas m
              p <- readLn :: IO Int
              q <- qntd p
              printf "R$ %.2f\n" (calc q f)
              repete (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          repete n