
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1059

paresAte100 :: Int -> IO ()
paresAte100 i = if i <= 100
                 then do putStrLn $ show (i+1)
                         paresAte100 (i+2)
                 else return ()

main :: IO ()
main = paresAte100 1