cask "kdaemon" do
  version "0.0.1"
  sha256 "e55a822d4cc610c5ab008ec1f98d7ecb2071545c0133b10003c86fe9342171c5"

  url "https://github.com/crgimenes/kdaemon/releases/download/v#{version}/kdaemon-darwin-universal.zip"
  name "kdaemon"
  desc "Text macros and clipboard history in the menu bar, configured in Filo"
  homepage "https://github.com/crgimenes/kdaemon"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "kdaemon.app"
end
