import DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean

structure PhaseFieldPackage where
  orderParameter : Type u
  freeEnergyFunctional : Type v
  gradientEnergyCoeff : Prop
  doubleWellPotential : Prop
  kineticCoefficient : Prop
  evolutionEquation : Prop

structure PhaseFieldEvidence (P : PhaseFieldPackage) where
  orderParameterDefined : P.orderParameter
  freeEnergyDefined : P.freeEnergyFunctional
  gradientEnergyCoeffClosed : P.gradientEnergyCoeff
  doubleWellPotentialClosed : P.doubleWellPotential
  kineticCoefficientClosed : P.kineticCoefficient
  evolutionEquationClosed : P.evolutionEquation

def PhaseFieldClosed (P : PhaseFieldPackage) : Prop :=
  P.gradientEnergyCoeff ∧ P.doubleWellPotential ∧ P.kineticCoefficient ∧ P.evolutionEquation

theorem phase_field_closed_from_evidence (P : PhaseFieldPackage) (E : PhaseFieldEvidence P) : PhaseFieldClosed P := by
  exact And.intro E.gradientEnergyCoeffClosed (And.intro E.doubleWellPotentialClosed (And.intro E.kineticCoefficientClosed E.evolutionEquationClosed))

end DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean
end HautevilleHouse