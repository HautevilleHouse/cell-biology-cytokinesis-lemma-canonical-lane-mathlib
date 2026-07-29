import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure MembraneAbscission where
  esrtProteinRecruitment : Prop
  membraneScissionMachinery : Prop
  microtubuleDisassembly : Prop
  midbodyRemnantRelease : Prop
  abscissionTiming : Prop
  cytokineticBridgeResolution : Prop

structure MembraneAbscissionEvidence (M : MembraneAbscission) where
  esrtProteinRecruitmentClosed : M.esrtProteinRecruitment
  membraneScissionMachineryClosed : M.membraneScissionMachinery
  microtubuleDisassemblyClosed : M.microtubuleDisassembly
  midbodyRemnantReleaseClosed : M.midbodyRemnantRelease
  abscissionTimingClosed : M.abscissionTiming
  cytokineticBridgeResolutionClosed : M.cytokineticBridgeResolution

def MembraneAbscissionClosed (M : MembraneAbscission) : Prop :=
  M.esrtProteinRecruitment ∧ M.membraneScissionMachinery ∧
  M.microtubuleDisassembly ∧ M.midbodyRemnantRelease ∧
  M.abscissionTiming ∧ M.cytokineticBridgeResolution

theorem membrane_abscission_closed_from_evidence (M : MembraneAbscission)
    (E : MembraneAbscissionEvidence M) : MembraneAbscissionClosed M := by
  exact And.intro E.esrtProteinRecruitmentClosed
    (And.intro E.membraneScissionMachineryClosed
      (And.intro E.microtubuleDisassemblyClosed
        (And.intro E.midbodyRemnantReleaseClosed
          (And.intro E.abscissionTimingClosed E.cytokineticBridgeResolutionClosed))))

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse