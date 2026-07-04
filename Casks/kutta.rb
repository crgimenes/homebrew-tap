cask "kutta" do
  version "0.1.5"
  sha256 "c867b4c1b0084d6d347bb2423538bb675ddc957a03fbfd7b84c09c8eeb80926b"

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
