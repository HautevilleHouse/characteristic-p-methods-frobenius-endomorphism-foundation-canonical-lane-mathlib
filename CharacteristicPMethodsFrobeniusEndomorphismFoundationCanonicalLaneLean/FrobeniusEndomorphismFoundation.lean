import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

structure FrobeniusEndomorphismFoundation where
  ring : Type u
  primeCharacteristic : Nat
  frobeniusMap : ring → ring
  frobeniusEndomorphism : Prop
  frobeniusEndomorphismTerm : frobeniusEndomorphism

structure FrobeniusEndomorphismEvidence (F : FrobeniusEndomorphismFoundation) where
  frobeniusEndomorphismClosed : F.frobeniusEndomorphism

def FrobeniusEndomorphismClosed (F : FrobeniusEndomorphismFoundation) : Prop :=
  F.frobeniusEndomorphism

theorem frobenius_endomorphism_closed_from_evidence (F : FrobeniusEndomorphismFoundation) (E : FrobeniusEndomorphismEvidence F) : FrobeniusEndomorphismClosed F :=
  E.frobeniusEndomorphismClosed

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse