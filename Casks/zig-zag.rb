cask "zig-zag" do
  version "1.1.0"
  sha256 "b1b301fefe7be9b96d53f427aabe11dfd0e55f5b298f7fcf838d5cba15544df2"

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
