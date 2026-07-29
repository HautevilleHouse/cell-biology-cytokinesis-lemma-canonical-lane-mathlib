import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure CleavageFurrowPositioning where
  mitoticSpindlePosition : Prop
  astralMicrotubules : Prop
  centralspindlinComplex : Prop
  ect2Recruitment : Prop
  rhoActivationZone : Prop
  furrowIngressionDynamics : Prop

structure CleavageFurrowPositioningEvidence (C : CleavageFurrowPositioning) where
  mitoticSpindlePositionClosed : C.mitoticSpindlePosition
  astralMicrotubulesClosed : C.astralMicrotubules
  centralspindlinComplexClosed : C.centralspindlinComplex
  ect2RecruitmentClosed : C.ect2Recruitment
  rhoActivationZoneClosed : C.rhoActivationZone
  furrowIngressionDynamicsClosed : C.furrowIngressionDynamics

def CleavageFurrowPositioningClosed (C : CleavageFurrowPositioning) : Prop :=
  C.mitoticSpindlePosition ∧ C.astralMicrotubules ∧
  C.centralspindlinComplex ∧ C.ect2Recruitment ∧
  C.rhoActivationZone ∧ C.furrowIngressionDynamics

theorem cleavage_furrow_positioning_closed_from_evidence (C : CleavageFurrowPositioning)
    (E : CleavageFurrowPositioningEvidence C) : CleavageFurrowPositioningClosed C := by
  exact And.intro E.mitoticSpindlePositionClosed
    (And.intro E.astralMicrotubulesClosed
      (And.intro E.centralspindlinComplexClosed
        (And.intro E.ect2RecruitmentClosed
          (And.intro E.rhoActivationZoneClosed E.furrowIngressionDynamicsClosed))))

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse