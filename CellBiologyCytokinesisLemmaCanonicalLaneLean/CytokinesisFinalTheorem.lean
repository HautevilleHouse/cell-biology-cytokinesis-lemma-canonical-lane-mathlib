import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

def ConstrainedCytokinesisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cytokinesis_endgame (A : AdmissibleClass) : ConstrainedCytokinesisClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse