import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean

structure SharpInterfaceAsymptoticsPackage where
  interfaceWidth : ℝ
  surfaceTension : ℝ
  mobility : ℝ
  curvatureDriven : Prop
  anisotropy : Prop
  asymptoticExpansion : Prop
  curvatureDrivenTerm : curvatureDriven
  anisotropyTerm : anisotropy
  asymptoticExpansionTerm : asymptoticExpansion

structure SharpInterfaceAsymptoticsEvidence (S : SharpInterfaceAsymptoticsPackage) where
  curvatureDrivenClosed : S.curvatureDriven
  anisotropyClosed : S.anisotropy
  asymptoticExpansionClosed : S.asymptoticExpansion

def SharpInterfaceAsymptoticsClosed (S : SharpInterfaceAsymptoticsPackage) : Prop :=
  S.curvatureDriven ∧ S.anisotropy ∧ S.asymptoticExpansion

theorem sharp_interface_asymptotics_closed_from_evidence
    (S : SharpInterfaceAsymptoticsPackage)
    (E : SharpInterfaceAsymptoticsEvidence S) : SharpInterfaceAsymptoticsClosed S := by
  exact And.intro E.curvatureDrivenClosed
    (And.intro E.anisotropyClosed E.asymptoticExpansionClosed)

end DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean
end HautevilleHouse