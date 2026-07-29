import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure CytokinesisAdmittedObject where
  cellType : Type u
  cellCyclePhase : Prop
  cleavageFurrowFormed : Prop
  contractileRingAssembled : Prop
  abscissionCompleted : Prop
  cytokinesisSuccessful : cleavageFurrowFormed ∧ contractileRingAssembled ∧ abscissionCompleted

structure CytokinesisAdmissibleClass where
  object : CytokinesisAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def cytokinesisAdmittedClosure (A : CytokinesisAdmissibleClass) : Prop :=
  A.object.cytokinesisSuccessful ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse