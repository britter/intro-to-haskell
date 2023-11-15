module Main where

fact :: Int -> Int
fact 0 = 1
fact n = n * fact (n - 1)

enumFromTo2 :: Int -> Int -> [Int]
enumFromTo2 m n
  | m == n = [m]
  | otherwise = m : enumFromTo2 (m + 1) n

sumList :: [Int] -> Int
sumList [] = 0
sumList (x:xs) = x + sumList xs

removeOdd :: [Int] -> [Int]
removeOdd [] = []
removeOdd (x:xs)
  | odd x = removeOdd xs
  | otherwise = x : removeOdd xs

main :: IO ()
main = do
  print (fact 5)
