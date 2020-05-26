
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2369

calc :: Int -> Int -> Int
calc n v | n-100 > 0 = calc (n-(n-100)) (v+(n-100)*5)
         | n-30 > 0 = calc (n-(n-30)) (v+(n-30)*2)
         | n-10 > 0 = calc (n-(n-10)) (v+(n-10))
         | otherwise = v

main :: IO ()
main = do n <- readLn :: IO Int
          putStrLn $ show $ calc n 7