import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean.FrobeniusEndomorphismFoundation

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

structure FrobeniusBaseChangePackage {F : FrobeniusEndomorphismFoundation} where
  baseRing : Type u
  baseChangeRing : Type u
  frobeniusMapBaseChange : baseChangeRing → baseChangeRing
  baseChangeFrobeniusCompatible : Prop
  baseChangeFrobeniusCompatibleTerm : baseChangeFrobeniusCompatible

structure FrobeniusBaseChangeEvidence {F : FrobeniusEndomorphismFoundation} (B : FrobeniusBaseChangePackage F) where
  baseChangeFrobeniusCompatibleClosed : B.baseChangeFrobeniusCompatible

def FrobeniusBaseChangeClosed {F : FrobeniusEndomorphismFoundation} (B : FrobeniusBaseChangePackage F) : Prop :=
  B.baseChangeFrobeniusCompatible

theorem frobenius_base_change_closed_from_evidence {F : FrobeniusEndomorphismFoundation} (B : FrobeniusBaseChangePackage F) (E : FrobeniusBaseChangeEvidence B) : FrobeniusBaseChangeClosed B :=
  E.baseChangeFrobeniusCompatibleClosed

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse