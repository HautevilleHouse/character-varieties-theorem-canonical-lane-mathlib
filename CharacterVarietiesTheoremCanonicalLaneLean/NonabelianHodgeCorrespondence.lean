import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterVarietiesTheoremCanonicalLaneLean

structure NonabelianHodgeCorrespondencePackage (G : Type u) (n : Nat) (R : RepresentationSpacePackage G n) (C : CharacterRingPackage R) (M : MumfordConjecturePackage G n R C) where
  higgsBundle : Type u
  flatConnection : Type v
  correspondenceMap : Type w
  equivalenceOfCategories : Prop
  deRhamCohomology : Prop
  equivalentlyCharacterVariety : Prop
  equivalenceOfCategoriesClosed : equivalenceOfCategories
  deRhamCohomologyClosed : deRhamCohomology
  equivalentlyCharacterVarietyClosed : equivalentlyCharacterVariety

structure NonabelianHodgeCorrespondenceEvidence
    (G : Type u) (n : Nat) (R : RepresentationSpacePackage G n) (C : CharacterRingPackage R) (M : MumfordConjecturePackage G n R C)
    (H : NonabelianHodgeCorrespondencePackage G n R C M) where
  equivalenceOfCategoriesClosed : H.equivalenceOfCategories
  deRhamCohomologyClosed : H.deRhamCohomology
  equivalentlyCharacterVarietyClosed : H.equivalentlyCharacterVariety

def NonabelianHodgeCorrespondenceClosed
    (G : Type u) (n : Nat) (R : RepresentationSpacePackage G n) (C : CharacterRingPackage R) (M : MumfordConjecturePackage G n R C)
    (H : NonabelianHodgeCorrespondencePackage G n R C M) : Prop :=
  H.equivalenceOfCategories ∧ H.deRhamCohomology ∧ H.equivalentlyCharacterVariety

theorem nonabelian_hodge_correspondence_closed_from_evidence
    (G : Type u) (n : Nat) (R : RepresentationSpacePackage G n) (C : CharacterRingPackage R) (M : MumfordConjecturePackage G n R C)
    (H : NonabelianHodgeCorrespondencePackage G n R C M) (E : NonabelianHodgeCorrespondenceEvidence G n R C M H) :
    NonabelianHodgeCorrespondenceClosed G n R C M H := by
  exact And.intro E.equivalenceOfCategoriesClosed (And.intro E.deRhamCohomologyClosed E.equivalentlyCharacterVarietyClosed)

end CharacterVarietiesTheoremCanonicalLaneLean
end HautevilleHouse