import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterVarietiesTheoremCanonicalLaneLean.CharacterVariety

namespace HautevilleHouse
namespace CharacterVarietiesTheoremCanonicalLaneLean

structure HitchinComponent (G : Type u) (X : Type v) (V : CharacterVariety G X) where
  component : Set (CharacterVariety G X)
  containsV : V ∈ component
  topologicallyClosed : Prop
  smoothSubmanifold : Prop

def HitchinComponentClosed (H : HitchinComponent G X V) : Prop :=
  H.topologicallyClosed ∧ H.smoothSubmanifold

theorem hitchinComponent_closed (H : HitchinComponent G X V) (hTop : H.topologicallyClosed) (hSmooth : H.smoothSubmanifold) :
    HitchinComponentClosed H := by
  exact And.intro hTop hSmooth

end HautevilleHouse
end CharacterVarietiesTheoremCanonicalLaneLean