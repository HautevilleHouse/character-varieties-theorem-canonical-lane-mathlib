import canonicalLaneMathlib.CanonicalLaneMathlibCore
import HautevilleHouse.CharacterVarietiesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CharacterVarietiesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CharacterVarietiesEndgameState where
  object : AdmittedCharacterVarietyObject

def characterVarietiesProjection : Projection CharacterVarietiesEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem character_varieties_projection_idempotent (x : CharacterVarietiesEndgameState) :
    characterVarietiesProjection.toFun (characterVarietiesProjection.toFun x) = characterVarietiesProjection.toFun x := by
  exact characterVarietiesProjection.idempotent x

end CharacterVarietiesTheoremCanonicalLaneLean
end HautevilleHouse