import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterVarietiesTheoremCanonicalLaneLean

structure CharacterVarietyObject where
  representationVariety : Type u
  groupG : Type v
  groupPresentation : Prop
  targetGroup : Type w
  characterMap : representationVariety → (targetGroup → targetGroup)
  closedUnderConjugation : Prop
  traceCoordinatesDefined : Prop
  traceCoordinatesDefinedTerm : traceCoordinatesDefined

structure AdmittedCharacterVarietyObject extends CharacterVarietyObject where
  categoricalQuotientExists : Prop
  closedUnderConjugationTerm : closedUnderConjugation
  categoricalQuotientExistsTerm : categoricalQuotientExists

def CharacterVarietyWitnessClosed (O : AdmittedCharacterVarietyObject) : Prop :=
  O.categoricalQuotientExists ∧ O.closedUnderConjugation

end CharacterVarietiesTheoremCanonicalLaneLean
end HautevilleHouse