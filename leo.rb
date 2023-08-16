class Leo < Formula
  desc "Advanced compiler and language for zero-knowledge applications on Aleo"
  homepage "https://www.aleo.org/"
  url "https://github.com/AleoHQ/leo/archive/refs/tags/v1.9.3.zip"
  sha256 "c78c138d00fba5184aaf0a1338ce22a333213f3f57f3086e63efa425dd0f9330"
  license "GPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "leo v1.9.3", shell_output("#{bin}/leo --version")
  end
end
