class Aliscut < Formula
  desc "Minimal cli alias table"
  homepage "https://github.com/NhanPhan159/aliscut"
  url "https://github.com/NhanPhan159/aliscut/archive/refs/tags/v.1.0.0.tar.gz"
  sha256 "c5464b6662ca5a1ff9c4f3e4d01a37fca10f1800823919e57cef622776249cc8"
  license "MIT"
  head "https://github.com/NhanPhan159/aliscut.git", branch: "main"

  depends_on "make" => :build

  def install
    system "make"
    bin.install "aliscut"
  end

  test do
    assert_match "You don't have any aliases", shell_output(bin/"aliscut")
  end
end
