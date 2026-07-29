import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

structure PerfectClosurePackage (R : Type) [CommRing R] (p : ℕ) [CharP R p] where
  perfectClosure : Type
  incl : R → perfectClosure
  frobeniusBijective : Function.Bijective (FrobeniusEndomorphismPackage.frobenius perfectClosure p)
  perfectField : when R is a field, perfectClosure is a perfect field

structure PerfectClosureEvidence {R : Type} [CommRing R] {p : ℕ} [CharP R p]
    (P : PerfectClosurePackage R p) where
  frobeniusSurjective : Function.Surjective (FrobeniusEndomorphismPackage.frobenius P.perfectClosure p)
  frobeniusInjective : Function.Injective (FrobeniusEndomorphismPackage.frobenius P.perfectClosure p)

def PerfectClosureClosed {R : Type} [CommRing R] {p : ℕ} [CharP R p]
    (P : PerfectClosurePackage R p) : Prop :=
  Function.Surjective (FrobeniusEndomorphismPackage.frobenius P.perfectClosure p) ∧
  Function.Injective (FrobeniusEndomorphismPackage.frobenius P.perfectClosure p)

theorem perfect_closure_closed_from_evidence
    {R : Type} [CommRing R] {p : ℕ} [CharP R p]
    (P : PerfectClosurePackage R p) (E : PerfectClosureEvidence P) :
    PerfectClosureClosed P := by
  exact And.intro E.frobeniusSurjective E.frobeniusInjective

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse