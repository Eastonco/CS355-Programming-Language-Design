-- CptS 355 - Spring 2020 Assignment 2
-- Please include your name and the names of the students with whom you discussed any of the problems in this homework

module HW2
     where


{- intersect & intersectTail & intersectAll - 22%-}
--intersect 
intersect :: Eq a => [a] -> [a] -> [a]
intersect [] l2 = []
intersect (x:xs) l2 
     | elem x l2 = x : intersect xs l2
     | otherwise = intersect xs l2



--intersectTail
intersectTail :: Eq a => [a] -> [a] -> [a]
intersectTail l1 l2 = intersect l1 l2 
-- Intersect already utilizes tail recurssion



{-
--intersectAll
intersectAll:: Ord a => [[a]] -> [a]
intersectAll = foldr intersect  
-}

{-2 - partition - 10%-}
partition :: (a -> Bool) -> [a] -> ([a], [a])
partition isTrue list = (filter isTrue list, filter (not.isTrue) list)


{- 3 - sumL, sumMaybe, and sumEither - 27% -}

--sumL
sumL :: (Num b) => [[b]] -> b
sumL [] = 0
sumL (x:xs) = (foldr (+) 0 x) + (sumL xs)

--map (foldr (+) 0 x)

{-
-- sumMaybe 



-- sumEither

data IEither  = IString String | IInt Int
                deriving (Show, Read, Eq)


{-4 - depthScan, depthSearch, addTrees - 37%-}

data Tree a = LEAF a | NODE a (Tree a) (Tree a)
              deriving (Show, Read, Eq)
 
--depthScan



--depthSearch



--addTrees
addTrees :: Num a => Tree a -> Tree a -> Tree a


{- 5- Create two trees of type Tree. The height of both trees should be at least 4. Test your functions depthScan, depthSearch, addTrees with those trees. 
The trees you define should be different than those that are given.   -}
-}