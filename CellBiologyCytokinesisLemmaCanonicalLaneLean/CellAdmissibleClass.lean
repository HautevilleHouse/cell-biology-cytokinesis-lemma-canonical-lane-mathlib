import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure CytokinesisCell where
  cellType : Type
  membrane : Type
  contractileRing : Prop
  abscissionMachinery : Prop
  cellCycleStage : Prop

structure CytokinesisAdmittedObject where
  cell : CytokinesisCell
  ringAssembled : Prop
  abscissionReady : Prop
  conclusion : ringAssembled ∧ abscissionReady

structure AdmissibleClass where
  object : CytokinesisAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.ringAssembled ∧ A.object.abscissionReady) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse