import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure ContractilityPackage where
  forceTransmission : Prop
  cortexStiffness : Prop
  cellShapeStability : Prop
  forceTransmissionTerm : forceTransmission
  cortexStiffnessTerm : cortexStiffness
  cellShapeStabilityTerm : cellShapeStability

structure ContractilityEvidence (C : ContractilityPackage) where
  forceTransmissionClosed : C.forceTransmission
  cortexStiffnessClosed : C.cortexStiffness
  cellShapeStabilityClosed : C.cellShapeStability

def ContractilityClosed (C : ContractilityPackage) : Prop :=
  C.forceTransmission ∧ C.cortexStiffness ∧ C.cellShapeStability

theorem contractility_closed_from_evidence (C : ContractilityPackage) (E : ContractilityEvidence C) : ContractilityClosed C := by
  exact And.intro E.forceTransmissionClosed (And.intro E.cortexStiffnessClosed E.cellShapeStabilityClosed)

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse