import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

structure FrobeniusEndomorphismPackage (R : Type) [CommRing R] (p : ℕ) [CharP R p] where
  frobenius : R → R
  frobeniusAdd : ∀ x y : R, frobenius (x + y) = frobenius x + frobenius y
  frobeniusMul : ∀ x y : R, frobenius (x * y) = frobenius x * frobenius y
  frobeniusOne : frobenius 1 = 1
  frobeniusChar : ∀ x : R, frobenius x = x ^ p

structure FrobeniusEndomorphismEvidence {R : Type} [CommRing R] {p : ℕ} [CharP R p]
    (F : FrobeniusEndomorphismPackage R p) where
  frobeniusAddClosed : ∀ x y : R, F.frobenius (x + y) = F.frobenius x + F.frobenius y
  frobeniusMulClosed : ∀ x y : R, F.frobenius (x * y) = F.frobenius x * F.frobenius y
  frobeniusOneClosed : F.frobenius 1 = 1
  frobeniusCharClosed : ∀ x : R, F.frobenius x = x ^ p

def FrobeniusEndomorphismClosed {R : Type} [CommRing R] {p : ℕ} [CharP R p]
    (F : FrobeniusEndomorphismPackage R p) : Prop :=
  (∀ x y : R, F.frobenius (x + y) = F.frobenius x + F.frobenius y) ∧
  (∀ x y : R, F.frobenius (x * y) = F.frobenius x * F.frobenius y) ∧
  F.frobenius 1 = 1 ∧
  (∀ x : R, F.frobenius x = x ^ p)

theorem frobenius_endomorphism_closed_from_evidence
    {R : Type} [CommRing R] {p : ℕ} [CharP R p]
    (F : FrobeniusEndomorphismPackage R p) (E : FrobeniusEndomorphismEvidence F) :
    FrobeniusEndomorphismClosed F := by
  exact And.intro E.frobeniusAddClosed
    (And.intro E.frobeniusMulClosed
      (And.intro E.frobeniusOneClosed E.frobeniusCharClosed))

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse