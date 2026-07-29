import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClusterSetsPrimeEndsBoundaryCanonicalLaneLean

structure ClusterSetCertificate where
  primeEndLayer : PrimeEndDatum
  bridgeRoute : String
  endpointRoute : String
  classicalComplementCarried : Bool

default_certificate : ClusterSetCertificate := {
  primeEndLayer := {},
  bridgeRoute := "bridge route through admissible class",
  endpointRoute := "endpoint routed via boundary component",
  classicalComplementCarried := true
}

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.gateWitness

end ClusterSetsPrimeEndsBoundaryCanonicalLaneLean
end HautevilleHouse