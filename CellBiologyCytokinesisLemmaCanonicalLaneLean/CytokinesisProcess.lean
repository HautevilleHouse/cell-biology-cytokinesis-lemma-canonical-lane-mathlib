import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytokinesisLemmaCanonicalLaneLean.CellCyclePackage

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure CytokinesisProcess (C : CellCyclePackage) where
  actomyosinRing : Type u
  furrowIngression : Type v
  midbodyFormation : Prop
  abscissionSignaling : Prop
  ringConstrictionRate : Prop

def CytokinesisProcessClosed {C : CellCyclePackage} (P : CytokinesisProcess C) : Prop :=
  P.midbodyFormation ∧ P.abscissionSignaling ∧ P.ringConstrictionRate

structure CytokinesisProcessEvidence {C : CellCyclePackage}
    (P : CytokinesisProcess C) where
  midbodyFormationClosed : P.midbodyFormation
  abscissionSignalingClosed : P.abscissionSignaling
  ringConstrictionRateClosed : P.ringConstrictionRate

theorem cytokinesis_process_closed_from_evidence {C : CellCyclePackage}
    (P : CytokinesisProcess C) (E : CytokinesisProcessEvidence P) :
    CytokinesisProcessClosed P := by
  exact And.intro E.midbodyFormationClosed
    (And.intro E.abscissionSignalingClosed
      E.ringConstrictionRateClosed)

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse