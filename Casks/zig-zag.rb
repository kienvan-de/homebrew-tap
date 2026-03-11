cask "zig-zag" do
  version "0.6.0"
  sha256 "faf001dd821ed0bdfff84bf58fa5295ede5a2756c0fee7478b4e778c720ea6bd"

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
