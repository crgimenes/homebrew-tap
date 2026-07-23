cask "kutta" do
  version "0.1.8"
  sha256 "d37a465746174e0ce665b990ab0b55a3a38edf0db418b159d742cea56ad647e9"

  url "https://github.com/crgimenes/kutta/releases/download/v#{version}/kutta-darwin-universal.zip"
  name "kutta"
  desc "Qualitative 2D wind tunnel with an airfoil editor, for aeromodelers"
  homepage "https://github.com/crgimenes/kutta"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "kutta.app"
end
