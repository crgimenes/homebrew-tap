cask "linefire" do
  version "0.0.50"
  sha256 "efffb53756ad6b5eaf3becc160ae89d49df842fa971c27670f370df0f2281766"

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
