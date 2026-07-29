import HautevilleHouse.CellBiologyCytokinesisLemmaCanonicalLaneLean.ContractileRingAssembly

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure AbscissionCheckpoint {S : SignalingPathway} {sigClosed : SignalingClosed S} {A : ContractileRingAssembly sigClosed} (ringClosed : ContractileRingClosed A) where
  esrtComplexLocalized : Prop
  membraneScission : Prop
  abscissionComplete : Prop
  cellSeparationAchieved : Prop

structure AbscissionEvidence {S : SignalingPathway} {sigClosed : SignalingClosed S} {A : ContractileRingAssembly sigClosed} {ringClosed : ContractileRingClosed A} (C : AbscissionCheckpoint ringClosed) where
  esrtComplexLocalizedClosed : C.esrtComplexLocalized
  membraneScissionClosed : C.membraneScission
  abscissionCompleteClosed : C.abscissionComplete
  cellSeparationAchievedClosed : C.cellSeparationAchieved

def AbscissionClosed {S : SignalingPathway} {sigClosed : SignalingClosed S} {A : ContractileRingAssembly sigClosed} {ringClosed : ContractileRingClosed A} (C : AbscissionCheckpoint ringClosed) : Prop :=
  C.esrtComplexLocalized ∧ C.membraneScission ∧ C.abscissionComplete ∧ C.cellSeparationAchieved

theorem abscission_closed_from_evidence {S : SignalingPathway} {sigClosed : SignalingClosed S} {A : ContractileRingAssembly sigClosed} {ringClosed : ContractileRingClosed A} (C : AbscissionCheckpoint ringClosed) (E : AbscissionEvidence C) : AbscissionClosed C := by
  exact And.intro E.esrtComplexLocalizedClosed (And.intro E.membraneScissionClosed (And.intro E.abscissionCompleteClosed E.cellSeparationAchievedClosed))

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse