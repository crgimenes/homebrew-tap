cask "kutta" do
  version "0.1.7"
  sha256 "ce87b2c50a73b9aa7f788e8f96539d8473dff9450565cc92423bd60e9623ba98"

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
