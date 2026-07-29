import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure ActomyosinRingPackage where
  ringFormation : Prop
  contractionMechanism : Prop
  disassemblySignaling : Prop
  forceGeneration : Prop

structure ActomyosinRingEvidence (R : ActomyosinRingPackage) where
  ringFormationClosed : R.ringFormation
  contractionMechanismClosed : R.contractionMechanism
  disassemblySignalingClosed : R.disassemblySignaling
  forceGenerationClosed : R.forceGeneration

def ActomyosinRingClosed (R : ActomyosinRingPackage) : Prop :=
  R.ringFormation ∧ R.contractionMechanism ∧ R.disassemblySignaling ∧ R.forceGeneration

theorem actomyosin_ring_closed_from_evidence (R : ActomyosinRingPackage) (E : ActomyosinRingEvidence R) :
    ActomyosinRingClosed R := by
  exact And.intro E.ringFormationClosed
    (And.intro E.contractionMechanismClosed
      (And.intro E.disassemblySignalingClosed E.forceGenerationClosed))

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse