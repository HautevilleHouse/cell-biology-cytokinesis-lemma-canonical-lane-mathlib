import CellBiologyCytokinesisLemmaCanonicalLaneLean.CellCycleRegulation

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure CytokinesisDynamicsPackage {C : CellCycleRegulationPackage} where
  actinMyosinContraction : Prop
  furrowIngression : Prop
  midbodyAssembly : Prop
  abscission : Prop

structure CytokinesisDynamicsEvidence {C : CellCycleRegulationPackage}
  (D : CytokinesisDynamicsPackage C) where
  actinMyosinContractionClosed : D.actinMyosinContraction
  furrowIngressionClosed : D.furrowIngression
  midbodyAssemblyClosed : D.midbodyAssembly
  abscissionClosed : D.abscission

def CytokinesisDynamicsClosed {C : CellCycleRegulationPackage}
  (D : CytokinesisDynamicsPackage C) : Prop :=
  D.actinMyosinContraction ∧ D.furrowIngression ∧ D.midbodyAssembly ∧ D.abscission

theorem cytokinesis_dynamics_closed_from_evidence {C : CellCycleRegulationPackage}
  (D : CytokinesisDynamicsPackage C) (E : CytokinesisDynamicsEvidence D) :
  CytokinesisDynamicsClosed D := by
  exact And.intro E.actinMyosinContractionClosed
    (And.intro E.furrowIngressionClosed (And.intro E.midbodyAssemblyClosed E.abscissionClosed))

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse
