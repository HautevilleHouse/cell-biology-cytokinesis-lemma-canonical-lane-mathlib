import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytokinesisLemmaCanonicalLaneLean.ContractileRingDynamics

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure CytokinesisSignalingPathway (M : CellCycleModel) (R : ContractileRingDynamics M) where
  rhoGTPaseActivation : Prop
  actinNucleation : Prop
  myosinLightChainPhosphorylation : Prop
  septinRecruitment : Prop

structure SignalingPathwayEvidence (M : CellCycleModel) (R : ContractileRingDynamics M) (S : CytokinesisSignalingPathway M R) where
  rhoGTPaseActivationClosed : S.rhoGTPaseActivation
  actinNucleationClosed : S.actinNucleation
  myosinLightChainPhosphorylationClosed : S.myosinLightChainPhosphorylation
  septinRecruitmentClosed : S.septinRecruitment

def SignalingPathwayClosed (M : CellCycleModel) (R : ContractileRingDynamics M) (S : CytokinesisSignalingPathway M R) : Prop :=
  S.rhoGTPaseActivation ∧ S.actinNucleation ∧ S.myosinLightChainPhosphorylation ∧ S.septinRecruitment

theorem signaling_pathway_closed_from_evidence (M : CellCycleModel) (R : ContractileRingDynamics M) (S : CytokinesisSignalingPathway M R) (E : SignalingPathwayEvidence M R S) :
    SignalingPathwayClosed M R S :=
  And.intro E.rhoGTPaseActivationClosed (And.intro E.actinNucleationClosed (And.intro E.myosinLightChainPhosphorylationClosed E.septinRecruitmentClosed))

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse