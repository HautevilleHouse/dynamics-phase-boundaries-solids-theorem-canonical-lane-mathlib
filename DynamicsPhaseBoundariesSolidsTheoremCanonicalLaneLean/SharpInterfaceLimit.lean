import DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean.PhaseFieldModel

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean

structure SharpInterfaceLimitPackage {P : PhaseFieldPackage} (pf : PhaseFieldClosed P) where
  interfaceWidth : Prop
  surfaceTension : Prop
  mobility : Prop
  laplaceBeltramiOperator : Prop
  meanCurvatureFlow : Prop
  gibbsThomsonCondition : Prop

structure SharpInterfaceLimitEvidence {P : PhaseFieldPackage} {pf : PhaseFieldClosed P} (L : SharpInterfaceLimitPackage pf) where
  interfaceWidthClosed : L.interfaceWidth
  surfaceTensionClosed : L.surfaceTension
  mobilityClosed : L.mobility
  laplaceBeltramiOperatorClosed : L.laplaceBeltramiOperator
  meanCurvatureFlowClosed : L.meanCurvatureFlow
  gibbsThomsonConditionClosed : L.gibbsThomsonCondition

def SharpInterfaceLimitClosed {P : PhaseFieldPackage} {pf : PhaseFieldClosed P} (L : SharpInterfaceLimitPackage pf) : Prop :=
  L.interfaceWidth ∧ L.surfaceTension ∧ L.mobility ∧ L.laplaceBeltramiOperator ∧ L.meanCurvatureFlow ∧ L.gibbsThomsonCondition

theorem sharp_interface_limit_closed_from_evidence {P : PhaseFieldPackage} {pf : PhaseFieldClosed P} (L : SharpInterfaceLimitPackage pf) (E : SharpInterfaceLimitEvidence L) : SharpInterfaceLimitClosed L := by
  exact And.intro E.interfaceWidthClosed (And.intro E.surfaceTensionClosed (And.intro E.mobilityClosed (And.intro E.laplaceBeltramiOperatorClosed (And.intro E.meanCurvatureFlowClosed E.gibbsThomsonConditionClosed))))

end DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean
end HautevilleHouse