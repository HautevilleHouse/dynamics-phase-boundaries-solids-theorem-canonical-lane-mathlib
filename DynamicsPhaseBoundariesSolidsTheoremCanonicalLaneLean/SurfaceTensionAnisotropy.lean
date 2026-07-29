import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean

structure SurfaceTensionAnisotropy (M : PhaseFieldModel) where
  surfaceEnergy : (ℝ × ℝ × ℝ) → ℝ
  wulffShape : Set (ℝ × ℝ × ℝ)
  anisotropyFactor : ℝ
  equilibriumShapeCondition : Prop

structure AnisotropyEvidence {M : PhaseFieldModel} (A : SurfaceTensionAnisotropy M) where
  surfaceEnergyPositive : ∀ n, A.surfaceEnergy n > 0
  anisotropyFactorPositive : A.anisotropyFactor > 0
  equilibriumShapeConditionClosed : A.equilibriumShapeCondition

def SurfaceTensionClosed {M : PhaseFieldModel} (A : SurfaceTensionAnisotropy M) : Prop :=
  (∀ n, A.surfaceEnergy n > 0) ∧ A.anisotropyFactor > 0 ∧ A.equilibriumShapeCondition

theorem surface_tension_closed_from_evidence {M : PhaseFieldModel} (A : SurfaceTensionAnisotropy M) (E : AnisotropyEvidence A) : SurfaceTensionClosed A :=
  And.intro E.surfaceEnergyPositive (And.intro E.anisotropyFactorPositive E.equilibriumShapeConditionClosed)

end DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean
end HautevilleHouse