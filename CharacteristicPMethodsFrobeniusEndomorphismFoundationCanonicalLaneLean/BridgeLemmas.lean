import canonicalLaneMathlib.AdmissibleClass
import CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

def FrobeniusWitnessClosed (O : FrobeniusAdmittedObject) : Prop :=
  O.frobeniusClosed

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FrobeniusWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse