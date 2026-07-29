import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytokinesisLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure CellCycleModel where
  cyclinDynamics : Prop
  cdkActivity : Prop
  phaseTransitions : Prop
  checkpointControl : Prop

structure CellCycleEvidence (M : CellCycleModel) where
  cyclinDynamicsClosed : M.cyclinDynamics
  cdkActivityClosed : M.cdkActivity
  phaseTransitionsClosed : M.phaseTransitions
  checkpointControlClosed : M.checkpointControl

def CellCycleModelClosed (M : CellCycleModel) : Prop :=
  M.cyclinDynamics ∧ M.cdkActivity ∧ M.phaseTransitions ∧ M.checkpointControl

theorem cell_cycle_model_closed_from_evidence (M : CellCycleModel) (E : CellCycleEvidence M) :
    CellCycleModelClosed M :=
  And.intro E.cyclinDynamicsClosed (And.intro E.cdkActivityClosed (And.intro E.phaseTransitionsClosed E.checkpointControlClosed))

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse