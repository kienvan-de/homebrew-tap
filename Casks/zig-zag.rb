cask "zig-zag" do
  version "0.6.2"
  sha256 "4018cf454b0a2ccfb959eb0a25db564369ede8ef10b09a0d6d98fb7484df7ad9"

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
