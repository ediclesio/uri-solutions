
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1154

import Text.Printf (printf)

intToDouble :: Int -> Double
intToDouble x = fromIntegral x

mediaIdades :: Int -> Int -> IO ()
mediaIdades qtd s = do idade <- readLn :: IO Int
                       if idade > 0
                        then mediaIdades (qtd+1) (s+idade)
                        else printf "%.2f\n" (intToDouble s/ intToDouble qtd)

main :: IO ()
main = mediaIdades 0 0