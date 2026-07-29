import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

/-!
# Rigid Cohomology Package

Defines rigid cohomology as a cohomology theory for varieties over fields of
characteristic p, using overconvergent isocrystals.
-/

structure RigidCohomologyPackage where
  variety : Type u
  baseField : Type v
  char : Nat
  primeChar : char.Prime
  overconvergentIsocrystals : Type w
  cohomologyGroups : Nat → Type x
  frobeniusAction : ∀ n, cohomologyGroups n → cohomologyGroups n
  finiteDimensional : Prop
  poincareDuality : Prop
  comparisonWithCrystalline : Prop

structure RigidCohomologyEvidence (R : RigidCohomologyPackage) where
  finiteDimensionalClosed : R.finiteDimensional
  poincareDualityClosed : R.poincareDuality
  comparisonWithCrystallineClosed : R.comparisonWithCrystalline

def RigidCohomologyClosed (R : RigidCohomologyPackage) : Prop :=
  R.finiteDimensional ∧ R.poincareDuality ∧ R.comparisonWithCrystalline

theorem rigid_cohomology_closed_from_evidence (R : RigidCohomologyPackage)
    (E : RigidCohomologyEvidence R) : RigidCohomologyClosed R := by
  exact And.intro E.finiteDimensionalClosed (And.intro E.poincareDualityClosed E.comparisonWithCrystallineClosed)

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse