class ZigZag < Formula
  desc "Blazing-fast LLM proxy with OpenAI-compatible API"
  homepage "https://github.com/kienvan-de/zig-zag"
  version "1.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kienvan-de/zig-zag/releases/download/v#{version}/zig-zag-macos-aarch64.tar.gz"
      sha256 "9a1de9cf9777ba49760a9e839a00adafff9db5f6317883d1a948a66ee50d6971"
    else
      url "https://github.com/kienvan-de/zig-zag/releases/download/v#{version}/zig-zag-macos-x86_64.tar.gz"
      sha256 "c463db4c7ad1b3cd878301e932a590a17f507c2fd0feaee087d74ee55772e5ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kienvan-de/zig-zag/releases/download/v#{version}/zig-zag-linux-aarch64.tar.gz"
      sha256 "76fcc50a9760bbe93d2c568644f55867efec339d084016a9e1abc8ede285c809"
    else
      url "https://github.com/kienvan-de/zig-zag/releases/download/v#{version}/zig-zag-linux-x86_64.tar.gz"
      sha256 "9febf7635e9f90eb785404c818fe41d7236ce53676f8247dfbf472a1291b051b"
    end
  end

  def install
    bin.install "zig-zag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zig-zag --version")
  end
end
