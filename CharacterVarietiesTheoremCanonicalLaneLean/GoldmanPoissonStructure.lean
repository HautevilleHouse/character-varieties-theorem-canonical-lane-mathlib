import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterVarietiesTheoremCanonicalLaneLean.SymplecticStructure
import HautevilleHouse.CharacterVarietiesTheoremCanonicalLaneLean.CharacterVariety

namespace HautevilleHouse
namespace CharacterVarietiesTheoremCanonicalLaneLean

structure GoldmanPoissonStructure (G : Type u) (X : Type v) (V : CharacterVariety G X) where
  variety : V
  symplectic : SymplecticStructure (CharacterVariety G X)
  poissonBracket : (CharacterVariety G X → ℝ) → (CharacterVariety G X → ℝ) → (CharacterVariety G X → ℝ)
  inducesSymplecticForm : Prop
  jacobiIdentity : Prop

def GoldmanPoissonStructureClosed (P : GoldmanPoissonStructure G X V) : Prop :=
  P.inducesSymplecticForm ∧ P.jacobiIdentity

theorem goldmanPoissonStructure_closed (P : GoldmanPoissonStructure G X V) (hInd : P.inducesSymplecticForm) (hJacobi : P.jacobiIdentity) :
    GoldmanPoissonStructureClosed P := by
  exact And.intro hInd hJacobi

end HautevilleHouse
end CharacterVarietiesTheoremCanonicalLaneLean