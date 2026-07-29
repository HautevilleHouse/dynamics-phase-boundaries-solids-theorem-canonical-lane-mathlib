import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean.SharpInterfaceLimit

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean

structure MushyZoneModel where
  temperatureField : Type u
  soluteField : Type v
  phaseFieldCoupling : Prop
  latentHeat : ℝ
  thermalDiffusivity : ℝ

structure MushyZoneEvidence (M : MushyZoneModel) where
  couplingClosed : M.phaseFieldCoupling
  latentHeatPos : M.latentHeat > 0
  thermalDiffusivityPos : M.thermalDiffusivity > 0

def MushyZoneClosed (M : MushyZoneModel) : Prop :=
  M.phaseFieldCoupling ∧ M.latentHeat > 0 ∧ M.thermalDiffusivity > 0

theorem mushy_zone_closed_from_evidence (M : MushyZoneModel)
    (E : MushyZoneEvidence M) : MushyZoneClosed M :=
  And.intro E.couplingClosed
    (And.intro E.latentHeatPos E.thermalDiffusivityPos)

end DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean
end HautevilleHouse