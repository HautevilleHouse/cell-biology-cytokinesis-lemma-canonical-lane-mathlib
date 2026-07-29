import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure MidbodyAbscissionPackage where
  midbodyStructure : Prop
  abscissionFactors : Prop
  membraneScission : Prop
  midbodyStructureTerm : midbodyStructure
  abscissionFactorsTerm : abscissionFactors
  membraneScissionTerm : membraneScission

structure MidbodyAbscissionEvidence (M : MidbodyAbscissionPackage) where
  midbodyStructureClosed : M.midbodyStructure
  abscissionFactorsClosed : M.abscissionFactors
  membraneScissionClosed : M.membraneScission

def MidbodyAbscissionClosed (M : MidbodyAbscissionPackage) : Prop :=
  M.midbodyStructure ∧ M.abscissionFactors ∧ M.membraneScission

theorem midbody_abscission_closed_from_evidence (M : MidbodyAbscissionPackage) (E : MidbodyAbscissionEvidence M) : MidbodyAbscissionClosed M := by
  exact And.intro E.midbodyStructureClosed (And.intro E.abscissionFactorsClosed E.membraneScissionClosed)

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse