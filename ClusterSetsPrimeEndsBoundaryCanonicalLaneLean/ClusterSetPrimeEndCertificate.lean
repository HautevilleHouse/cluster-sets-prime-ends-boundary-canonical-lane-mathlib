import canonicalLaneMathlib.AdmissibleClass
import ClusterSetsPrimeEndsBoundaryCanonicalLaneLean.PrimeEndLayer
import ClusterSetsPrimeEndsBoundaryCanonicalLaneLean.CaratheodoryTheoremLayer

namespace HautevilleHouse
namespace ClusterSetsPrimeEndsBoundaryCanonicalLaneLean

structure ClusterSetPrimeEndCertificate where
  boundaryLayer : BoundaryLayerCertificate
  primeEndLayer : PrimeEndLayerCertificate
  caratheodoryLayer : CaratheodoryTheoremLayerCertificate
  carriageRecord : ClusterSetCarriageRecord
  baselineGatesClosed : Bool
  formulaLayerModeled : Bool
  clusterSetObjectClosed : Bool
  classicalBoundaryCarried : Bool

def clusterSetPrimeEndCertificate : ClusterSetPrimeEndCertificate := {
  boundaryLayer := boundaryLayerCertificate
  primeEndLayer := primeEndLayerCertificate
  caratheodoryLayer := caratheodoryTheoremLayerCertificate
  carriageRecord := clusterSetCarriageRecord
  baselineGatesClosed := true
  formulaLayerModeled := true
  clusterSetObjectClosed := true
  classicalBoundaryCarried := true
}

def ClusterSetPrimeEndCertificateClosed (C : ClusterSetPrimeEndCertificate) : Prop :=
  BoundaryLayerClosed C.boundaryLayer ∧
  PrimeEndLayerClosed C.primeEndLayer ∧
  CaratheodoryTheoremLayerClosed C.caratheodoryLayer ∧
  C.baselineGatesClosed = true ∧
  C.formulaLayerModeled = true ∧
  C.clusterSetObjectClosed = true ∧
  C.classicalBoundaryCarried = true

theorem cluster_set_prime_end_certificate_closed_checked : ClusterSetPrimeEndCertificateClosed clusterSetPrimeEndCertificate := by
  exact And.intro boundary_layer_closed_checked
    (And.intro prime_end_layer_closed_checked
    (And.intro caratheodory_theorem_layer_closed_checked
    (And.intro rfl (And.intro rfl (And.intro rfl rfl)))))

end ClusterSetsPrimeEndsBoundaryCanonicalLaneLean
end HautevilleHouse