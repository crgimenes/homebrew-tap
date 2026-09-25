cask "neko" do
  version "0.1.46"
  sha256 "7c8b8f5de57629749ab8019860930cd37667ab813a6bfd692850ec7199ea376d"

  url "https://github.com/crgimenes/neko/releases/download/v#{version}/neko-darwin-universal.zip"
  name "neko"
  desc "Cross-platform cursor-chasing cat, a Go reimplementation of the X11 classic"
  homepage "https://github.com/crgimenes/neko"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "neko.app"
end
