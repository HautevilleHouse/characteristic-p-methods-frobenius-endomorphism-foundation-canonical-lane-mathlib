import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean.FrobeniusCohomology

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

structure FrobeniusCrystalPackage (p : ℕ) [Fact (Nat.Prime p)] (X : Type u) [Scheme X] [CharP (structure_sheaf X) p] where
  underlyingModule : Module (ℤ_p) (Type u)
  frobeniusLinearMap : underlyingModule → underlyingModule
  isIsomorphism : IsIsomorphism frobeniusLinearMap

structure FrobeniusCrystalEvidence {p : ℕ} [Fact (Nat.Prime p)] {X : Type u} [Scheme X] [CharP (structure_sheaf X) p]
    (C : FrobeniusCrystalPackage p X) where
  frobeniusLinearMapClosed : C.frobeniusLinearMap
  isIsomorphismClosed : C.isIsomorphism

def FrobeniusCrystalClosed {p : ℕ} [Fact (Nat.Prime p)] {X : Type u} [Scheme X] [CharP (structure_sheaf X) p]
    (C : FrobeniusCrystalPackage p X) : Prop :=
  C.frobeniusLinearMap ∧ C.isIsomorphism

theorem frobenius_crystal_closed_from_evidence
    {p : ℕ} [Fact (Nat.Prime p)] {X : Type u} [Scheme X] [CharP (structure_sheaf X) p]
    (C : FrobeniusCrystalPackage p X) (E : FrobeniusCrystalEvidence C) : FrobeniusCrystalClosed C := by
  exact And.intro E.frobeniusLinearMapClosed E.isIsomorphismClosed

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse