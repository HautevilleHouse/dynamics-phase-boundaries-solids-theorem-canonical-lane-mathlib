import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean.SolidificationMushyZone

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean

structure DendriteGrowth where
  tipVelocity : ℝ
  tipRadius : ℝ
  anisotropyStrength : ℝ
  stabilityCriterion : Prop

structure DendriteEvidence (D : DendriteGrowth) where
  tipVelocityPos : D.tipVelocity > 0
  tipRadiusPos : D.tipRadius > 0
  anisotropyStrengthPos : D.anisotropyStrength > 0
  stabilityClosed : D.stabilityCriterion

def DendriteClosed (D : DendriteGrowth) : Prop :=
  D.tipVelocity > 0 ∧ D.tipRadius > 0 ∧ D.anisotropyStrength > 0 ∧ D.stabilityCriterion

theorem dendrite_closed_from_evidence (D : DendriteGrowth)
    (E : DendriteEvidence D) : DendriteClosed D :=
  And.intro E.tipVelocityPos
    (And.intro E.tipRadiusPos (And.intro E.anisotropyStrengthPos E.stabilityClosed))

end DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean
end HautevilleHouse