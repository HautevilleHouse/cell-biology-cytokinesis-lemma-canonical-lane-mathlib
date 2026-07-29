import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure MembraneIngressionPackage where
  exocytosis : Prop
  endocytosis : Prop
  membraneTraffic : Prop
  exocytosisTerm : exocytosis
  endocytosisTerm : endocytosis
  membraneTrafficTerm : membraneTraffic

structure MembraneIngressionEvidence (M : MembraneIngressionPackage) where
  exocytosisClosed : M.exocytosis
  endocytosisClosed : M.endocytosis
  membraneTrafficClosed : M.membraneTraffic

def MembraneIngressionClosed (M : MembraneIngressionPackage) : Prop :=
  M.exocytosis ∧ M.endocytosis ∧ M.membraneTraffic

theorem membrane_ingression_closed_from_evidence (M : MembraneIngressionPackage) (E : MembraneIngressionEvidence M) : MembraneIngressionClosed M := by
  exact And.intro E.exocytosisClosed (And.intro E.endocytosisClosed E.membraneTrafficClosed)

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse