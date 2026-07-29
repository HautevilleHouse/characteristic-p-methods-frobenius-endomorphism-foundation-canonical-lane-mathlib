import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean.FrobeniusEndomorphismFoundation

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

structure PerfectClosureConstruction {F : FrobeniusEndomorphismFoundation} where
  perfectClosure : Type u
  inclusionMap : F.ring → perfectClosure
  frobeniusBijective : Prop
  frobeniusBijectiveTerm : frobeniusBijective

structure PerfectClosureEvidence {F : FrobeniusEndomorphismFoundation} (P : PerfectClosureConstruction F) where
  frobeniusBijectiveClosed : P.frobeniusBijective

def PerfectClosureClosed {F : FrobeniusEndomorphismFoundation} (P : PerfectClosureConstruction F) : Prop :=
  P.frobeniusBijective

theorem perfect_closure_closed_from_evidence {F : FrobeniusEndomorphismFoundation} (P : PerfectClosureConstruction F) (E : PerfectClosureEvidence P) : PerfectClosureClosed P :=
  E.frobeniusBijectiveClosed

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse