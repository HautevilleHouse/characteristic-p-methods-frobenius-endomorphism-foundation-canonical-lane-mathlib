import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

/-!
# De Rham Cohomology in Characteristic p Package

Encodes the failure of the Poincaré lemma in characteristic p and the
Cartier isomorphism.
-/

structure DeRhamCohomologyCharPPackage where
  variety : Type u
  baseField : Type v
  char : Nat
  primeChar : char.Prime
  deRhamComplex : Nat → Type w
  differentials : ∀ n, deRhamComplex n → deRhamComplex (n+1)
  cohomologyGroups : Nat → Type w
  poincareLemmaHolds : Bool
  cartierIsomorphism : Prop

structure DeRhamCohomologyCharPEvidence (D : DeRhamCohomologyCharPPackage) where
  cartierIsomorphismClosed : D.cartierIsomorphism
  differentialsClosed : ∀ n, ∀ x, D.differentials (n+1) (D.differentials n x) = 0

def DeRhamCohomologyCharPClosed (D : DeRhamCohomologyCharPPackage) : Prop :=
  D.cartierIsomorphism ∧ (∀ n, ∀ x, D.differentials (n+1) (D.differentials n x) = 0)

theorem de_rham_cohomology_char_p_closed_from_evidence (D : DeRhamCohomologyCharPPackage)
    (E : DeRhamCohomologyCharPEvidence D) : DeRhamCohomologyCharPClosed D := by
  exact And.intro E.cartierIsomorphismClosed E.differentialsClosed

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse