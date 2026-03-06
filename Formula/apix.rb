class Apix < Formula
  desc "API vault CLI"
  homepage "https://github.com/apix-sh/cli"
  url "https://github.com/apix-sh/cli/archive/refs/tags/v0.1.8.tar.gz"
  sha256 "1b17325939c6f6feca4c4a17fad97ddbffe5589d43ac0687b954997d7d03607b"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "apix", shell_output("#{bin}/apix --version")
  end
end
