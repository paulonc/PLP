import Text.Printf (printf)

ehMultiplo :: Int -> Int -> Bool
ehMultiplo n1 n2 = mod n1 n2 == 0


somaMultiplo :: Int -> Int -> Int -> IO()
somaMultiplo soma contador n1 = do
                            n2 <- readLn :: IO Int
                            if n2 <= -1 then
                                printf "Soma:%d\nQtd no somados:%d\n" soma contador
                            else 
                                if ehMultiplo n2 n1 then
                                    somaMultiplo (soma + n2) (contador + 1) n1
                                else somaMultiplo soma contador n1

main :: IO()
main = do
    x <- readLn :: IO Int
    somaMultiplo 0 0 x