{-# LANGUAGE ForeignFunctionInterface #-}

module Factorial where

import Foreign.C.Types

foreign import ccall "factorial" c_factorial :: CUInt -> CULLong
