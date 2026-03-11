class ZigZag < Formula
  desc "Blazing-fast LLM proxy with OpenAI-compatible API"
  homepage "https://github.com/kienvan-de/zig-zag"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kienvan-de/zig-zag/releases/download/v#{version}/zig-zag-macos-aarch64.tar.gz"
      sha256 "3aa48eb46c1d58fd5b5b54a8e212edf29b16d01129ac424c467f2e4e1925655a"
    else
      url "https://github.com/kienvan-de/zig-zag/releases/download/v#{version}/zig-zag-macos-x86_64.tar.gz"
      sha256 "3fdc7dacf1721a7c054e8ab756a5eb65d4f813bb32ce1c41e1be838f3294bec0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kienvan-de/zig-zag/releases/download/v#{version}/zig-zag-linux-aarch64.tar.gz"
      sha256 "7f1b41c1a3544df1fd6bad816b4265579fe30c76ee981fdc5e0c15300f25c376"
    else
      url "https://github.com/kienvan-de/zig-zag/releases/download/v#{version}/zig-zag-linux-x86_64.tar.gz"
      sha256 "1cafeaf8503a60880e530493b1114d5a6db443ff18175c8aadb991ccc82700b9"
    end
  end

  def install
    bin.install "zig-zag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zig-zag --version")
  end
end
