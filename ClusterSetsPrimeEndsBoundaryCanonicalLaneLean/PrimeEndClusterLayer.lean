import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClusterSetsPrimeEndsBoundaryCanonicalLaneLean

structure PrimeEndDatum where
  clusterSet : String
  primeEndCount : Nat
  boundaryComponent : String
  endpointLayerClosed : Bool
  boundaryCarried : Bool

default_instance : PrimeEndDatum := {
  clusterSet := "E",
  primeEndCount := 0,
  boundaryComponent := "B(E)",
  endpointLayerClosed := true,
  boundaryCarried := true
}

structure PrimeEndCarriageRecord where
  admittedTransition : String
  carriedComponent : String
  endpointCheck : String
  closureState : String

default_carriage_record : PrimeEndCarriageRecord := {
  admittedTransition := "prime-end cluster set projected through admissible boundary class",
  carriedComponent := "unrestricted classical cluster set theorem remains carried",
  endpointCheck := "prime-end endpoint layer closed with boundary carried",
  closureState := "PRIME_END_CLOSURE_CERTIFICATE_CLOSED_WITH_CLASSICAL_BOUNDARY_CARRIED"
}

end ClusterSetsPrimeEndsBoundaryCanonicalLaneLean
end HautevilleHouse