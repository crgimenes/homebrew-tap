cask "gion" do
  version "0.0.4"
  sha256 "49cf588ef03c6d71222983b0b70c556e15c0c66510e71e41e41fc06f4bcadd2a"

  url "https://github.com/crgimenes/gion/releases/download/v#{version}/gion-darwin-universal.zip"
  name "gion"
  desc "8-bit sound effects and chiptune music workbench for games"
  homepage "https://github.com/crgimenes/gion"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "gion.app"
end
