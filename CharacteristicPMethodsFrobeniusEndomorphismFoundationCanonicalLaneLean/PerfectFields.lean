import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean.FrobeniusEndomorphism

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

structure PerfectFieldPackage (p : ℕ) [Fact (Nat.Prime p)] (K : Type u) [Field K] [CharP K p] where
  frobeniusSurjective : Function.Surjective (FrobeniusEndomorphismPackage.frobenius (R := K) (p := p))
  frobeniusInjective : Function.Injective (FrobeniusEndomorphismPackage.frobenius (R := K) (p := p))

structure PerfectFieldEvidence {p : ℕ} [Fact (Nat.Prime p)] {K : Type u} [Field K] [CharP K p] (P : PerfectFieldPackage p K) where
  frobeniusSurjectiveClosed : P.frobeniusSurjective
  frobeniusInjectiveClosed : P.frobeniusInjective

def PerfectFieldClosed {p : ℕ} [Fact (Nat.Prime p)] {K : Type u} [Field K] [CharP K p] (P : PerfectFieldPackage p K) : Prop :=
  P.frobeniusSurjective ∧ P.frobeniusInjective

theorem perfect_field_closed_from_evidence
    {p : ℕ} [Fact (Nat.Prime p)] {K : Type u} [Field K] [CharP K p] (P : PerfectFieldPackage p K)
    (E : PerfectFieldEvidence P) : PerfectFieldClosed P := by
  exact And.intro E.frobeniusSurjectiveClosed E.frobeniusInjectiveClosed

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse