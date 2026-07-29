import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

open HautevilleHouse.CellBiologyCytokinesisLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CellDivisionCycle.abscissionComplete A.object ∧
  ContractileRing.assemblyComplete A.object ∧
  Midbody.formationComplete A.object ∧
  AbscissionProcess.abscissionComplete A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  match A with
  | { object := obj, endpointSatisfied := _, remainderRecorded := _, gateWitness := _ } => by
    exact And.intro (by
      have h : CellDivisionCycle.abscissionComplete obj := by
        sorry
      exact h) (by
      have h : ContractileRing.assemblyComplete obj := by
        sorry
      exact h)

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse