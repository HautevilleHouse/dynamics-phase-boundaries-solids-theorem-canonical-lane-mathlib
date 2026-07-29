import DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean.SharpInterfaceLimit

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean

structure ElasticDrivingForcePackage {P : PhaseFieldPackage} {pf : PhaseFieldClosed P} {L : SharpInterfaceLimitPackage pf} (sl : SharpInterfaceLimitClosed L) where
  elasticEnergyDensity : Prop
  stressTensor : Prop
  eigenstrain : Prop
  jumpConditions : Prop
  elasticDrivingForceTerm : Prop

structure ElasticDrivingForceEvidence {P : PhaseFieldPackage} {pf : PhaseFieldClosed P} {L : SharpInterfaceLimitPackage pf} {sl : SharpInterfaceLimitClosed L} (E : ElasticDrivingForcePackage sl) where
  elasticEnergyDensityClosed : E.elasticEnergyDensity
  stressTensorClosed : E.stressTensor
  eigenstrainClosed : E.eigenstrain
  jumpConditionsClosed : E.jumpConditions
  elasticDrivingForceTermClosed : E.elasticDrivingForceTerm

def ElasticDrivingForceClosed {P : PhaseFieldPackage} {pf : PhaseFieldClosed P} {L : SharpInterfaceLimitPackage pf} {sl : SharpInterfaceLimitClosed L} (E : ElasticDrivingForcePackage sl) : Prop :=
  E.elasticEnergyDensity ∧ E.stressTensor ∧ E.eigenstrain ∧ E.jumpConditions ∧ E.elasticDrivingForceTerm

theorem elastic_driving_force_closed_from_evidence {P : PhaseFieldPackage} {pf : PhaseFieldClosed P} {L : SharpInterfaceLimitPackage pf} {sl : SharpInterfaceLimitClosed L} (E : ElasticDrivingForcePackage sl) (Ev : ElasticDrivingForceEvidence E) : ElasticDrivingForceClosed E := by
  exact And.intro Ev.elasticEnergyDensityClosed (And.intro Ev.stressTensorClosed (And.intro Ev.eigenstrainClosed (And.intro Ev.jumpConditionsClosed Ev.elasticDrivingForceTermClosed)))

end DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean
end HautevilleHouse