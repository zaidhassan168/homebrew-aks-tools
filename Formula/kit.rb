class Kit < Formula
  desc "Kubernetes Interactive Toolkit for Azure Kubernetes Service (AKS)"
  homepage "https://github.com/zaidhassan168/aks-tools"
  url "https://github.com/zaidhassan168/aks-tools/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "4b551d1e8d1081e939c431a691149dbc1bb0fa6cd92cc30e831270d89751f73f"
  license "MIT"

  depends_on "azure-cli"
  depends_on "kubernetes-cli"
  depends_on "python@3.12"
  depends_on "fzf" => :recommended

  def install
    bin.install "kit/kit"
  end

  test do
    assert_match "Kubernetes Interactive Toolkit", shell_output("#{bin}/kit --help")
  end
end
