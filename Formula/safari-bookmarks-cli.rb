class SafariBookmarksCli < Formula
  include Language::Python::Virtualenv

  desc "Manage bookmarks in the Safari web browser"
  homepage "https://github.com/evilmarty/safari-bookmarks-cli"
  url "https://files.pythonhosted.org/packages/b6/59/4a017fa9f078b4b47f21fe1619272c31eff98033cad25e0f72e476f11a88/safari_bookmarks_cli-0.6.2.tar.gz"
  sha256 "11cf2d8fcb7ba74f311eccdd5837b9db95eb2163c3a24182f00fc7996a5a1aab"
  license "Apache-2.0"

  depends_on "rust" => :build
  depends_on :macos
  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/safari-bookmarks --version")
  end
end
