import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterVarietiesTheoremCanonicalLaneLean.CharacterVarietiesStructures

namespace HautevilleHouse
namespace CharacterVarietiesTheoremCanonicalLaneLean

structure RepresentationVarietyObject (G : Type u) [Group G] (H : Type v) [TopologicalSpace H] [Group H] where
  representationSpace : Type w
  topology : TopologicalSpace representationSpace
  homomorphisms : Set (G → H)
  closedUnderConjugation : Prop
  algebraicSet : Prop
  closedUnderConjugationTerm : closedUnderConjugation
  algebraicSetTerm : algebraicSet

structure RepresentationVarietyEvidence (G : Type u) [Group G] (H : Type v) [TopologicalSpace H] [Group H]
    (R : RepresentationVarietyObject G H) where
  closedUnderConjugationClosed : R.closedUnderConjugation
  algebraicSetClosed : R.algebraicSet

def RepresentationVarietyClosed (G : Type u) [Group G] (H : Type v) [TopologicalSpace H] [Group H]
    (R : RepresentationVarietyObject G H) : Prop :=
  R.closedUnderConjugation ∧ R.algebraicSet

theorem representation_variety_closed_from_evidence (G : Type u) [Group G] (H : Type v) [TopologicalSpace H] [Group H]
    (R : RepresentationVarietyObject G H) (E : RepresentationVarietyEvidence G H R) :
    RepresentationVarietyClosed G H R :=
  And.intro E.closedUnderConjugationClosed E.algebraicSetClosed

end CharacterVarietiesTheoremCanonicalLaneLean
end HautevilleHouse