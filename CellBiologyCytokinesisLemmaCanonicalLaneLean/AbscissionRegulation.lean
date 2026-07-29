import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytokinesisLemmaCanonicalLaneLean.CytoskeletonDynamics

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure AbscissionRegulationPackage {C : CytoskeletonDynamicsPackage} where
  midbodyFormation : Prop
  esoertMembraneTrafficking : Prop
  abscissionCheckpointPassed : Prop
  membraneSealing : Prop

structure AbscissionRegulationEvidence {C : CytoskeletonDynamicsPackage}
    (A : AbscissionRegulationPackage C) where
  midbodyFormationClosed : A.midbodyFormation
  esoertMembraneTraffickingClosed : A.esoertMembraneTrafficking
  abscissionCheckpointPassedClosed : A.abscissionCheckpointPassed
  membraneSealingClosed : A.membraneSealing

def AbscissionRegulationClosed {C : CytoskeletonDynamicsPackage}
    (A : AbscissionRegulationPackage C) : Prop :=
  A.midbodyFormation ∧ A.esoertMembraneTrafficking ∧
  A.abscissionCheckpointPassed ∧ A.membraneSealing ∧
  CytoskeletonDynamicsClosed C

theorem abscission_regulation_closed_from_evidence {C : CytoskeletonDynamicsPackage}
    (A : AbscissionRegulationPackage C) (E : AbscissionRegulationEvidence A)
    (EC : CytoskeletonDynamicsEvidence C) : AbscissionRegulationClosed A := by
  have hCyt := cytoskeleton_dynamics_closed_from_evidence C EC
  exact And.intro E.midbodyFormationClosed
    (And.intro E.esoertMembraneTraffickingClosed
      (And.intro E.abscissionCheckpointPassedClosed
        (And.intro E.membraneSealingClosed hCyt)))

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse