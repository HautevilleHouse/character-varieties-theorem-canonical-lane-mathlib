import HautevilleHouse.CharacterVarietiesTheoremCanonicalLaneLean.CharacterVarietiesAdmissibleClass

namespace HautevilleHouse
namespace CharacterVarietiesTheoremCanonicalLaneLean

def bridgeClosed (A : CharacterVarietiesAdmissibleClass) : Prop :=
  A.object.variety.closedSetInAffine

theorem bridge_from_admissible_class (A : CharacterVarietiesAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.evidence.closedSetInAffineClosed

end CharacterVarietiesTheoremCanonicalLaneLean
end HautevilleHouse