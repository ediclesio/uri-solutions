
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2587

getResult :: String -> Int -> Int -> Int -> [Int]
getResult u p1 p2 i | i < length u && u !! i == '_' = if p1 == -1
                                                       then getResult u i p2 (i+1)
                                                       else getResult u p1 i (i+1)
                    
                    | i < length u = getResult u p1 p2 (i+1)
                    | otherwise = [p1, p2]

loop :: Int -> IO ()
loop 0 = return ()
loop c = do s <- getLine
            t <- getLine
            u <- getLine
            let a = getResult u (-1) (-1) 0
                p1 = a !! 0
                p2 = a !! 1
            if s !! p1 == t !! p2 || s !! p2 == t !! p1
             then putStrLn "Y"
             else putStrLn "N"
            loop (c-1)

main :: IO ()
main = do c <- readLn :: IO Int
          loop c
