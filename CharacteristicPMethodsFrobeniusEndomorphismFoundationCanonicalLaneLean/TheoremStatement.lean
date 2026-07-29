import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean

structure FrobeniusTheoremStatement where
  sourceKey : String
  theoremName : String
  classicalBoundary : String
  characteristicPStatement : String
  carriedRemainder : String

def sourceTheoremStatement : FrobeniusTheoremStatement :=
  { sourceKey := "characteristic-p-methods-frobenius-endomorphism-foundation",
    theoremName := "Frobenius Endomorphism Foundation",
    classicalBoundary := "classical boundary: Frobenius closure in characteristic p",
    characteristicPStatement := "characteristic p methods for frobenius endomorphism",
    carriedRemainder := "remainder: further decomposition of frobenius endomorphism" }

end CharacteristicPMethodsFrobeniusEndomorphismFoundationCanonicalLaneLean
end HautevilleHouse