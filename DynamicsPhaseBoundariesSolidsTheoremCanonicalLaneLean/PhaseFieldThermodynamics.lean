import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean

structure PhaseFieldThermodynamicsPackage where
  freeEnergyFunctional : Type u
  chemicalPotential : Type v
  gibbsFreeEnergy : Prop
  entropyProduction : Prop
  latentHeat : Prop
  gibbsFreeEnergyTerm : gibbsFreeEnergy
  entropyProductionTerm : entropyProduction
  latentHeatTerm : latentHeat

structure PhaseFieldThermodynamicsEvidence (P : PhaseFieldThermodynamicsPackage) where
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy
  entropyProductionClosed : P.entropyProduction
  latentHeatClosed : P.latentHeat

def PhaseFieldThermodynamicsClosed (P : PhaseFieldThermodynamicsPackage) : Prop :=
  P.gibbsFreeEnergy ∧ P.entropyProduction ∧ P.latentHeat

theorem phase_field_thermodynamics_closed_from_evidence (P : PhaseFieldThermodynamicsPackage)
    (E : PhaseFieldThermodynamicsEvidence P) : PhaseFieldThermodynamicsClosed P := by
  exact And.intro E.gibbsFreeEnergyClosed (And.intro E.entropyProductionClosed E.latentHeatClosed)

end DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean
end HautevilleHouse