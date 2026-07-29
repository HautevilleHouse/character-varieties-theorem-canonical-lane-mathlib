import CharacterVarietiesTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CharacterVarietiesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CharacterVarietySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CharacterVarietyAdmittedObject where
  space : CharacterVarietySpace
  finitelyGeneratedGroup : Prop
  representationVarietyConstructed : Prop
  characterRingConstructed : Prop
  closedCharacterVariety : Prop
  conclusion : closedCharacterVariety

structure CharacterVarietyEndgameState where
  object : CharacterVarietyAdmittedObject

def CharacterVarietyWitnessClosed (O : CharacterVarietyAdmittedObject) : Prop :=
  O.closedCharacterVariety

end CharacterVarietiesTheoremCanonicalLaneLean
end HautevilleHouse