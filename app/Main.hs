module Main where

import qualified Data.Vector as V
import           Data.Word
import qualified System.Random.MWC as M
import qualified System.Random.MWC.Distributions as M

main :: IO ()
main = do
  g <- M.create
  i :: Word32 <- M.uniform g
  v :: V.Vector Int <- M.uniformPermutation 10 g
  print i
  print v
