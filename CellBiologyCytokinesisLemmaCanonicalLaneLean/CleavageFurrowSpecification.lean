import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure CleavageFurrowPackage where
  spindlePosition : Prop
  anaphaseSignals : Prop
  furrowPositioning : Prop
  spindlePositionTerm : spindlePosition
  anaphaseSignalsTerm : anaphaseSignals
  furrowPositioningTerm : furrowPositioning

structure CleavageFurrowEvidence (F : CleavageFurrowPackage) where
  spindlePositionClosed : F.spindlePosition
  anaphaseSignalsClosed : F.anaphaseSignals
  furrowPositioningClosed : F.furrowPositioning

def CleavageFurrowClosed (F : CleavageFurrowPackage) : Prop :=
  F.spindlePosition ∧ F.anaphaseSignals ∧ F.furrowPositioning

theorem cleavage_furrow_closed_from_evidence (F : CleavageFurrowPackage) (E : CleavageFurrowEvidence F) : CleavageFurrowClosed F := by
  exact And.intro E.spindlePositionClosed (And.intro E.anaphaseSignalsClosed E.furrowPositioningClosed)

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse