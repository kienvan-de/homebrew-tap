cask "zig-zag" do
  version "0.6.1"
  sha256 "b8bac01f9dc871bb0f008717dd9c7d2841e80f3bad5f5b7f0f69e092a94c920c"

  url "https://github.com/kienvan-de/zig-zag/releases/download/v#{version}/zig-zag-macos-app.tar.gz"
  name "zig-zag"
  desc "Blazing-fast LLM proxy — native macOS menu bar app"
  homepage "https://github.com/kienvan-de/zig-zag"

  depends_on macos: ">= :ventura"

  app "zig-zag.app"

  zap trash: [
    "~/.config/zig-zag",
  ]
end
