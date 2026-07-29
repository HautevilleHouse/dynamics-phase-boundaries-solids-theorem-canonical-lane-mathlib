import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean

structure SolidificationFrontDynamicsPackage where
  interfacePosition : Type u
  latentHeatRelease : Prop
  gibbsThomsonCondition : Prop
  interfaceKinetics : Prop
  mushyRegionModel : Prop

structure SolidificationFrontDynamicsEvidence (S : SolidificationFrontDynamicsPackage) where
  latentHeatReleaseClosed : S.latentHeatRelease
  gibbsThomsonConditionClosed : S.gibbsThomsonCondition
  interfaceKineticsClosed : S.interfaceKinetics
  mushyRegionModelClosed : S.mushyRegionModel

def SolidificationFrontDynamicsClosed (S : SolidificationFrontDynamicsPackage) : Prop :=
  S.latentHeatRelease ∧ S.gibbsThomsonCondition ∧ S.interfaceKinetics ∧ S.mushyRegionModel

theorem solidification_front_dynamics_closed_from_evidence
    (S : SolidificationFrontDynamicsPackage)
    (E : SolidificationFrontDynamicsEvidence S) : SolidificationFrontDynamicsClosed S := by
  exact And.intro E.latentHeatReleaseClosed
    (And.intro E.gibbsThomsonConditionClosed
      (And.intro E.interfaceKineticsClosed E.mushyRegionModelClosed))

end DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean
end HautevilleHouse