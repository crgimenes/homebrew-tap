cask "gion" do
  version "0.0.6"
  sha256 "d45d4e6b3dcc5ec91bfb998d3e63bce0017da083559e6e0045eadafc24207afb"

  url "https://github.com/crgimenes/gion/releases/download/v#{version}/gion-darwin-universal.zip"
  name "gion"
  desc "8-bit sound effects and chiptune music workbench for games"
  homepage "https://github.com/crgimenes/gion"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "gion.app"
end
