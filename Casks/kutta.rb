cask "kutta" do
  version "0.1.6"
  sha256 "c9fcbfefb976425a3687745ca9477625884a2191771c8144e7bfcb2ab09a6ba4"

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
