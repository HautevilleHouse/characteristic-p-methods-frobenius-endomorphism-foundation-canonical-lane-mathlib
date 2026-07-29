import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

/-!
# Hodge-Torsion Package

Models torsion in Hodge cohomology groups for varieties in characteristic p,
related to the slope decomposition of Frobenius.
-/

structure HodgeTorsionPackage where
  variety : Type u
  baseField : Type v
  char : Nat
  primeChar : char.Prime
  hodgeGroups : Nat × Nat → Type w
  frobeniusAction : ∀ (i : Nat × Nat), hodgeGroups i → hodgeGroups i
  torsionPart : ∀ (i : Nat × Nat), Type w
  slopeDecomposition : Prop
  torsionBounds : Prop

structure HodgeTorsionEvidence (H : HodgeTorsionPackage) where
  slopeDecompositionClosed : H.slopeDecomposition
  torsionBoundsClosed : H.torsionBounds

def HodgeTorsionClosed (H : HodgeTorsionPackage) : Prop :=
  H.slopeDecomposition ∧ H.torsionBounds

theorem hodge_torsion_closed_from_evidence (H : HodgeTorsionPackage) (E : HodgeTorsionEvidence H) :
    HodgeTorsionClosed H := by
  exact And.intro E.slopeDecompositionClosed E.torsionBoundsClosed

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse