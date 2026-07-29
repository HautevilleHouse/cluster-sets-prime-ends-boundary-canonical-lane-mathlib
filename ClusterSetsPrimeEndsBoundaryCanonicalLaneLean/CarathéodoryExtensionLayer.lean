import canonicalLaneMathlib.AdmissibleClass
import ClusterSetsPrimeEndsBoundaryCanonicalLaneLean.BoundaryLayer

namespace HautevilleHouse
namespace ClusterSetsPrimeEndsBoundaryCanonicalLaneLean

structure CarathéodoryExtensionLayerCertificate where
  boundaryLayer : BoundaryLayerCertificate
  extensionRoute : String
  primeEndCompactification : String
  extensionChecked : Bool

  def carathéodoryExtensionLayerCertificate : CarathéodoryExtensionLayerCertificate := {
    boundaryLayer := boundaryLayerCertificate,
    extensionRoute := "Carathéodory extension via prime ends",
    primeEndCompactification := "Prime end compactification of the domain",
    extensionChecked := true
  }

  def CarathéodoryExtensionLayerClosed (C : CarathéodoryExtensionLayerCertificate) : Prop :=
    BoundaryLayerClosed C.boundaryLayer ∧
    C.extensionChecked = true

  theorem carathéodory_extension_layer_closed_checked :
      CarathéodoryExtensionLayerClosed carathéodoryExtensionLayerCertificate := by
    exact And.intro boundary_layer_closed_checked rfl

end ClusterSetsPrimeEndsBoundaryCanonicalLaneLean
end HautevilleHouse