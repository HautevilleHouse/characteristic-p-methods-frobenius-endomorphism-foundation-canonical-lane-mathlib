import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean.FrobeniusCrystals

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

structure FrobeniusMonopolePackage (p : ℕ) [Fact (Nat.Prime p)] (X : Type u) [Scheme X] [CharP (structure_sheaf X) p] where
  monopoleSheaf : AbelianSheaf X
  frobeniusAction : monopoleSheaf → monopoleSheaf
  monopoleNumber : ℤ
  eigenvalueCondition : frobeniusAction ∘ frobeniusAction = (monopoleNumber : ℚ) • id

structure FrobeniusMonopoleEvidence {p : ℕ} [Fact (Nat.Prime p)] {X : Type u} [Scheme X] [CharP (structure_sheaf X) p]
    (M : FrobeniusMonopolePackage p X) where
  frobeniusActionClosed : M.frobeniusAction
  eigenvalueConditionClosed : M.eigenvalueCondition

def FrobeniusMonopoleClosed {p : ℕ} [Fact (Nat.Prime p)] {X : Type u} [Scheme X] [CharP (structure_sheaf X) p]
    (M : FrobeniusMonopolePackage p X) : Prop :=
  M.frobeniusAction ∧ M.eigenvalueCondition

theorem frobenius_monopole_closed_from_evidence
    {p : ℕ} [Fact (Nat.Prime p)] {X : Type u} [Scheme X] [CharP (structure_sheaf X) p]
    (M : FrobeniusMonopolePackage p X) (E : FrobeniusMonopoleEvidence M) : FrobeniusMonopoleClosed M := by
  exact And.intro E.frobeniusActionClosed E.eigenvalueConditionClosed

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse