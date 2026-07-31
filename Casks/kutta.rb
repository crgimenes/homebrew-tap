cask "kutta" do
  version "0.1.10"
  sha256 "adac552fe5340b7c5f5d2055f46b63b001abf2c2083d44dfeffd99a278f6d123"

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
