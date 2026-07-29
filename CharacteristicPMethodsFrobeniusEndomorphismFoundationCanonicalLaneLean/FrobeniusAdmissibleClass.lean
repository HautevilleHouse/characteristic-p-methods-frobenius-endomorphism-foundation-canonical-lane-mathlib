import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

structure FrobeniusSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  char : Nat
  charIsPrime : Nat.Prime char

structure FrobeniusAdmittedObject where
  space : FrobeniusSpace
  perfectScheme : Prop
  frobeniusEndomorphism : (∀ x : space.carrier, x^space.char = x) -- Frobenius satisfies x^p = x
  conclusion : perfectScheme

structure FrobeniusEndgameState where
  object : FrobeniusAdmittedObject

def FrobeniusWitnessClosed (O : FrobeniusAdmittedObject) : Prop :=
  O.perfectScheme

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse