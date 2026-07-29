import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean.FrobeniusEndomorphism

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

structure FrobeniusDescentPackage {F : FrobeniusEndomorphismPackage} where
  descentData : Type u
  descentCondition : Prop
  descentFunctorial : Prop
  descentCover : Prop

structure FrobeniusDescentEvidence {F : FrobeniusEndomorphismPackage} (D : FrobeniusDescentPackage F) where
  descentConditionClosed : D.descentCondition
  descentFunctorialClosed : D.descentFunctorial
  descentCoverClosed : D.descentCover

def FrobeniusDescentClosed {F : FrobeniusEndomorphismPackage} (D : FrobeniusDescentPackage F) : Prop :=
  D.descentCondition ∧ D.descentFunctorial ∧ D.descentCover

theorem frobenius_descent_closed_from_evidence {F : FrobeniusEndomorphismPackage} (D : FrobeniusDescentPackage F) (E : FrobeniusDescentEvidence D) :
    FrobeniusDescentClosed D := by
  exact And.intro E.descentConditionClosed (And.intro E.descentFunctorialClosed E.descentCoverClosed)

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse