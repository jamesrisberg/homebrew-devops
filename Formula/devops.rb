class Devops < Formula
  include Language::Python::Virtualenv

  desc "Development Environment Topology Visualizer - TUI for exploring your dev setup"
  homepage "https://github.com/jrisberg/homebrew-devops"
  url "https://github.com/jrisberg/devops/releases/download/v0.1.0/devops-0.1.0.tar.gz"
  sha256 "PLACEHOLDER_SHA256"
  license "MIT"

  depends_on "python@3.12"

  resource "textual" do
    url "https://files.pythonhosted.org/packages/source/t/textual/textual-0.47.0.tar.gz"
    sha256 "PLACEHOLDER_TEXTUAL_SHA256"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/source/r/rich/rich-13.7.0.tar.gz"
    sha256 "PLACEHOLDER_RICH_SHA256"
  end

  resource "pyperclip" do
    url "https://files.pythonhosted.org/packages/source/p/pyperclip/pyperclip-1.8.2.tar.gz"
    sha256 "PLACEHOLDER_PYPERCLIP_SHA256"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/source/m/markdown-it-py/markdown_it_py-3.0.0.tar.gz"
    sha256 "PLACEHOLDER_MARKDOWN_IT_PY_SHA256"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/source/m/mdurl/mdurl-0.1.2.tar.gz"
    sha256 "PLACEHOLDER_MDURL_SHA256"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/source/p/pygments/pygments-2.17.2.tar.gz"
    sha256 "PLACEHOLDER_PYGMENTS_SHA256"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/source/p/platformdirs/platformdirs-4.1.0.tar.gz"
    sha256 "PLACEHOLDER_PLATFORMDIRS_SHA256"
  end

  resource "linkify-it-py" do
    url "https://files.pythonhosted.org/packages/source/l/linkify-it-py/linkify-it-py-2.0.2.tar.gz"
    sha256 "PLACEHOLDER_LINKIFY_IT_PY_SHA256"
  end

  resource "uc-micro-py" do
    url "https://files.pythonhosted.org/packages/source/u/uc-micro-py/uc-micro-py-1.0.2.tar.gz"
    sha256 "PLACEHOLDER_UC_MICRO_PY_SHA256"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Development Environment Topology", shell_output("#{bin}/devops --help")
    assert_match version.to_s, shell_output("#{bin}/devops --version")
  end
end
