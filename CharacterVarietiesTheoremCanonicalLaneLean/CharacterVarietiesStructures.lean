import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterVarietiesTheoremCanonicalLaneLean

structure CharacterVarietyObject (G : Type u) [Group G] (Σ : Type v) [Finite Σ] where
  representationVariety : Type w
  characterRing : Type x
  algClosed : Prop
  reduced : Prop
  irreducibleComponents : List (Type w)
  algClosedTerm : algClosed
  reducedTerm : reduced

structure CharacterVarietyEvidence (G : Type u) [Group G] (Σ : Type v) [Finite Σ] (V : CharacterVarietyObject G Σ) where
  algClosedClosed : V.algClosed
  reducedClosed : V.reduced

def CharacterVarietyClosed (G : Type u) [Group G] (Σ : Type v) [Finite Σ] (V : CharacterVarietyObject G Σ) : Prop :=
  V.algClosed ∧ V.reduced

theorem character_variety_closed_from_evidence (G : Type u) [Group G] (Σ : Type v) [Finite Σ] (V : CharacterVarietyObject G Σ)
    (E : CharacterVarietyEvidence G Σ V) : CharacterVarietyClosed G Σ V :=
  And.intro E.algClosedClosed E.reducedClosed

end CharacterVarietiesTheoremCanonicalLaneLean
end HautevilleHouse