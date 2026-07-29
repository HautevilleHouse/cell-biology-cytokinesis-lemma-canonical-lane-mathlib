import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCytokinesisLemmaCanonicalLaneLean.BridgeLemmas
import CellBiologyCytokinesisLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

def ConstrainedCytokinesisClosure (A : CytokinesisAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cytokinesis_endgame (A : CytokinesisAdmissibleClass) :
    ConstrainedCytokinesisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse