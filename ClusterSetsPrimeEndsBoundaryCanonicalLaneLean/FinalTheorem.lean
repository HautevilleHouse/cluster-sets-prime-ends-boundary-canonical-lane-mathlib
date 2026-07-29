import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClusterSetsPrimeEndsBoundaryCanonicalLaneLean

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ A.endpointSatisfied ∨ A.remainderRecorded

theorem constrained_theorem_closure (A : AdmissibleClass) :
    ConstrainedTheoremClosure A :=
  And.intro (bridge_from_admissible_class A) A.gateWitness

end ClusterSetsPrimeEndsBoundaryCanonicalLaneLean
end HautevilleHouse