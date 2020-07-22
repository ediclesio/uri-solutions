
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2443

mdc :: Int -> Int -> Int
mdc a b | mod a b == 0 = b
        | mod b a == 0 = a
        | a > b = mdc b (mod a b)
        | a < b = mdc a (mod b a)

mmc :: Int -> Int -> Int
mmc a b | a == 0 = 0
        | b == 0 = 0
        | a == b = a
        | otherwise = div (a * b) (mdc a b)

calcDivider :: Int -> Int -> Int
calcDivider a b | a == b = a
                | otherwise = mmc a b

calcDividend :: Int -> Int -> Int -> Int -> Int -> Int
calcDividend a b c d divider = (div divider b) * a + (div divider d) * c

main :: IO ()
main = do input <- getLine
          let numbers = map read (words input) :: [Int]
              a = numbers !! 0
              b = numbers !! 1
              c = numbers !! 2
              d = numbers !! 3
              divider = calcDivider b d
              dividend = calcDividend a b c d divider
              mdcDividendDivider = mdc dividend divider
              dividendIrreducible = div dividend mdcDividendDivider
              dividerIrreducible = div divider mdcDividendDivider
          putStrLn $ show (dividendIrreducible) ++ " " ++ show (dividerIrreducible)