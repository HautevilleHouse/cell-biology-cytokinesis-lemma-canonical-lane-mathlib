import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure FurrowIngressionPackage where
  cleavageFurrowFormation : Prop
  ingressionRateRegulated : Prop
  contractileRingCoupling : Prop
  completionTiming : Prop

structure FurrowIngressionEvidence (F : FurrowIngressionPackage) where
  cleavageFurrowFormationClosed : F.cleavageFurrowFormation
  ingressionRateRegulatedClosed : F.ingressionRateRegulated
  contractileRingCouplingClosed : F.contractileRingCoupling
  completionTimingClosed : F.completionTiming

def FurrowIngressionClosed (F : FurrowIngressionPackage) : Prop :=
  F.cleavageFurrowFormation ∧ F.ingressionRateRegulated ∧ F.contractileRingCoupling ∧ F.completionTiming

theorem furrow_ingression_closed_from_evidence (F : FurrowIngressionPackage) (E : FurrowIngressionEvidence F) :
    FurrowIngressionClosed F := by
  exact And.intro E.cleavageFurrowFormationClosed
    (And.intro E.ingressionRateRegulatedClosed
      (And.intro E.contractileRingCouplingClosed E.completionTimingClosed))

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse