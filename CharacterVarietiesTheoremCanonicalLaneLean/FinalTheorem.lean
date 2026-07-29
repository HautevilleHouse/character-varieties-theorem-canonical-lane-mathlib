import HautevilleHouse.CharacterVarietiesTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CharacterVarietiesTheoremCanonicalLaneLean

def ConstrainedCharacterVarietiesClosure (A : CharacterVarietiesAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_character_varieties_endgame (A : CharacterVarietiesAdmissibleClass) :
    ConstrainedCharacterVarietiesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CharacterVarietiesTheoremCanonicalLaneLean
end HautevilleHouse