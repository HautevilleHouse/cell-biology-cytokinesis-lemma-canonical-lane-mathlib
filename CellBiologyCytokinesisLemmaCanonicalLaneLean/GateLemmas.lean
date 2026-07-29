import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCytokinesisLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

def gateClosed (A : CytokinesisAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : CytokinesisAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse