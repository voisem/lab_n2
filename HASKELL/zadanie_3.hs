import Data.Char (digitToInt)

main :: IO ()
main = do
    input <- getLine
    let numbers = words input
    let output = [i | (number, i) <- zip numbers [0..], let digits = map digitToInt number,
                      let sumDigits = sum digits, let productDigits = product digits,
                      sumDigits < productDigits]
    putStrLn $ unwords $ map show output
