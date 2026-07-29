import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure CellCycleCheckpointPackage where
  dnaDamageDetected : Prop
  spindleAssemblyChecked : Prop
  cyclinLevelsMonitored : Prop
  checkpointSignalsTransduced : Prop

structure CellCycleCheckpointEvidence (C : CellCycleCheckpointPackage) where
  dnaDamageDetectedClosed : C.dnaDamageDetected
  spindleAssemblyCheckedClosed : C.spindleAssemblyChecked
  cyclinLevelsMonitoredClosed : C.cyclinLevelsMonitored
  checkpointSignalsTransducedClosed : C.checkpointSignalsTransduced

def CellCycleCheckpointClosed (C : CellCycleCheckpointPackage) : Prop :=
  C.dnaDamageDetected ∧ C.spindleAssemblyChecked ∧
  C.cyclinLevelsMonitored ∧ C.checkpointSignalsTransduced

theorem cell_cycle_checkpoint_closed_from_evidence (C : CellCycleCheckpointPackage)
    (E : CellCycleCheckpointEvidence C) : CellCycleCheckpointClosed C := by
  exact And.intro E.dnaDamageDetectedClosed
    (And.intro E.spindleAssemblyCheckedClosed
      (And.intro E.cyclinLevelsMonitoredClosed E.checkpointSignalsTransducedClosed))

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse