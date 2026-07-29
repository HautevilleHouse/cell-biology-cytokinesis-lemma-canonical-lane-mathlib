import CellBiologyCytokinesisLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure CellCycleRegulationPackage where
  cyclinConcentration : Prop
  cdkActivity : Prop
  checkpointsPassed : Prop
  g2MTransition : Prop

structure CellCycleRegulationEvidence (C : CellCycleRegulationPackage) where
  cyclinConcentrationClosed : C.cyclinConcentration
  cdkActivityClosed : C.cdkActivity
  checkpointsPassedClosed : C.checkpointsPassed
  g2MTransitionClosed : C.g2MTransition

def CellCycleRegulationClosed (C : CellCycleRegulationPackage) : Prop :=
  C.cyclinConcentration ∧ C.cdkActivity ∧ C.checkpointsPassed ∧ C.g2MTransition

theorem cell_cycle_regulation_closed_from_evidence (C : CellCycleRegulationPackage)
  (E : CellCycleRegulationEvidence C) : CellCycleRegulationClosed C := by
  exact And.intro E.cyclinConcentrationClosed
    (And.intro E.cdkActivityClosed (And.intro E.checkpointsPassedClosed E.g2MTransitionClosed))

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse
