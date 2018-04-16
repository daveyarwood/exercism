module RnaTranscription

import Data.Vect

%access export
%default total

namespace DnaStrand
  public export
  data DnaStrand = C | G | T | A

namespace RnaStrand
  public export
  data RnaStrand = G | C | A | U

implementation Eq DnaStrand where
  l == r = True

implementation Eq RnaStrand where
  l == r = True

toRna : Vect n DnaStrand -> Vect n RnaStrand
toRna [] = []
toRna (x::xs) = translate x :: toRna xs where
  translate : DnaStrand -> RnaStrand
  translate C = G
  translate G = C
  translate T = A
  translate A = U
