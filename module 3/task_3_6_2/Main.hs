module Main where
--------------------------------------------------------------------------
import Data.List
--------------------------------------------------------------------------
main :: IO ()
main = do
  print $ "Lists"
  print $ "------------------------------"
  print $ revRange ('a','z')
  print $ "------------------------------"
--------------------------------------------------------------------------
revRange :: (Char,Char) -> [Char]
revRange = unfoldr g
  where g (a,b) | a > b  =    Nothing
                | otherwise = Just (b, (a, pred b))
--------------------------------------------------------------------------
