class Apix < Formula
  desc "API vault CLI"
  homepage "https://github.com/apix-sh/cli"
  url "https://github.com/apix-sh/cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "564a2c74cedd9beac7dca177e2d882c82d90b90db3759440d517ec5525ce8657"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "apix", shell_output("#{bin}/apix --version")
  end
end
