import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytokinesisLemmaCanonicalLaneLean.CellCycleModel

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure ContractileRingDynamics (M : CellCycleModel) where
  actinPolymerization : Prop
  myosinMotorActivity : Prop
  ringContraction : Prop
  furrowIngression : Prop

structure ContractileRingEvidence (M : CellCycleModel) (R : ContractileRingDynamics M) where
  actinPolymerizationClosed : R.actinPolymerization
  myosinMotorActivityClosed : R.myosinMotorActivity
  ringContractionClosed : R.ringContraction
  furrowIngressionClosed : R.furrowIngression

def ContractileRingClosed (M : CellCycleModel) (R : ContractileRingDynamics M) : Prop :=
  R.actinPolymerization ∧ R.myosinMotorActivity ∧ R.ringContraction ∧ R.furrowIngression

theorem contractile_ring_closed_from_evidence (M : CellCycleModel) (R : ContractileRingDynamics M) (E : ContractileRingEvidence M R) :
    ContractileRingClosed M R :=
  And.intro E.actinPolymerizationClosed (And.intro E.myosinMotorActivityClosed (And.intro E.ringContractionClosed E.furrowIngressionClosed))

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse