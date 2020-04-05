
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/1564

import System.IO (isEOF)

vaiTerCopa :: IO ()
vaiTerCopa = do end <- isEOF
                if end
                 then return ()
                 else do n <- readLn :: IO Int
                         if n == 0
                          then putStrLn $ "vai ter copa!"
                          else putStrLn $ "vai ter duas!"
                         vaiTerCopa

main::IO ()
main = vaiTerCopa