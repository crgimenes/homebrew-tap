cask "linefire-skirmish" do
  version "0.0.1"
  sha256 "368a4496cd411a0c44803a0e870f412235c5b55bdf34e71ab87ce960b5e863f6"

  url "https://github.com/crgimenes/linefire-skirmish/releases/download/v#{version}/linefire-skirmish-darwin-universal.zip"
  name "linefire-skirmish"
  desc "Programming game where you write a Filo AI and your fleet does the fighting"
  homepage "https://github.com/crgimenes/linefire-skirmish"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "linefire-skirmish.app"
end
