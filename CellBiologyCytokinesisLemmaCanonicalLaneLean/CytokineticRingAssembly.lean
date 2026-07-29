import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure CytokineticRingAssembly where
  actinFilamentBundle : Type u
  myosinMotorDensity : Type v
  ringContractionForce : Prop
  ringCouplingStiffness : Prop
  persistenceLength : Prop
  contractileRingFormed : Prop

structure CytokineticRingAssemblyEvidence (R : CytokineticRingAssembly) where
  actinFilamentBundleClosed : R.actinFilamentBundle
  myosinMotorDensityClosed : R.myosinMotorDensity
  ringContractionForceClosed : R.ringContractionForce
  ringCouplingStiffnessClosed : R.ringCouplingStiffness
  persistenceLengthClosed : R.persistenceLength
  contractileRingFormedClosed : R.contractileRingFormed

def CytokineticRingAssemblyClosed (R : CytokineticRingAssembly) : Prop :=
  R.actinFilamentBundle ∧ R.myosinMotorDensity ∧
  R.ringContractionForce ∧ R.ringCouplingStiffness ∧
  R.persistenceLength ∧ R.contractileRingFormed

theorem cytokinetic_ring_assembly_closed_from_evidence (R : CytokineticRingAssembly)
    (E : CytokineticRingAssemblyEvidence R) : CytokineticRingAssemblyClosed R := by
  exact And.intro E.actinFilamentBundleClosed
    (And.intro E.myosinMotorDensityClosed
      (And.intro E.ringContractionForceClosed
        (And.intro E.ringCouplingStiffnessClosed
          (And.intro E.persistenceLengthClosed E.contractileRingFormedClosed))))

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse