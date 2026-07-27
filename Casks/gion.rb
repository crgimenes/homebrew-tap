cask "gion" do
  version "0.0.3"
  sha256 "4760b42d692bfd5596652b00c408a913813250faf9e953a86c7a50b7e3de81f8"

  url "https://github.com/crgimenes/gion/releases/download/v#{version}/gion-darwin-universal.zip"
  name "gion"
  desc "8-bit sound effects and chiptune music workbench for games"
  homepage "https://github.com/crgimenes/gion"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "gion.app"
end
