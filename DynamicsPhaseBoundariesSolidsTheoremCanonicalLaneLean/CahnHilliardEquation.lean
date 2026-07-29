import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean

structure CahnHilliardEquationPackage where
  compositionField : Type u
  chemicalPotential : Type v
  fourthOrderPDE : Prop
  massConservation : Prop
  spinodalDecomposition : Prop
  fourthOrderPDETerm : fourthOrderPDE
  massConservationTerm : massConservation
  spinodalDecompositionTerm : spinodalDecomposition

structure CahnHilliardEquationEvidence (C : CahnHilliardEquationPackage) where
  fourthOrderPDEClosed : C.fourthOrderPDE
  massConservationClosed : C.massConservation
  spinodalDecompositionClosed : C.spinodalDecomposition

def CahnHilliardEquationClosed (C : CahnHilliardEquationPackage) : Prop :=
  C.fourthOrderPDE ∧ C.massConservation ∧ C.spinodalDecomposition

theorem cahn_hilliard_equation_closed_from_evidence
    (C : CahnHilliardEquationPackage)
    (E : CahnHilliardEquationEvidence C) : CahnHilliardEquationClosed C := by
  exact And.intro E.fourthOrderPDEClosed
    (And.intro E.massConservationClosed E.spinodalDecompositionClosed)

end DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean
end HautevilleHouse