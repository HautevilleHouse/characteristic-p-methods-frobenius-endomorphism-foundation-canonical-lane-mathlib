import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean.FrobeniusAdmissibleClass

/-!
# Frobenius Endomorphism Scheme Package
-/

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

structure FrobeniusSchemePackage where
  scheme : Type u
  structureSheaf : scheme -> Type v
  char : Nat
  frobeniusMap : scheme -> scheme
  frobeniusLinear : scheme -> scheme
  perfection : scheme -> scheme
  frobeniusExistence : Prop
  frobeniusLinearExistence : Prop
  perfectionExistence : Prop

structure FrobeniusSchemeEvidence (F : FrobeniusSchemePackage) where
  frobeniusExistenceClosed : F.frobeniusExistence
  frobeniusLinearExistenceClosed : F.frobeniusLinearExistence
  perfectionExistenceClosed : F.perfectionExistence

def FrobeniusSchemeClosed (F : FrobeniusSchemePackage) : Prop :=
  F.frobeniusExistence ∧ F.frobeniusLinearExistence ∧ F.perfectionExistence

theorem frobenius_scheme_closed_from_evidence (F : FrobeniusSchemePackage)
    (E : FrobeniusSchemeEvidence F) : FrobeniusSchemeClosed F := by
  exact And.intro E.frobeniusExistenceClosed
    (And.intro E.frobeniusLinearExistenceClosed E.perfectionExistenceClosed)

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse