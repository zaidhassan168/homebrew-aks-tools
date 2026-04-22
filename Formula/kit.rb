class Kit < Formula
  desc "Kubernetes Interactive Toolkit for Azure Kubernetes Service (AKS)"
  homepage "https://github.com/zaidhassan168/aks-tools"
  url "https://github.com/zaidhassan168/aks-tools/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "79c115b05a15eaa642985807f7989ca50d51d25b6ac7f2236099f3d543c0db43"
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
