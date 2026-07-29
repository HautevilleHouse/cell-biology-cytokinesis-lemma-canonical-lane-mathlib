import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure ContractileRingRegulation where
  rhoGtpaseSignaling : Prop
  myosinLightChainPhosphorylation : Prop
  actinPolymerizationDynamics : Prop
  septinCytoskeleton : Prop
  anillinCrosslinking : Prop
  dynamicInstability : Prop

structure ContractileRingRegulationEvidence (R : ContractileRingRegulation) where
  rhoGtpaseSignalingClosed : R.rhoGtpaseSignaling
  myosinLightChainPhosphorylationClosed : R.myosinLightChainPhosphorylation
  actinPolymerizationDynamicsClosed : R.actinPolymerizationDynamics
  septinCytoskeletonClosed : R.septinCytoskeleton
  anillinCrosslinkingClosed : R.anillinCrosslinking
  dynamicInstabilityClosed : R.dynamicInstability

def ContractileRingRegulationClosed (R : ContractileRingRegulation) : Prop :=
  R.rhoGtpaseSignaling ∧ R.myosinLightChainPhosphorylation ∧
  R.actinPolymerizationDynamics ∧ R.septinCytoskeleton ∧
  R.anillinCrosslinking ∧ R.dynamicInstability

theorem contractile_ring_regulation_closed_from_evidence (R : ContractileRingRegulation)
    (E : ContractileRingRegulationEvidence R) : ContractileRingRegulationClosed R := by
  exact And.intro E.rhoGtpaseSignalingClosed
    (And.intro E.myosinLightChainPhosphorylationClosed
      (And.intro E.actinPolymerizationDynamicsClosed
        (And.intro E.septinCytoskeletonClosed
          (And.intro E.anillinCrosslinkingClosed E.dynamicInstabilityClosed))))

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse