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

-- Do I really have to spell it out like this? Ugh. Good thing there are only
-- four nucleotides...
implementation Eq DnaStrand where
  C == C = True
  G == G = True
  T == T = True
  A == A = True
  _ == _ = False

-- Same complaint here.
implementation Eq RnaStrand where
  G == G = True
  C == C = True
  A == A = True
  U == U = True
  _ == _ = False

toRna : Vect n DnaStrand -> Vect n RnaStrand
toRna [] = []
toRna (x::xs) = translate x :: toRna xs where
  translate : DnaStrand -> RnaStrand
  translate C = G
  translate G = C
  translate T = A
  translate A = U
