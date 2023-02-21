matriz :: Int -> Int -> Int -> [[Int]]
matriz 0 m a = []
matriz n 0 a = []
matriz n m a | a == n = ([[(m*(a-1)+1)..((m*a))]])
             | otherwise = ([[(m*(a-1)+1)..((m*a))]] ++ (matriz (n) (m) (a+1)))


main :: IO()
main = do
    n <- readLn :: IO Int
    m <- readLn :: IO Int
    print (matriz n m 1)