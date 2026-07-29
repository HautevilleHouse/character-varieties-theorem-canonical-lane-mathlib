import HautevilleHouse.CharacterVarietiesTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CharacterVarietiesTheoremCanonicalLaneLean

def gateClosed (A : CharacterVarietiesAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : CharacterVarietiesAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CharacterVarietiesTheoremCanonicalLaneLean
end HautevilleHouse