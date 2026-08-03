cask "neko" do
  version "0.1.45"
  sha256 "74fbe8ca3a43f1e5410cb97ea5968fdbf58d03ce5f4df9fd3b84f3841d7971a2"

  url "https://github.com/crgimenes/neko/releases/download/v#{version}/neko-darwin-universal.zip"
  name "neko"
  desc "Cross-platform cursor-chasing cat, a Go reimplementation of the X11 classic"
  homepage "https://github.com/crgimenes/neko"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "neko.app"
end
