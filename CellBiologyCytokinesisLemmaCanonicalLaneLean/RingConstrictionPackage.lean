import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytokinesisLemmaCanonicalLaneLean.CytokinesisProcess

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure RingConstrictionPackage {C : CellCyclePackage}
    (P : CytokinesisProcess C) where
  actinPolymerization : Prop
  myosinMotorActivity : Prop
  tensionGeneration : Prop
  constrictionForceBalance : Prop

def RingConstrictionClosed {C : CellCyclePackage}
    {P : CytokinesisProcess C} (R : RingConstrictionPackage P) : Prop :=
  R.actinPolymerization ∧ R.myosinMotorActivity ∧
  R.tensionGeneration ∧ R.constrictionForceBalance

structure RingConstrictionEvidence {C : CellCyclePackage}
    {P : CytokinesisProcess C} (R : RingConstrictionPackage P) where
  actinPolymerizationClosed : R.actinPolymerization
  myosinMotorActivityClosed : R.myosinMotorActivity
  tensionGenerationClosed : R.tensionGeneration
  constrictionForceBalanceClosed : R.constrictionForceBalance

theorem ring_constriction_closed_from_evidence {C : CellCyclePackage}
    {P : CytokinesisProcess C} (R : RingConstrictionPackage P)
    (E : RingConstrictionEvidence R) : RingConstrictionClosed R := by
  exact And.intro E.actinPolymerizationClosed
    (And.intro E.myosinMotorActivityClosed
      (And.intro E.tensionGenerationClosed
        E.constrictionForceBalanceClosed))

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse