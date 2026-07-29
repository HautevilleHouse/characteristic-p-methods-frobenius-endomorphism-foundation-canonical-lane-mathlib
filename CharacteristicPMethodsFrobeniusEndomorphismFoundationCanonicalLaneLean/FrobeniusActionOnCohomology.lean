import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean.FrobeniusEndomorphismFoundation

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

structure FrobeniusActionOnCohomologyPackage {F : FrobeniusEndomorphismFoundation} where
  cohomologyGroup : Type u
  frobeniusAction : cohomologyGroup → cohomologyGroup
  actionIsLinear : Prop
  actionIsLinearTerm : actionIsLinear

structure FrobeniusActionOnCohomologyEvidence {F : FrobeniusEndomorphismFoundation} (C : FrobeniusActionOnCohomologyPackage F) where
  actionIsLinearClosed : C.actionIsLinear

def FrobeniusActionOnCohomologyClosed {F : FrobeniusEndomorphismFoundation} (C : FrobeniusActionOnCohomologyPackage F) : Prop :=
  C.actionIsLinear

theorem frobenius_action_on_cohomology_closed_from_evidence {F : FrobeniusEndomorphismFoundation} (C : FrobeniusActionOnCohomologyPackage F) (E : FrobeniusActionOnCohomologyEvidence C) : FrobeniusActionOnCohomologyClosed C :=
  E.actionIsLinearClosed

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse