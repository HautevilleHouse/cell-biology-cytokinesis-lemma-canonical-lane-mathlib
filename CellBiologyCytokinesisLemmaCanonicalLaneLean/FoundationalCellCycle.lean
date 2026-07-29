import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure CellCyclePhase where
  phaseName : String
  checkpointPassed : Prop
  cyclinRegulation : Prop

structure CytoplasmOrganelle where
  organelleType : String
  position : ℝ × ℝ

structure CellDivisionCycle where
  phases : List CellCyclePhase
  organelles : List CytoplasmOrganelle
  divisionPlane : ℝ × ℝ
  abscissionComplete : Prop

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse