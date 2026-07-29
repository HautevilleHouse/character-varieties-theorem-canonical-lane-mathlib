import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterVarietiesTheoremCanonicalLaneLean

structure CharacterRingPackage (R : RepresentationSpacePackage G n) where
  ringType : Type u
  traceFunctions : Type v
  ringOperationsClosed : Prop
  tracePolynomialAlgebra : Prop
  coordinateRingCharacterVariety : Prop
  ringOperationsClosedTerm : ringOperationsClosed
  tracePolynomialAlgebraTerm : tracePolynomialAlgebra
  coordinateRingCharacterVarietyTerm : coordinateRingCharacterVariety

structure CharacterRingEvidence (R : RepresentationSpacePackage G n) (C : CharacterRingPackage R) where
  ringOperationsClosedClosed : C.ringOperationsClosed
  tracePolynomialAlgebraClosed : C.tracePolynomialAlgebra
  coordinateRingCharacterVarietyClosed : C.coordinateRingCharacterVariety

def CharacterRingClosed (R : RepresentationSpacePackage G n) (C : CharacterRingPackage R) : Prop :=
  C.ringOperationsClosed ∧ C.tracePolynomialAlgebra ∧ C.coordinateRingCharacterVariety

theorem character_ring_closed_from_evidence
    (R : RepresentationSpacePackage G n) (C : CharacterRingPackage R) (E : CharacterRingEvidence R C) :
    CharacterRingClosed R C := by
  exact And.intro E.ringOperationsClosedClosed (And.intro E.tracePolynomialAlgebraClosed E.coordinateRingCharacterVarietyClosed)

end CharacterVarietiesTheoremCanonicalLaneLean
end HautevilleHouse