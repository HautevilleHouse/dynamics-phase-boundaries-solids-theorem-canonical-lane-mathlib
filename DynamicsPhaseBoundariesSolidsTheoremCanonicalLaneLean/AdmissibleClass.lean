import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean

structure DynamicsPhaseBoundariesAdmittedObject where
  solidMedium : Type u
  phaseFieldModel : Type v
  closureCondition : Prop
  conclusion : closureCondition

structure AdmissibleClass where
  object : DynamicsPhaseBoundariesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DynamicsPhaseBoundariesClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def DynamicsPhaseBoundariesClosed (O : DynamicsPhaseBoundariesAdmittedObject) : Prop :=
  O.closureCondition

end DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean
end HautevilleHouse