module Main where

sort2 :: Int -> Int -> (Int, Int)
sort2 x y
  | x > y = (x, y)
  | otherwise = (y, x)

main :: IO ()
main = do
        print (sort2 5 9)