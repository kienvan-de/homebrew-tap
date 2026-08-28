cask "zig-zag" do
  version "1.3.0"
  sha256 "455797ed730d0281b95dda066548c8c6239179ebf9fba9437e3ba9f4224da8b9"

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
