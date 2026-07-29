import DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean

structure DynamicsPhaseBoundariesSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DynamicsPhaseBoundariesAdmittedObject where
  space : DynamicsPhaseBoundariesSpace
  phaseBoundaryMotion : Prop
  solidMechanicsCoupling : Prop
  domainModel : Type
  domainTopology : TopologicalSpace domainModel
  boundaryEvolutionClosed : Prop
  conclusion : boundaryEvolutionClosed

def DynamicsPhaseBoundariesWitnessClosed (O : DynamicsPhaseBoundariesAdmittedObject) : Prop :=
  O.boundaryEvolutionClosed

end DynamicsPhaseBoundariesSolidsTheoremCanonicalLaneLean
end HautevilleHouse