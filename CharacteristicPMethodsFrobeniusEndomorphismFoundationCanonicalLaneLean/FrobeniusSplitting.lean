import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean.PerfectClosureConstruction

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

structure FrobeniusSplittingPackage {F : FrobeniusEndomorphismFoundation} {P : PerfectClosureConstruction F} where
  splittingMap : P.perfectClosure → F.ring
  splittingIsSection : Prop
  splittingIsSectionTerm : splittingIsSection

structure FrobeniusSplittingEvidence {F : FrobeniusEndomorphismFoundation} {P : PerfectClosureConstruction F} (S : FrobeniusSplittingPackage F P) where
  splittingIsSectionClosed : S.splittingIsSection

def FrobeniusSplittingClosed {F : FrobeniusEndomorphismFoundation} {P : PerfectClosureConstruction F} (S : FrobeniusSplittingPackage F P) : Prop :=
  S.splittingIsSection

theorem frobenius_splitting_closed_from_evidence {F : FrobeniusEndomorphismFoundation} {P : PerfectClosureConstruction F} (S : FrobeniusSplittingPackage F P) (E : FrobeniusSplittingEvidence S) : FrobeniusSplittingClosed S :=
  E.splittingIsSectionClosed

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse