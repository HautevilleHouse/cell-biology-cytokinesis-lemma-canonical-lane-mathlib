import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure MembraneTraffickingCytokinesisPackage where
  vesicleTransport : Prop
  SNAREComplexAssembly : Prop
  membraneFusion : Prop
  abscissionCompletion : Prop

structure MembraneTraffickingCytokinesisEvidence (M : MembraneTraffickingCytokinesisPackage) where
  vesicleTransportClosed : M.vesicleTransport
  SNAREComplexAssemblyClosed : M.SNAREComplexAssembly
  membraneFusionClosed : M.membraneFusion
  abscissionCompletionClosed : M.abscissionCompletion

def MembraneTraffickingCytokinesisClosed (M : MembraneTraffickingCytokinesisPackage) : Prop :=
  M.vesicleTransport ∧ M.SNAREComplexAssembly ∧ M.membraneFusion ∧ M.abscissionCompletion

theorem membrane_trafficking_cytokinesis_closed_from_evidence (M : MembraneTraffickingCytokinesisPackage) (E : MembraneTraffickingCytokinesisEvidence M) :
    MembraneTraffickingCytokinesisClosed M := by
  exact And.intro E.vesicleTransportClosed
    (And.intro E.SNAREComplexAssemblyClosed
      (And.intro E.membraneFusionClosed E.abscissionCompletionClosed))

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse