cask "linefire" do
  version "0.0.52"
  sha256 "852f3350abf91c02ad343d2656fd34a7fe147758347b8c57252ef6f50fe39b73"

  url "https://github.com/crgimenes/linefire/releases/download/v#{version}/linefire-darwin-universal.zip"
  name "linefire"
  desc "CRT-glow vector twin-stick shooter with a 16-stage campaign and an endless Rift"
  homepage "https://github.com/crgimenes/linefire"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "linefire.app"
end
