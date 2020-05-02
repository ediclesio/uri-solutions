
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1367

fst' :: (Char,Int,String) -> Char
fst' (a,_,_) = a

snd' :: (Char,Int,String) -> Int
snd' (_,b,_) = b

thr' :: (Char,Int,String) -> String
thr' (_,_,c) = c

f :: [(Char,Int,String)] -> Int -> Int
f [a] s | thr' a == "correct" = snd' a+s
        | otherwise = 0
f (a:as) s = f as (s+20)

filter' :: Char -> [(Char,Int,String)] -> [(Char,Int,String)]
filter' c a = [x | x <- a, fst' x == c]

calc :: [(Char,Int,String)] -> [Char] -> (Int,Int) -> (Int,Int)
calc [] _ s = s
calc (a:as) b s | elem (fst' a) b = calc as b s
                | otherwise = do let e = a:filter' (fst' a) as
                                     r = f e 0
                                 if r /= 0
                                  then calc as (fst' a:b) (fst s+1, snd s+r)
                                  else calc as (fst' a:b) s

for' :: Int -> IO [(Char,Int,String)]
for' 0 = return []
for' n = do input <- getLine
            let a = words input
                c = head (a !! 0)
                t = read (a !! 1) :: Int
                s = a !! 2
            r <- for' (n-1)
            return ((c,t,s):r)

main :: IO ()
main = do n <- readLn :: IO Int
          if n == 0
           then return ()
           else do a <- for' n
                   let r = calc a [] (0,0)
                   putStrLn $ show (fst r) ++ " " ++ show (snd r)
                   main