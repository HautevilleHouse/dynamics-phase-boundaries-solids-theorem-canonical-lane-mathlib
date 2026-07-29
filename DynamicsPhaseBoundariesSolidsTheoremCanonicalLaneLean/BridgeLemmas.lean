import DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DynamicsPhaseBoundariesWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean
end HautevilleHouse