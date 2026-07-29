import canonicalLaneMathlib.AdmissibleClass
import CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

def ConstrainedCharacteristicPClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_characteristic_p_endgame (A : AdmissibleClass) :
    ConstrainedCharacteristicPClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse