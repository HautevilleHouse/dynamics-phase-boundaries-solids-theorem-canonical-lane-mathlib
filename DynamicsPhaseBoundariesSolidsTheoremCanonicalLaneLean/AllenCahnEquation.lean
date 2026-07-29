import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean

structure AllenCahnEquationPackage where
  orderParameter : Type u
  doubleWellPotential : Type v
  reactionDiffusionEquation : Prop
  energyDissipation : Prop
  motionByMeanCurvature : Prop
  reactionDiffusionEquationTerm : reactionDiffusionEquation
  energyDissipationTerm : energyDissipation
  motionByMeanCurvatureTerm : motionByMeanCurvature

structure AllenCahnEquationEvidence (A : AllenCahnEquationPackage) where
  reactionDiffusionEquationClosed : A.reactionDiffusionEquation
  energyDissipationClosed : A.energyDissipation
  motionByMeanCurvatureClosed : A.motionByMeanCurvature

def AllenCahnEquationClosed (A : AllenCahnEquationPackage) : Prop :=
  A.reactionDiffusionEquation ∧ A.energyDissipation ∧ A.motionByMeanCurvature

theorem allen_cahn_equation_closed_from_evidence (A : AllenCahnEquationPackage)
    (E : AllenCahnEquationEvidence A) : AllenCahnEquationClosed A := by
  exact And.intro E.reactionDiffusionEquationClosed
    (And.intro E.energyDissipationClosed E.motionByMeanCurvatureClosed)

end DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean
end HautevilleHouse