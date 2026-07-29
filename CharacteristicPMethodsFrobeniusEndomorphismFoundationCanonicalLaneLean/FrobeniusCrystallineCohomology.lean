import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean.FrobeniusEndomorphism

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

structure FrobeniusCrystallineCohomologyPackage {F : FrobeniusEndomorphismPackage} where
  crystallineRing : Type u
  frobeniusAction : crystallineRing → crystallineRing
  frobeniusLinear : Prop
  frobeniusCompatible : Prop

structure FrobeniusCrystallineCohomologyEvidence {F : FrobeniusEndomorphismPackage} (C : FrobeniusCrystallineCohomologyPackage F) where
  frobeniusActionLinearClosed : C.frobeniusLinear
  frobeniusCompatibleClosed : C.frobeniusCompatible

def FrobeniusCrystallineCohomologyClosed {F : FrobeniusEndomorphismPackage} (C : FrobeniusCrystallineCohomologyPackage F) : Prop :=
  C.frobeniusLinear ∧ C.frobeniusCompatible

theorem frobenius_crystalline_cohomology_closed_from_evidence {F : FrobeniusEndomorphismPackage} (C : FrobeniusCrystallineCohomologyPackage F) (E : FrobeniusCrystallineCohomologyEvidence C) :
    FrobeniusCrystallineCohomologyClosed C := by
  exact And.intro E.frobeniusActionLinearClosed E.frobeniusCompatibleClosed

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse