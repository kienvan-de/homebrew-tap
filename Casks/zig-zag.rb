cask "zig-zag" do
  version "1.5.0"
  sha256 "d2c7138522921b91ba30e8b0dc9645b24e9efb8b4b7542897cf7499acf3e6c24"

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
