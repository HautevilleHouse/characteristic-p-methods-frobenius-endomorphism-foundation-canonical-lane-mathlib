import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean.FrobeniusEndomorphism

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

structure FrobeniusCohomologyPackage {F : FrobeniusEndomorphismPackage} where
  cohomologyRing : Type u
  frobeniusAction : ℕ → cohomologyRing → cohomologyRing
  frobeniusActionLinear : Prop
  frobeniusActionEq : ∀ n x, frobeniusAction n x = (F.frobeniusMap ^ n) x

structure FrobeniusCohomologyEvidence {F : FrobeniusEndomorphismPackage} (C : FrobeniusCohomologyPackage F) where
  frobeniusActionLinearClosed : C.frobeniusActionLinear
  frobeniusActionEqClosed : ∀ n x, C.frobeniusAction n x = (F.frobeniusMap ^ n) x

def FrobeniusCohomologyClosed {F : FrobeniusEndomorphismPackage} (C : FrobeniusCohomologyPackage F) : Prop :=
  C.frobeniusActionLinear ∧ ∀ n x, C.frobeniusAction n x = (F.frobeniusMap ^ n) x

theorem frobenius_cohomology_closed_from_evidence {F : FrobeniusEndomorphismPackage} (C : FrobeniusCohomologyPackage F) (E : FrobeniusCohomologyEvidence C) :
    FrobeniusCohomologyClosed C := by
  exact And.intro E.frobeniusActionLinearClosed E.frobeniusActionEqClosed

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse