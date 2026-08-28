cask "zig-zag" do
  version "1.4.1"
  sha256 "68996274f2d43652a3ae110257886b23648ee9ff71d34a06e8324fd3db0259ab"

  url "https://github.com/kienvan-de/zig-zag/releases/download/v#{version}/zig-zag-macos-app.tar.gz"
  name "zig-zag"
  desc "Blazing-fast LLM proxy — native macOS menu bar app"
  homepage "https://github.com/kienvan-de/zig-zag"

  depends_on macos: :ventura

  app "zig-zag.app"

  # The app is ad-hoc signed (no Apple Developer account). Remove the quarantine
  # attribute so macOS Gatekeeper does not block it after download.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/zig-zag.app"]
  end

  zap trash: [
    "~/.config/zig-zag",
  ]
end
