import HautevilleHouse.CellBiologyCytokinesisLemmaCanonicalLaneLean.CellAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure SignalingPathway where
  rhoActivation : Prop
  rockActivation : Prop
  myosinLightChainPhosphorylation : Prop
  actinPolymerization : Prop

structure SignalingEvidence (S : SignalingPathway) where
  rhoActivationClosed : S.rhoActivation
  rockActivationClosed : S.rockActivation
  myosinLightChainPhosphorylationClosed : S.myosinLightChainPhosphorylation
  actinPolymerizationClosed : S.actinPolymerization

def SignalingClosed (S : SignalingPathway) : Prop :=
  S.rhoActivation ∧ S.rockActivation ∧ S.myosinLightChainPhosphorylation ∧ S.actinPolymerization

theorem signaling_closed_from_evidence (S : SignalingPathway) (E : SignalingEvidence S) : SignalingClosed S := by
  exact And.intro E.rhoActivationClosed (And.intro E.rockActivationClosed (And.intro E.myosinLightChainPhosphorylationClosed E.actinPolymerizationClosed))

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse