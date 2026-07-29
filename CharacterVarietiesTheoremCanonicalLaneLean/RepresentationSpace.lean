import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterVarietiesTheoremCanonicalLaneLean

structure RepresentationSpacePackage (G : Type u) (n : Nat) where
  group : Type u
  targetGroup : Type v
  representation : group → targetGroup
  irreducible : Prop
  smoothDeformation : Prop
  zariskiClosure : Prop
  irreducibleClosed : irreducible
  smoothDeformationClosed : smoothDeformation
  zariskiClosureClosed : zariskiClosure

structure RepresentationSpaceEvidence (G : Type u) (n : Nat) (R : RepresentationSpacePackage G n) where
  irreducibleClosed : R.irreducible
  smoothDeformationClosed : R.smoothDeformation
  zariskiClosureClosed : R.zariskiClosure

def RepresentationSpaceClosed (G : Type u) (n : Nat) (R : RepresentationSpacePackage G n) : Prop :=
  R.irreducible ∧ R.smoothDeformation ∧ R.zariskiClosure

theorem representation_space_closed_from_evidence
    (G : Type u) (n : Nat) (R : RepresentationSpacePackage G n) (E : RepresentationSpaceEvidence G n R) :
    RepresentationSpaceClosed G n R := by
  exact And.intro E.irreducibleClosed (And.intro E.smoothDeformationClosed E.zariskiClosureClosed)

end CharacterVarietiesTheoremCanonicalLaneLean
end HautevilleHouse