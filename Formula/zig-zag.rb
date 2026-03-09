class ZigZag < Formula
  desc "Blazing-fast LLM proxy with OpenAI-compatible API"
  homepage "https://github.com/kienvan-de/zig-zag"
  version "0.5.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kienvan-de/zig-zag/releases/download/v#{version}/zig-zag-macos-aarch64.tar.gz"
      sha256 "36152f4c593720e173e9409a13abbfe637935ed91f4735d6adb5844e2bdf75bf"
    else
      url "https://github.com/kienvan-de/zig-zag/releases/download/v#{version}/zig-zag-macos-x86_64.tar.gz"
      sha256 "bca0849e69ba285ebfbc60fe63a3d1be41c8ef2d440f60d6819a616163e54876"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kienvan-de/zig-zag/releases/download/v#{version}/zig-zag-linux-aarch64.tar.gz"
      sha256 "18bcaaffce717210f88cdcd3d77b62eaa297fe676bc67d268fcaa056e0b856bf"
    else
      url "https://github.com/kienvan-de/zig-zag/releases/download/v#{version}/zig-zag-linux-x86_64.tar.gz"
      sha256 "dc0f7b71d26d5710bcd8402bf7343fa5fd92d28eb1a7c5d366c8dd6d96875194"
    end
  end

  def install
    bin.install "zig-zag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zig-zag --version")
  end
end
