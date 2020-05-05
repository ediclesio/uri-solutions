
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2453

repete :: String -> Int -> String
repete [] _ = []
repete (a:as) i | a == ' ' = a:repete as i
                | mod i 2 /= 0 = a:repete as (i+1)
                | otherwise = repete as (i+1)

main :: IO ()
main = do input <- getLine
          putStrLn (repete input 0)