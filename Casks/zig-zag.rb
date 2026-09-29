cask "zig-zag" do
  version "2.0.0"
  sha256 "c31fa535efcd3a63fb8b01a6b61e39e9fa3f0ed1b9d2c5fe39705b29eda8e527"

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
