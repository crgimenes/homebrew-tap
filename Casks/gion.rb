cask "gion" do
  version "0.0.2"
  sha256 "379f2ccdf07fb3ef3064d5bb2e5e3775819b6423a0c2481e84b2e97b682e4b3a"

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
