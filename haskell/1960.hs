
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1960

getNum :: Int -> String
getNum 0 = []
getNum n | n >= 500 = if n >= 900 && n < 1000 
                       then "CM"++getNum (n-900) 
                       else "D"++getNum (n-500)
         
         | n >= 100 && n < 500 = if n >= 400 
                                  then "CD"++getNum (n-400) 
                                  else "C"++getNum (n-100)
         
         | n >= 50 && n < 100 = if n >= 90 
                                 then "XC"++getNum (n-90) 
                                 else "L"++getNum (n-50)
         
         | n >= 10 && n < 50 = if n >= 40 
                                then "XL"++getNum (n-40) 
                                else "X"++getNum (n-10)
         
         | n >= 5 && n < 10 = if n == 9 
                               then "IX"++getNum (n-9) 
                               else "V"++getNum (n-5)
         
         | otherwise = if n == 4
                        then "IV"++getNum (n-4) 
                        else "I"++getNum (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          putStrLn $ getNum n