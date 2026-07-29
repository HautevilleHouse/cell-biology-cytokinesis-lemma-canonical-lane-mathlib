import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure RhoGTPaseSignalingPackage where
  rhoActivation : Prop
  effectorRecruitment : Prop
  actinPolymerization : Prop
  myosinActivation : Prop
  feedbackLoops : Prop

structure RhoGTPaseSignalingEvidence (R : RhoGTPaseSignalingPackage) where
  rhoActivationClosed : R.rhoActivation
  effectorRecruitmentClosed : R.effectorRecruitment
  actinPolymerizationClosed : R.actinPolymerization
  myosinActivationClosed : R.myosinActivation
  feedbackLoopsClosed : R.feedbackLoops

def RhoGTPaseSignalingClosed (R : RhoGTPaseSignalingPackage) : Prop :=
  R.rhoActivation ∧ R.effectorRecruitment ∧ R.actinPolymerization ∧ R.myosinActivation ∧ R.feedbackLoops

theorem rho_gtpase_signaling_closed_from_evidence (R : RhoGTPaseSignalingPackage) (E : RhoGTPaseSignalingEvidence R) :
    RhoGTPaseSignalingClosed R := by
  exact And.intro E.rhoActivationClosed
    (And.intro E.effectorRecruitmentClosed
      (And.intro E.actinPolymerizationClosed
        (And.intro E.myosinActivationClosed E.feedbackLoopsClosed)))

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse