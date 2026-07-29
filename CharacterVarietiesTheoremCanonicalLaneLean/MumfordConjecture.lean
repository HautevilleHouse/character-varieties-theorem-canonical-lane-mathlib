import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterVarietiesTheoremCanonicalLaneLean

structure MumfordConjecturePackage (G : Type u) (n : Nat) (R : RepresentationSpacePackage G n) (C : CharacterRingPackage R) where
  galoisAction : Prop
  finiteField : Type u
  frobeniusFixedPoints : Prop
  weilConjecturesForCharacterVarieties : Prop
  galoisActionClosed : galoisAction
  frobeniusFixedPointsClosed : frobeniusFixedPoints
  weilConjecturesClosed : weilConjecturesForCharacterVarieties

structure MumfordConjectureEvidence (G : Type u) (n : Nat) (R : RepresentationSpacePackage G n) (C : CharacterRingPackage R) (M : MumfordConjecturePackage G n R C) where
  galoisActionClosed : M.galoisAction
  frobeniusFixedPointsClosed : M.frobeniusFixedPoints
  weilConjecturesClosed : M.weilConjecturesForCharacterVarieties

def MumfordConjectureClosed (G : Type u) (n : Nat) (R : RepresentationSpacePackage G n) (C : CharacterRingPackage R) (M : MumfordConjecturePackage G n R C) : Prop :=
  M.galoisAction ∧ M.frobeniusFixedPoints ∧ M.weilConjecturesForCharacterVarieties

theorem mumford_conjecture_closed_from_evidence
    (G : Type u) (n : Nat) (R : RepresentationSpacePackage G n) (C : CharacterRingPackage R) (M : MumfordConjecturePackage G n R C) (E : MumfordConjectureEvidence G n R C M) :
    MumfordConjectureClosed G n R C M := by
  exact And.intro E.galoisActionClosed (And.intro E.frobeniusFixedPointsClosed E.weilConjecturesClosed)

end CharacterVarietiesTheoremCanonicalLaneLean
end HautevilleHouse