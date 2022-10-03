main :: IO()

babylonian :: Integer -> Integer -> Integer
babylonian x target = do
    let result = div (x + div target x) 2
    if result == x then
        result
    else
        babylonian result target


main = do
    precision :: Integer <- readLn
    let target :: Integer = 2 * 10 ^ (2 * precision)
    let x :: Integer = 10 ^ precision
    let result = babylonian x target
    print result
