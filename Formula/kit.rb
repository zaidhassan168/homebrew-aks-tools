class Kit < Formula
  desc "Kubernetes Interactive Toolkit for Azure Kubernetes Service (AKS)"
  homepage "https://github.com/zaidhassan168/aks-tools"
  url "https://github.com/zaidhassan168/aks-tools/archive/refs/tags/v1.3.1.tar.gz"
  sha256 "90a82fcff009d61a74ea04d070b2b8d0303a7cfd38807a85febf6de8bb8abee0"
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
