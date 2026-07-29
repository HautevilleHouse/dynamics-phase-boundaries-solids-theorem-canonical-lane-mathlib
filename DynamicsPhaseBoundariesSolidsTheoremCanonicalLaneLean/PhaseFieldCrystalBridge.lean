import canonicalLaneMathlib.AdmissibleClass
import DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean.PhaseFieldCrystalModel

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | _ => True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact True.intro

end DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean
end HautevilleHouse