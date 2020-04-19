
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2926

mostra :: String -> String -> IO ()
mostra [] _ = putStrLn ""
mostra (c:cs) str = do if c == 'a'
                        then putStr str
                        else putChar c
                       mostra cs str

main :: IO ()
main = do i <- readLn :: IO Int
          mostra "Entao eh Natal!" (take i (repeat 'a'))