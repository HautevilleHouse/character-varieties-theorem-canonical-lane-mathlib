import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterVarietiesTheoremCanonicalLaneLean.CharacterVarieties

namespace HautevilleHouse
namespace CharacterVarietiesTheoremCanonicalLaneLean

structure CharacterVarietiesAdmittedObject where
  variety : CharacterVarietyPackage
  evidence : CharacterVarietyEvidence variety
  endpoint : Prop
  remainder : Prop
  witness : endpoint ∨ remainder

structure CharacterVarietiesAdmissibleClass where
  object : CharacterVarietiesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end CharacterVarietiesTheoremCanonicalLaneLean
end HautevilleHouse