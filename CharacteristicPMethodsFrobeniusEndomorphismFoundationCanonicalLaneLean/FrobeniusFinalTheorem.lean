import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean.FrobeniusGateLemmas

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

def ConstrainedFrobeniusClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_frobenius_endgame (A : AdmissibleClass) :
    ConstrainedFrobeniusClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse