import HautevilleHouse.CellBiologyCytokinesisLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : CytokinesisAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CytokinesisWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse
