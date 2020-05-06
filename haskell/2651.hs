
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2651

import Data.Char

isZelda :: String -> String -> Bool
isZelda [] _ = False
isZelda (a:as) (b:bs) | a == b &&
                        length as >= length bs &&
                        take (length bs) as == bs = True
                      
                      | otherwise = isZelda as (b:bs)

main :: IO ()
main = do input <- getLine
          if isZelda (map toLower input) "zelda"
           then putStrLn "Link Bolado"
           else putStrLn "Link Tranquilo"