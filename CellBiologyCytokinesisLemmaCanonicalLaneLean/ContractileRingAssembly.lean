import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure ActinMyosinFilament where
  length : ℝ
  orientation : ℝ
  bindingSitesExposed : Prop

structure RhoGTPaseSignal where
  activationStatus : Prop
  downstreamEffector : String

structure ContractileRing where
  filaments : List ActinMyosinFilament
  rhoSignals : List RhoGTPaseSignal
  ringDiameter : ℝ
  contractileForce : ℝ
  assemblyComplete : Prop

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse