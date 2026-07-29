import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterVarietiesTheoremCanonicalLaneLean

structure CharacterVarietyObject where
  representationSpace : Type u
  characterRing : Type v
  characterVariety : Type w
  closedIrreducible : Prop
  smoothPoint : Prop
  conclusion : closedIrreducible ∧ smoothPoint

structure AdmissibleClass where
  object : CharacterVarietyObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CharacterVarietyClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CharacterVarietiesTheoremCanonicalLaneLean
end HautevilleHouse