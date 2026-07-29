import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterVarietiesTheoremCanonicalLaneLean

structure CharacterVarietyPackage where
  group : Type u
  representationSpace : Type v
  groupAlgebraAction : Prop
  quotientByConjugation : Prop
  characterRing : Prop
  closedSetInAffine : Prop

structure CharacterVarietyEvidence (P : CharacterVarietyPackage) where
  groupAlgebraActionClosed : P.groupAlgebraAction
  quotientByConjugationClosed : P.quotientByConjugation
  characterRingClosed : P.characterRing
  closedSetInAffineClosed : P.closedSetInAffine

def CharacterVarietyClosed (P : CharacterVarietyPackage) : Prop :=
  P.groupAlgebraAction ∧ P.quotientByConjugation ∧
  P.characterRing ∧ P.closedSetInAffine

theorem character_variety_closed_from_evidence
    (P : CharacterVarietyPackage) (E : CharacterVarietyEvidence P) :
    CharacterVarietyClosed P := by
  exact And.intro E.groupAlgebraActionClosed
    (And.intro E.quotientByConjugationClosed
      (And.intro E.characterRingClosed E.closedSetInAffineClosed))

end CharacterVarietiesTheoremCanonicalLaneLean
end HautevilleHouse