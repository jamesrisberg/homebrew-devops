class Devops < Formula
  include Language::Python::Virtualenv

  desc "Development Environment Topology Visualizer - TUI for exploring your dev setup"
  homepage "https://github.com/jrisberg/devops"
  url "https://github.com/jrisberg/devops/releases/download/v0.1.0/devops-0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "python@3.12"

  resource "textual" do
    url "https://files.pythonhosted.org/packages/source/t/textual/textual-0.47.0.tar.gz"
    sha256 "613912041aa8739e4ef728bb298b6d00f2bfe3fe528ac64bc0ccc06f4ff656e0"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/source/r/rich/rich-13.7.0.tar.gz"
    sha256 "5cb5123b5cf9ee70584244246816e9114227e0b98ad9176eede6ad54bf5403fa"
  end

  resource "pyperclip" do
    url "https://files.pythonhosted.org/packages/source/p/pyperclip/pyperclip-1.8.2.tar.gz"
    sha256 "105254a8b04934f0bc84e9c24eb360a591aaf6535c9def5f29d92af107a9bf57"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/source/m/markdown-it-py/markdown_it_py-3.0.0.tar.gz"
    sha256 "e3f60a94fa066dc52ec76661e37c851cb232d92f9886b15cb560aaada2df8feb"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/source/m/mdurl/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/source/p/pygments/pygments-2.17.2.tar.gz"
    sha256 "da46cec9fd2de5be3a8a784f434e4c4ab670b4ff54d605c4c2717e9d49c4c367"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/source/p/platformdirs/platformdirs-4.1.0.tar.gz"
    sha256 "906d548203468492d432bcb294d4bc2fff751bf84971fbb2c10918cc206ee420"
  end

  resource "linkify-it-py" do
    url "https://files.pythonhosted.org/packages/source/l/linkify-it-py/linkify-it-py-2.0.2.tar.gz"
    sha256 "19f3060727842c254c808e99d465c80c49d2c7306788140987a1a7a29b0d6ad2"
  end

  resource "uc-micro-py" do
    url "https://files.pythonhosted.org/packages/source/u/uc-micro-py/uc-micro-py-1.0.2.tar.gz"
    sha256 "30ae2ac9c49f39ac6dce743bd187fcd2b574b16ca095fa74cd9396795c954c54"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Development Environment Topology", shell_output("#{bin}/devops --help")
    assert_match version.to_s, shell_output("#{bin}/devops --version")
  end
end
