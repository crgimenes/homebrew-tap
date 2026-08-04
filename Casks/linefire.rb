cask "linefire" do
  version "0.0.51"
  sha256 "d54f1262d88988abea4326b201191de9045c2d7f916ac7be3e81a40505cfc062"

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
