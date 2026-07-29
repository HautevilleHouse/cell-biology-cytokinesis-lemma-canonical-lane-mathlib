import Mathlib.Topology.Basic
import HautevilleHouse.CellBiologyCytokinesisLemmaCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure CytokinesisCell where
  cellType : String
  membranePotential : ℝ
  actinDensity : ℝ
  myosinIIactivation : ℝ
  rhoGTPaseActivity : ℝ
  contractileRingAssembly : Bool
  cleavageFurrowIngress : ℝ
  midbodyFormation : Bool
  abscissionComplete : Bool

defaultInstance : CytokinesisCell :=
  { cellType := "HeLa"
    membranePotential := -70
    actinDensity := 0.5
    myosinIIactivation := 0.3
    rhoGTPaseActivity := 0.8
    contractileRingAssembly := false
    cleavageFurrowIngress := 0
    midbodyFormation := false
    abscissionComplete := false
  }

structure CytokinesisAdmittedObject where
  cell : CytokinesisCell
  anaphaseTemporalWindow : Prop
  spindlePositioningCorrect : Prop
  contractileRingSufficient : Prop
  abscissionCompetent : Prop
  conclusion : contractileRingSufficient ∧ abscissionCompetent

defaultAdmittedObject : CytokinesisAdmittedObject :=
  { cell := defaultInstance
    anaphaseTemporalWindow := True
    spindlePositioningCorrect := True
    contractileRingSufficient := True
    abscissionCompetent := True
    conclusion := And.intro True.intro True.intro
  }

def CytokinesisWitnessClosed (O : CytokinesisAdmittedObject) : Prop :=
  O.contractileRingSufficient ∧ O.abscissionCompetent

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse
