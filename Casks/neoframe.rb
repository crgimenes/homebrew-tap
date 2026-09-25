cask "neoframe" do
  version "0.0.11"
  sha256 "1cd3c473f1b0dd50cfd8e4842cc0b25b9aa5de711c23fd5e9a7e3d75291585c6"

  url "https://github.com/crgimenes/NeoFrame/releases/download/v#{version}/NeoFrame-darwin-universal.zip"
  name "NeoFrame"
  desc "Always-on-top click-through overlay: draw, erase, and a basic terminal"
  homepage "https://github.com/crgimenes/NeoFrame"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "NeoFrame.app"
end
