
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2139

import System.IO (isEOF)

arr = [31,29,31,30,31,30,31,31,30,31,30,25]

calc :: Int -> Int -> Int
calc i s | i < 12 = calc (i+1) (s+(arr !! i))
         | otherwise = s

main :: IO ()
main = do end <- isEOF
          if end
           then return ()
           else do input <- getLine
                   if input /= ""
                    then do let numbers = map read (words input) :: [Int]
                                m = numbers !! 0
                                d = numbers !! 1
                            if m == 12 && d == 25
                             then putStrLn "E natal!"
                             else if m == 12 && d > 25
                                   then putStrLn "Ja passou!"
                                   else if m == 12 && d == 24
                                         then putStrLn "E vespera de natal!"
                                         else putStrLn $ "Faltam " ++
                                              show (calc m (arr !! (m-1)-d)) ++
                                              " dias para o natal!"
                            main
                    else return ()