cask "zig-zag" do
  version "0.5.5"
  sha256 "a192843022a060bae9e975f9394e10cb2c2a256c56d4e51a70af34c8808e49fc"

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
