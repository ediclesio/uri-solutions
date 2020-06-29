
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/3093

cards :: [Char]
cards = ['Q','J','K','A']

verify :: String -> Bool
verify str = all (\c -> elem c str) cards

loop :: Int -> IO ()
loop 0 = return ()
loop n = do input <- getLine
            if verify input
             then putStrLn "Aaah muleke"
             else putStrLn "Ooo raca viu"
            loop (n-1)

main :: IO ()
main = do n <- readLn :: IO Int
          loop n