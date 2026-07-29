import HautevilleHouse.CellBiologyCytokinesisLemmaCanonicalLaneLean.ContractileRingAssembly

/-!
# Cleavage Furrow Dynamics Package

This package formalizes the dynamics of cleavage furrow ingression during cytokinesis.
-/

namespace HautevilleHouse
namespace CellBiologyCytokinesisLemmaCanonicalLaneLean

structure CleavageFurrowDynamicsPackage {C : CytokinesisCell}
    (R : ContractileRingAssemblyPackage C) where
  furrowInitiation : Prop
  furrowIngressionRate : ℝ → Prop
  corticalTension : Prop
  curvatureSensing : Prop
  abscissionCheckpoint : Prop
  midbodyThinning : Prop

structure CleavageFurrowDynamicsEvidence {C : CytokinesisCell}
    {R : ContractileRingAssemblyPackage C}
    (F : CleavageFurrowDynamicsPackage R) where
  furrowInitiationClosed : F.furrowInitiation
  furrowIngressionRateClosed : F.furrowIngressionRate 0
  corticalTensionClosed : F.corticalTension
  curvatureSensingClosed : F.curvatureSensing
  abscissionCheckpointClosed : F.abscissionCheckpoint
  midbodyThinningClosed : F.midbodyThinning

def CleavageFurrowDynamicsClosed {C : CytokinesisCell}
    {R : ContractileRingAssemblyPackage C}
    (F : CleavageFurrowDynamicsPackage R) : Prop :=
  F.furrowInitiation ∧ (∀ x : ℝ, F.furrowIngressionRate x) ∧
  F.corticalTension ∧ F.curvatureSensing ∧
  F.abscissionCheckpoint ∧ F.midbodyThinning

theorem cleavage_furrow_dynamics_closed_from_evidence
    {C : CytokinesisCell} {R : ContractileRingAssemblyPackage C}
    (F : CleavageFurrowDynamicsPackage R)
    (E : CleavageFurrowDynamicsEvidence F) :
    CleavageFurrowDynamicsClosed F := by
  exact And.intro E.furrowInitiationClosed
    (And.intro (fun x => E.furrowIngressionRateClosed)
      (And.intro E.corticalTensionClosed
        (And.intro E.curvatureSensingClosed
          (And.intro E.abscissionCheckpointClosed
            E.midbodyThinningClosed))))

end CellBiologyCytokinesisLemmaCanonicalLaneLean
end HautevilleHouse
