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
exists a [b] = elem a [b]

-- 1b. type for exists


-- 1.c countInList



-- 2. listDiff



-- 3. firstN



-- 4. busFinder



-- 5. cumulativeSums




-- 6. groupNleft



