import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCytokinesisLemmaCanonicalLaneLean.RingConstrictionPackage

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure AbscissionAnalyticTerms {C : CellCyclePackage}
    {P : CytokinesisProcess C} {R : RingConstrictionPackage P} where
  esrtComplexAssembly : Prop
  membraneFission : Prop
  abscissionTiming : Prop
  noBlebFormation : Prop

def AbscissionClosed {C : CellCyclePackage}
    {P : CytokinesisProcess C} {R : RingConstrictionPackage P}
    (A : AbscissionAnalyticTerms R) : Prop :=
  A.esrtComplexAssembly ∧ A.membraneFission ∧
  A.abscissionTiming ∧ A.noBlebFormation

structure AbscissionEvidence {C : CellCyclePackage}
    {P : CytokinesisProcess C} {R : RingConstrictionPackage P}
    (A : AbscissionAnalyticTerms R) where
  esrtComplexAssemblyClosed : A.esrtComplexAssembly
  membraneFissionClosed : A.membraneFission
  abscissionTimingClosed : A.abscissionTiming
  noBlebFormationClosed : A.noBlebFormation

theorem abscission_closed_from_evidence {C : CellCyclePackage}
    {P : CytokinesisProcess C} {R : RingConstrictionPackage P}
    (A : AbscissionAnalyticTerms R) (E : AbscissionEvidence A) :
    AbscissionClosed A := by
  exact And.intro E.esrtComplexAssemblyClosed
    (And.intro E.membraneFissionClosed
      (And.intro E.abscissionTimingClosed
        E.noBlebFormationClosed))

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse