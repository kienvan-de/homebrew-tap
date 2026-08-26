class ZigZag < Formula
  desc "Blazing-fast LLM proxy with OpenAI-compatible API"
  homepage "https://github.com/kienvan-de/zig-zag"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kienvan-de/zig-zag/releases/download/v#{version}/zig-zag-macos-aarch64.tar.gz"
      sha256 "74da7bdbbb7757ad195f49e531e0492ddc1a4118eb32cf9d53649133a82bbef0"
    else
      url "https://github.com/kienvan-de/zig-zag/releases/download/v#{version}/zig-zag-macos-x86_64.tar.gz"
      sha256 "df37959897e1dbdefea1f9eda10300857c6146901f928e4b505abe3c1a2484e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kienvan-de/zig-zag/releases/download/v#{version}/zig-zag-linux-aarch64.tar.gz"
      sha256 "4ea4c489d7e49fc6bf1388683f60b591e09dbae26b2ca8395fb83265f96b3b62"
    else
      url "https://github.com/kienvan-de/zig-zag/releases/download/v#{version}/zig-zag-linux-x86_64.tar.gz"
      sha256 "d5eb846e549d6deb287026587dd00dcf3a9d78351bcfb62cafa24931bc9b4ee7"
    end
  end

  def install
    bin.install "zig-zag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zig-zag --version")
  end
end
