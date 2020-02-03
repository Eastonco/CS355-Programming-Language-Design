-- CptS 355 - Spring 2020 Assignment 1
-- Connor Easton 11557902


-- length :: [a] -> integer
-- length [0,1,2,3] => 4

-- elem :: Eq a => a -> [a] -> Bool
-- elem 3 [0,1,2,3] => True
-- elem 't' "CptS" => True

-- maximum :: Ord a => [a] -> a
-- minimum :: Ord a => [a] -> a
-- sum :: Num a => [a] -> a
-- product :: Num a => [a] -> a
-- sum [0,1,2,3] => 6
-- product [1,2,3,4] => 24

module HW1
     where

-- 1a. exists
exists :: Eq t => t -> [t] -> Bool
exists a b = elem a b

-- 1b. type for exists
--     The type needs the Eq class ince it uses the internal
--     elem function which defines equality and inequaltiy
--     aka. comparing two objects

-- 1.c countInList

countInList :: (Num p, Eq t) => t -> [t] -> p
countInList p (t:ts) 
     | (length ts == 0 && p==t) = 1
     | length ts == 0 = 0
     | p == t = 1 +(countInList p ts)
     | otherwise = countInList p ts



-- 2. listDiff
--listDiff :: Eq a => [a] -> [a] -> [a]


-- 3. firstN

{-
firstN :: (Num t) => [a] -> t -> [a]
firstN j k = take j k

-}

-- 4. busFinder
--usFinder :: Eq t => t -> [(a, [t])] -> [a]


-- 5. cumulativeSums
--cumulativeSums :: Num a => [a] -> [a]



-- 6. groupNleft



