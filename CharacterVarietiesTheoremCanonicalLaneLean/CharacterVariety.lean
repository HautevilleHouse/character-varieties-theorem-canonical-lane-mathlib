import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterVarietiesTheoremCanonicalLaneLean

structure CharacterVariety (G : Type u) (X : Type v) where
  group : G
  space : X
  representation : G → (X → X)
  holonomy : Prop
  smoothStructure : Prop

structure CharacterVarietyEvidence (V : CharacterVariety G X) where
  holonomyClosed : V.holonomy
  smoothStructureClosed : V.smoothStructure

def CharacterVarietyClosed (V : CharacterVariety G X) : Prop :=
  V.holonomy ∧ V.smoothStructure

theorem characterVarietyClosed_from_evidence (V : CharacterVariety G X) (E : CharacterVarietyEvidence V) :
    CharacterVarietyClosed V := by
  exact And.intro E.holonomyClosed E.smoothStructureClosed

end HautevilleHouse
end CharacterVarietiesTheoremCanonicalLaneLean