cask "zig-zag" do
  version "1.0.0"
  sha256 "bef70bd3e3494c87f4109a28ebe71c49038be47f011cd8333fe7aed699875d4a"

  url "https://github.com/kienvan-de/zig-zag/releases/download/v#{version}/zig-zag-macos-app.tar.gz"
  name "zig-zag"
  desc "Blazing-fast LLM proxy — native macOS menu bar app"
  homepage "https://github.com/kienvan-de/zig-zag"

  depends_on macos: :ventura

  app "zig-zag.app"

  zap trash: [
    "~/.config/zig-zag",
  ]
end
