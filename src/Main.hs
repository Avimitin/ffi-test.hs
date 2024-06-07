{-# LANGUAGE ForeignFunctionInterface #-}

module Main where

import Factorial
import Foreign.C.Types

main :: IO ()
main = do
    let result = c_factorial 5
    print result
