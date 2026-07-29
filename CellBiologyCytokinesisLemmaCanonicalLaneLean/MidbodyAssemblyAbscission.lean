import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure MidbodyAssemblyPackage where
  midbodyFormation : Prop
  esrtComplexRecruitment : Prop
  abscissionSignaling : Prop
  membraneFission : Prop

structure MidbodyAssemblyEvidence (M : MidbodyAssemblyPackage) where
  midbodyFormationClosed : M.midbodyFormation
  esrtComplexRecruitmentClosed : M.esrtComplexRecruitment
  abscissionSignalingClosed : M.abscissionSignaling
  membraneFissionClosed : M.membraneFission

def MidbodyAssemblyClosed (M : MidbodyAssemblyPackage) : Prop :=
  M.midbodyFormation ∧ M.esrtComplexRecruitment ∧ M.abscissionSignaling ∧ M.membraneFission

theorem midbody_assembly_closed_from_evidence (M : MidbodyAssemblyPackage) (E : MidbodyAssemblyEvidence M) :
    MidbodyAssemblyClosed M := by
  exact And.intro E.midbodyFormationClosed
    (And.intro E.esrtComplexRecruitmentClosed
      (And.intro E.abscissionSignalingClosed E.membraneFissionClosed))

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse