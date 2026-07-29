import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean

structure PhaseFieldEvolutionPackage where
  orderParameter : Type u
  freeEnergy : Prop
  cahnHilliardEquation : Prop
  allenCahnEquation : Prop
  boundaryConditions : Prop

structure PhaseFieldEvolutionEvidence (P : PhaseFieldEvolutionPackage) where
  freeEnergyClosed : P.freeEnergy
  cahnHilliardEquationClosed : P.cahnHilliardEquation
  allenCahnEquationClosed : P.allenCahnEquation
  boundaryConditionsClosed : P.boundaryConditions

def PhaseFieldEvolutionClosed (P : PhaseFieldEvolutionPackage) : Prop :=
  P.freeEnergy ∧ P.cahnHilliardEquation ∧ P.allenCahnEquation ∧ P.boundaryConditions

theorem phase_field_evolution_closed_from_evidence (P : PhaseFieldEvolutionPackage)
    (E : PhaseFieldEvolutionEvidence P) : PhaseFieldEvolutionClosed P := by
  exact And.intro E.freeEnergyClosed
    (And.intro E.cahnHilliardEquationClosed
      (And.intro E.allenCahnEquationClosed E.boundaryConditionsClosed))

end DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean
end HautevilleHouse