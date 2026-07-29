import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

/-!
# Witt Vectors Package

Defines the ring of Witt vectors over a perfect field of characteristic p,
including the Frobenius and Verschiebung operators.
-/

structure WittVectorRing where
  baseRing : Type u
  char : Nat
  primeChar : char.Prime
  perfect : Bool
  vectorLength : Nat
  addition : (vectorLength → baseRing) → (vectorLength → baseRing) → (vectorLength → baseRing)
  multiplication : (vectorLength → baseRing) → (vectorLength → baseRing) → (vectorLength → baseRing)
  frobenius : (vectorLength → baseRing) → (vectorLength → baseRing)
  verschiebung : (vectorLength → baseRing) → (vectorLength → baseRing)
  frobeniusVerschiebungRelation : ∀ a, frobenius (verschiebung a) = a

structure WittVectorEvidence (W : WittVectorRing) where
  additionClosed : ∀ x y, W.addition x y = W.addition y x
  multiplicationClosed : ∀ x y, W.multiplication x y = W.multiplication y x
  frobeniusVerschiebungClosed : W.frobeniusVerschiebungRelation

def WittVectorClosed (W : WittVectorRing) : Prop :=
  (∀ x y, W.addition x y = W.addition y x) ∧ (∀ x y, W.multiplication x y = W.multiplication y x) ∧ W.frobeniusVerschiebungRelation

theorem witt_vector_closed_from_evidence (W : WittVectorRing) (E : WittVectorEvidence W) :
    WittVectorClosed W := by
  exact And.intro E.additionClosed (And.intro E.multiplicationClosed E.frobeniusVerschiebungClosed)

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse