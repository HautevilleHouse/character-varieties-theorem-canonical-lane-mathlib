import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterVarietiesTheoremCanonicalLaneLean.CharacterVarietiesStructures

namespace HautevilleHouse
namespace CharacterVarietiesTheoremCanonicalLaneLean

structure MorphismObject (G : Type u) [Group G] (Σ : Type v) [Finite Σ]
    (V : CharacterVarietyObject G Σ) (W : CharacterVarietyObject G Σ) where
  map : V.representationVariety → W.representationVariety
  ringHom : V.characterRing →+* W.characterRing
  compatibility : Prop
  compatibilityTerm : compatibility

structure MorphismEvidence (G : Type u) [Group G] (Σ : Type v) [Finite Σ]
    (V W : CharacterVarietyObject G Σ) (M : MorphismObject G Σ V W) where
  compatibilityClosed : M.compatibility

def MorphismClosed (G : Type u) [Group G] (Σ : Type v) [Finite Σ]
    (V W : CharacterVarietyObject G Σ) (M : MorphismObject G Σ V W) : Prop :=
  M.compatibility

theorem morphism_closed_from_evidence (G : Type u) [Group G] (Σ : Type v) [Finite Σ]
    (V W : CharacterVarietyObject G Σ) (M : MorphismObject G Σ V W)
    (E : MorphismEvidence G Σ V W M) : MorphismClosed G Σ V W M :=
  E.compatibilityClosed

end CharacterVarietiesTheoremCanonicalLaneLean
end HautevilleHouse