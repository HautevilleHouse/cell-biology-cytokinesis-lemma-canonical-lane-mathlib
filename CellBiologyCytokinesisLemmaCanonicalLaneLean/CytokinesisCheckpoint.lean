import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure CytokinesisCheckpoint where
  chromosomePassengerComplex : Prop
  auroraBKinase : Prop
  borealinIncENP : Prop
  spindleAssemblyCheckpoint : Prop
  histoneH3Phosphorylation : Prop
  mitoticExitControl : Prop

structure CytokinesisCheckpointEvidence (C : CytokinesisCheckpoint) where
  chromosomePassengerComplexClosed : C.chromosomePassengerComplex
  auroraBKinaseClosed : C.auroraBKinase
  borealinIncENPClosed : C.borealinIncENP
  spindleAssemblyCheckpointClosed : C.spindleAssemblyCheckpoint
  histoneH3PhosphorylationClosed : C.histoneH3Phosphorylation
  mitoticExitControlClosed : C.mitoticExitControl

def CytokinesisCheckpointClosed (C : CytokinesisCheckpoint) : Prop :=
  C.chromosomePassengerComplex ∧ C.auroraBKinase ∧
  C.borealinIncENP ∧ C.spindleAssemblyCheckpoint ∧
  C.histoneH3Phosphorylation ∧ C.mitoticExitControl

theorem cytokinesis_checkpoint_closed_from_evidence (C : CytokinesisCheckpoint)
    (E : CytokinesisCheckpointEvidence C) : CytokinesisCheckpointClosed C := by
  exact And.intro E.chromosomePassengerComplexClosed
    (And.intro E.auroraBKinaseClosed
      (And.intro E.borealinIncENPClosed
        (And.intro E.spindleAssemblyCheckpointClosed
          (And.intro E.histoneH3PhosphorylationClosed E.mitoticExitControlClosed))))

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse