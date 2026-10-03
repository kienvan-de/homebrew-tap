class ZigZag < Formula
  desc "Blazing-fast LLM proxy with OpenAI-compatible API"
  homepage "https://github.com/kienvan-de/zig-zag"
  version "2.0.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kienvan-de/zig-zag/releases/download/v#{version}/zig-zag-macos-aarch64.tar.gz"
      sha256 "1f400037c0c79420454013da0b994bf0e1e9d2e5e788622081619bf93e1f6448"
    else
      url "https://github.com/kienvan-de/zig-zag/releases/download/v#{version}/zig-zag-macos-x86_64.tar.gz"
      sha256 "fc91a8d780c64d1125b5561fe07e1e9683d896c835d4b49323ce7cfdbb31378b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kienvan-de/zig-zag/releases/download/v#{version}/zig-zag-linux-aarch64.tar.gz"
      sha256 "0c299e5b4d724cd7efadcc3cff48749dbb8978a4415f29b58467bcc0c88922f7"
    else
      url "https://github.com/kienvan-de/zig-zag/releases/download/v#{version}/zig-zag-linux-x86_64.tar.gz"
      sha256 "55f7efa36ca68ddc2c072c5330c5f5a05d759ebcd0803cf0fbcffc665cd499da"
    end
  end

  def install
    bin.install "zig-zag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zig-zag --version")
  end
end
