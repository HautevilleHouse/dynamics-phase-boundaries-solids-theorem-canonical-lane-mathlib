import DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean.ElasticDrivingForce

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean

structure DislocationDynamicsPackage {P : PhaseFieldPackage} {pf : PhaseFieldClosed P} {L : SharpInterfaceLimitPackage pf} {sl : SharpInterfaceLimitClosed L}
    {E : ElasticDrivingForcePackage sl} (edf : ElasticDrivingForceClosed E) where
  dislocationDensity : Prop
  burgersVector : Prop
  glideForce : Prop
  climbForce : Prop
  mobilityTensor : Prop
  evolutionLaw : Prop

structure DislocationDynamicsEvidence {P : PhaseFieldPackage} {pf : PhaseFieldClosed P} {L : SharpInterfaceLimitPackage pf} {sl : SharpInterfaceLimitClosed L}
    {E : ElasticDrivingForcePackage sl} {edf : ElasticDrivingForceClosed E} (D : DislocationDynamicsPackage edf) where
  dislocationDensityClosed : D.dislocationDensity
  burgersVectorClosed : D.burgersVector
  glideForceClosed : D.glideForce
  climbForceClosed : D.climbForce
  mobilityTensorClosed : D.mobilityTensor
  evolutionLawClosed : D.evolutionLaw

def DislocationDynamicsClosed {P : PhaseFieldPackage} {pf : PhaseFieldClosed P} {L : SharpInterfaceLimitPackage pf} {sl : SharpInterfaceLimitClosed L}
    {E : ElasticDrivingForcePackage sl} {edf : ElasticDrivingForceClosed E} (D : DislocationDynamicsPackage edf) : Prop :=
  D.dislocationDensity ∧ D.burgersVector ∧ D.glideForce ∧ D.climbForce ∧ D.mobilityTensor ∧ D.evolutionLaw

theorem dislocation_dynamics_closed_from_evidence {P : PhaseFieldPackage} {pf : PhaseFieldClosed P} {L : SharpInterfaceLimitPackage pf} {sl : SharpInterfaceLimitClosed L}
    {E : ElasticDrivingForcePackage sl} {edf : ElasticDrivingForceClosed E} (D : DislocationDynamicsPackage edf) (Ev : DislocationDynamicsEvidence D) : DislocationDynamicsClosed D := by
  exact And.intro Ev.dislocationDensityClosed (And.intro Ev.burgersVectorClosed (And.intro Ev.glideForceClosed (And.intro Ev.climbForceClosed (And.intro Ev.mobilityTensorClosed Ev.evolutionLawClosed))))

end DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean
end HautevilleHouse