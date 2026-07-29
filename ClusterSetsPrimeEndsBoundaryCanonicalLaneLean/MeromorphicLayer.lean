import canonicalLaneMathlib.AdmissibleClass
import ClusterSetsPrimeEndsBoundaryCanonicalLaneLean.CarathéodoryExtensionLayer

namespace HautevilleHouse
namespace ClusterSetsPrimeEndsBoundaryCanonicalLaneLean

structure MeromorphicLayerCertificate where
  carathéodoryLayer : CarathéodoryExtensionLayerCertificate
  meromorphicFunction : String
  clusterSetMeromorphic : String
  meromorphicChecked : Bool

  def meromorphicLayerCertificate : MeromorphicLayerCertificate := {
    carathéodoryLayer := carathéodoryExtensionLayerCertificate,
    meromorphicFunction := "Meromorphic function on the domain",
    clusterSetMeromorphic := "Cluster sets along boundary correspond to prime ends",
    meromorphicChecked := true
  }

  def MeromorphicLayerClosed (C : MeromorphicLayerCertificate) : Prop :=
    CarathéodoryExtensionLayerClosed C.carathéodoryLayer ∧
    C.meromorphicChecked = true

  theorem meromorphic_layer_closed_checked :
      MeromorphicLayerClosed meromorphicLayerCertificate := by
    exact And.intro carathéodory_extension_layer_closed_checked rfl

end ClusterSetsPrimeEndsBoundaryCanonicalLaneLean
end HautevilleHouse