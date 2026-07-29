import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterVarietiesTheoremCanonicalLaneLean.CharacterVariety

namespace HautevilleHouse
namespace CharacterVarietiesTheoremCanonicalLaneLean

structure MappingClassGroupAction (G : Type u) (X : Type v) (S : Type w) where
  surface : S
  mappingClassGroup : Type u
  action : mappingClassGroup → CharacterVariety G X → CharacterVariety G X
  preservesSymplectic : Prop
  ergodic : Prop

def MappingClassGroupActionClosed (M : MappingClassGroupAction G X S) : Prop :=
  M.preservesSymplectic ∧ M.ergodic

theorem mappingClassGroupAction_closed (M : MappingClassGroupAction G X S) (hPres : M.preservesSymplectic) (hErg : M.ergodic) :
    MappingClassGroupActionClosed M := by
  exact And.intro hPres hErg

end HautevilleHouse
end CharacterVarietiesTheoremCanonicalLaneLean