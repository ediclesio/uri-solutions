
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2466

buildNextLevel :: [Int] -> [Int]
buildNextLevel [x] = []
buildNextLevel (x:y:xs) | x == y = 1:buildNextLevel (y:xs)
                        | otherwise = -1:buildNextLevel (y:xs)

loop :: [Int] -> Int
loop [x] = x
loop x = loop (buildNextLevel x)

main :: IO ()
main = do n <- readLn :: IO Int
          input <- getLine
          let numbers = map read (words input) :: [Int]
          if loop numbers == 1
           then putStrLn "preta"
           else putStrLn "branca"