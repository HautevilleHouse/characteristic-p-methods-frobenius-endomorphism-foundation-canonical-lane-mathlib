import canonicalLaneMathlib.AdmissibleClass
import CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

structure FrobeniusAdmittedObject where
  field : Type
  characteristic : Nat
  frobeniusEndomorphism : field → field
  frobeniusClosed : Prop
  conclusion : frobeniusClosed

structure AdmissibleClass where
  object : FrobeniusAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FrobeniusWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse