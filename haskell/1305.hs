
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1305

import System.IO (isEOF)

toDouble :: String -> Double
toDouble [] = 0
toDouble num | head num == '.' && head (reverse num) == '.' = read ('0':num++"0") :: Double
             | head num == '.' = read ('0':num) :: Double
             | head (reverse num) == '.' = read (num++"0") :: Double
             | otherwise = read num :: Double

toInt :: String -> Int
toInt [] = 0
toInt num | head num == '.' = 0
          | otherwise = floor (toDouble num)

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   if input /= ""
                    then do let num = toDouble input
                            input <- getLine
                            let cutoff = toDouble input
                                inteiro = toInt $ show num
                                frac = num - fromIntegral inteiro
                            if frac > cutoff
                             then putStrLn $ show (inteiro+1)
                             else putStrLn $ show inteiro
                            main
                    else return ()