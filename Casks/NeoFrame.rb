cask "NeoFrame" do
  version "0.0.10"
  sha256 "623dd122df7074018245af66f3ca1af7399ad32aafc4181190eb806b58e64ded"

  url "https://github.com/crgimenes/NeoFrame/releases/download/v#{version}/NeoFrame-darwin-universal.zip"
  name "NeoFrame"
  desc "Always-on-top click-through overlay: draw, erase, and a basic terminal"
  homepage "https://github.com/crgimenes/NeoFrame"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "NeoFrame.app"
end
