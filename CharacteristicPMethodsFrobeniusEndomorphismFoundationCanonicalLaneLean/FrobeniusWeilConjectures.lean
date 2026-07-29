import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean.FrobeniusTrace

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

structure FrobeniusWeilConjecturesPackage {T : FrobeniusTracePackage} where
  rationality : Prop
  functionalEquation : Prop
  riemannHypothesis : Prop
  traceFormula : Prop

structure FrobeniusWeilConjecturesEvidence {T : FrobeniusTracePackage} (W : FrobeniusWeilConjecturesPackage T) where
  rationalityClosed : W.rationality
  functionalEquationClosed : W.functionalEquation
  riemannHypothesisClosed : W.riemannHypothesis
  traceFormulaClosed : W.traceFormula

def FrobeniusWeilConjecturesClosed {T : FrobeniusTracePackage} (W : FrobeniusWeilConjecturesPackage T) : Prop :=
  W.rationality ∧ W.functionalEquation ∧ W.riemannHypothesis ∧ W.traceFormula

theorem frobenius_weil_conjectures_closed_from_evidence {T : FrobeniusTracePackage} (W : FrobeniusWeilConjecturesPackage T) (E : FrobeniusWeilConjecturesEvidence W) :
    FrobeniusWeilConjecturesClosed W := by
  exact And.intro E.rationalityClosed (And.intro E.functionalEquationClosed (And.intro E.riemannHypothesisClosed E.traceFormulaClosed))

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse