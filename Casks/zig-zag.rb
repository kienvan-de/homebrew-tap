cask "zig-zag" do
  version "0.5.4"
  sha256 "c036faf4b395a81d9af4039fc93d396d71df77472737a35ae92946c78f379c68"

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
