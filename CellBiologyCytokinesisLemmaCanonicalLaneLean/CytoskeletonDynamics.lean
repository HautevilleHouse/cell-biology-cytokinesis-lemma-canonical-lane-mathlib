import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure CytoskeletonDynamicsPackage where
  actinFilamentPolymerization : Prop
  myosinMotorActivity : Prop
  contractileRingFormation : Prop
  cleavageFurrowIngression : Prop

structure CytoskeletonDynamicsEvidence (C : CytoskeletonDynamicsPackage) where
  actinFilamentPolymerizationClosed : C.actinFilamentPolymerization
  myosinMotorActivityClosed : C.myosinMotorActivity
  contractileRingFormationClosed : C.contractileRingFormation
  cleavageFurrowIngressionClosed : C.cleavageFurrowIngression

def CytoskeletonDynamicsClosed (C : CytoskeletonDynamicsPackage) : Prop :=
  C.actinFilamentPolymerization ∧ C.myosinMotorActivity ∧
  C.contractileRingFormation ∧ C.cleavageFurrowIngression

theorem cytoskeleton_dynamics_closed_from_evidence (C : CytoskeletonDynamicsPackage)
    (E : CytoskeletonDynamicsEvidence C) : CytoskeletonDynamicsClosed C := by
  exact And.intro E.actinFilamentPolymerizationClosed
    (And.intro E.myosinMotorActivityClosed
      (And.intro E.contractileRingFormationClosed E.cleavageFurrowIngressionClosed))

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse