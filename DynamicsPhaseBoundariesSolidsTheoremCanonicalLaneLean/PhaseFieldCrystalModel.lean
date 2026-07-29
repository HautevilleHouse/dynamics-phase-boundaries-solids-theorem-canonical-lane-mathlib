import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean

structure PhaseFieldCrystalModel where
  densityField : Type u
  freeEnergyFunctional : Type v
  gradientFlow : Type w
  conservedDynamics : Prop
  nonConservedDynamics : Prop
  periodicPotential : Prop
  conservedDynamicsTerm : conservedDynamics
  nonConservedDynamicsTerm : nonConservedDynamics
  periodicPotentialTerm : periodicPotential

structure PhaseFieldCrystalEvidence (M : PhaseFieldCrystalModel) where
  conservedDynamicsClosed : M.conservedDynamics
  nonConservedDynamicsClosed : M.nonConservedDynamics
  periodicPotentialClosed : M.periodicPotential

def PhaseFieldCrystalClosed (M : PhaseFieldCrystalModel) : Prop :=
  M.conservedDynamics ∧ M.nonConservedDynamics ∧ M.periodicPotential

theorem phase_field_crystal_closed_from_evidence (M : PhaseFieldCrystalModel)
    (E : PhaseFieldCrystalEvidence M) : PhaseFieldCrystalClosed M := by
  exact And.intro E.conservedDynamicsClosed
    (And.intro E.nonConservedDynamicsClosed E.periodicPotentialClosed)

end DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean
end HautevilleHouse