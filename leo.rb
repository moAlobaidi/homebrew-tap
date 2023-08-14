class Leo < Formula
  desc "Advanced compiler and language for zero-knowledge applications on Aleo"
  homepage "https://www.aleo.org/"
  url "https://github.com/AleoHQ/leo/archive/refs/tags/v1.9.2.zip"
  sha256 "6fea44d9084d1af3f4d99e4f16ef4f4db9eed03f4a17802bcf9d992f36cfb06d"
  license "GPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "leo v1.9.2", shell_output("#{bin}/leo --version")
  end
end
