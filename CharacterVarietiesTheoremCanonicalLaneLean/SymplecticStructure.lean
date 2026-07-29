import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterVarietiesTheoremCanonicalLaneLean

structure SymplecticStructure (M : Type u) where
  manifold : M
  symplecticForm : M → M → ℝ
  closed : Prop
  nondegenerate : Prop

def SymplecticStructureClosed (S : SymplecticStructure M) : Prop :=
  S.closed ∧ S.nondegenerate

theorem symplecticStructure_closed (S : SymplecticStructure M) (hClosed : S.closed) (hNondeg : S.nondegenerate) :
    SymplecticStructureClosed S := by
  exact And.intro hClosed hNondeg

end HautevilleHouse
end CharacterVarietiesTheoremCanonicalLaneLean