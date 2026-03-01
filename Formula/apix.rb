class Apix < Formula
  desc "API vault CLI"
  homepage "https://github.com/apix-sh/cli"
  url "https://github.com/apix-sh/cli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "812cf1bd550862c30cba5a199c088bb7cfa4d6763321f4fee58ee29230616e6a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "apix", shell_output("#{bin}/apix --version")
  end
end
