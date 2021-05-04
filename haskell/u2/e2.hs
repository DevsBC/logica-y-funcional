powInt :: (Integral b, Num a) => a -> b -> a
powInt x y = x ^ y

powFloat :: Floating a => a -> a -> a
powFloat x y = x ** y
