import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytokinesisLemmaCanonicalLaneLean.CellCyclePackage
import HautevilleHouse.CellBiologyCytokinesisLemmaCanonicalLaneLean.CytokinesisProcess
import HautevilleHouse.CellBiologyCytokinesisLemmaCanonicalLaneLean.RingConstrictionPackage
import HautevilleHouse.CellBiologyCytokinesisLemmaCanonicalLaneLean.AbscissionEvidenceTerms

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure CytokinesisFoundation where
  cellCycle : CellCyclePackage
  cellCycleEvidence : CellCycleEvidence cellCycle
  process : CytokinesisProcess cellCycle
  processEvidence : CytokinesisProcessEvidence process
  ringConstraint : RingConstrictionPackage process
  ringConstraintEvidence : RingConstrictionEvidence ringConstraint
  abscission : AbscissionAnalyticTerms ringConstraint
  abscissionEvidence : AbscissionEvidence abscission

def CytokinesisFoundationClosed (A : CytokinesisFoundation) : Prop :=
  CellCycleClosed A.cellCycle ∧
  CytokinesisProcessClosed A.process ∧
  RingConstrictionClosed A.ringConstraint ∧
  AbscissionClosed A.abscission

theorem cytokinesis_foundation_closed_from_evidence
    (A : CytokinesisFoundation) : CytokinesisFoundationClosed A := by
  exact And.intro (cell_cycle_closed_from_evidence A.cellCycle A.cellCycleEvidence)
    (And.intro (cytokinesis_process_closed_from_evidence A.process A.processEvidence)
      (And.intro (ring_constriction_closed_from_evidence A.ringConstraint A.ringConstraintEvidence)
        (abscission_closed_from_evidence A.abscission A.abscissionEvidence)))

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse