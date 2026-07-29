import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCytokinesisLemmaCanonicalLaneLean.CytokinesisAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

def bridgeClosed (A : CytokinesisAdmissibleClass) : Prop :=
  A.object.cytokinesisSuccessful

theorem bridge_from_admissible_class (A : CytokinesisAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.cytokinesisSuccessful

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse