import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean.FrobeniusCohomology

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

structure FrobeniusTracePackage {C : FrobeniusCohomologyPackage} where
  traceMorphism : C.cohomologyRing → ℤ
  traceMultiplicative : Prop
  traceOfFrobenius : Prop
  traceFormula : Prop

structure FrobeniusTraceEvidence {C : FrobeniusCohomologyPackage} (T : FrobeniusTracePackage C) where
  traceMultiplicativeClosed : T.traceMultiplicative
  traceOfFrobeniusClosed : T.traceOfFrobenius
  traceFormulaClosed : T.traceFormula

def FrobeniusTraceClosed {C : FrobeniusCohomologyPackage} (T : FrobeniusTracePackage C) : Prop :=
  T.traceMultiplicative ∧ T.traceOfFrobenius ∧ T.traceFormula

theorem frobenius_trace_closed_from_evidence {C : FrobeniusCohomologyPackage} (T : FrobeniusTracePackage C) (E : FrobeniusTraceEvidence T) :
    FrobeniusTraceClosed T := by
  exact And.intro E.traceMultiplicativeClosed (And.intro E.traceOfFrobeniusClosed E.traceFormulaClosed)

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse