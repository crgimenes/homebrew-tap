cask "linefire" do
  version "0.0.54"
  sha256 "6bcfea8d46e93301958906707f8ba85f4cd0bc7ed7e9c3839163856e21957101"

  url "https://github.com/crgimenes/linefire/releases/download/v#{version}/linefire-darwin-universal.zip"
  name "linefire"
  desc "CRT-glow vector twin-stick shooter with a 16-stage campaign and an endless Rift"
  homepage "https://github.com/crgimenes/linefire"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "linefire.app"
end
