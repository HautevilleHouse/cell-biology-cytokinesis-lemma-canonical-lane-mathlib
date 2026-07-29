import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure SignalingNetworkPackage where
  rhoGTPases : Type u
  rhoGTPaseRegulation : Prop
  actinDynamics : Prop
  myosinActivation : Prop
  rhoGTPaseRegulationTerm : rhoGTPaseRegulation
  actinDynamicsTerm : actinDynamics
  myosinActivationTerm : myosinActivation

structure SignalingNetworkEvidence (S : SignalingNetworkPackage) where
  rhoGTPaseRegulationClosed : S.rhoGTPaseRegulation
  actinDynamicsClosed : S.actinDynamics
  myosinActivationClosed : S.myosinActivation

def SignalingNetworkClosed (S : SignalingNetworkPackage) : Prop :=
  S.rhoGTPaseRegulation ∧ S.actinDynamics ∧ S.myosinActivation

theorem signaling_network_closed_from_evidence (S : SignalingNetworkPackage) (E : SignalingNetworkEvidence S) : SignalingNetworkClosed S := by
  exact And.intro E.rhoGTPaseRegulationClosed (And.intro E.actinDynamicsClosed E.myosinActivationClosed)

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse