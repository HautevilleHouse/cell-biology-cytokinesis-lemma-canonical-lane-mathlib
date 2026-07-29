import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure CellCyclePackage where
  cellType : Type u
  phases : Type v
  g1Phase : Prop
  sPhase : Prop
  g2Phase : Prop
  mitosisPhase : Prop
  cytokinesisTrigger : Prop

def CellCycleClosed (C : CellCyclePackage) : Prop :=
  C.g1Phase ∧ C.sPhase ∧ C.g2Phase ∧ C.mitosisPhase ∧ C.cytokinesisTrigger

structure CellCycleEvidence (C : CellCyclePackage) where
  g1PhaseClosed : C.g1Phase
  sPhaseClosed : C.sPhase
  g2PhaseClosed : C.g2Phase
  mitosisPhaseClosed : C.mitosisPhase
  cytokinesisTriggerClosed : C.cytokinesisTrigger

theorem cell_cycle_closed_from_evidence (C : CellCyclePackage)
    (E : CellCycleEvidence C) : CellCycleClosed C := by
  exact And.intro E.g1PhaseClosed
    (And.intro E.sPhaseClosed
      (And.intro E.g2PhaseClosed
        (And.intro E.mitosisPhaseClosed
          E.cytokinesisTriggerClosed)))

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse