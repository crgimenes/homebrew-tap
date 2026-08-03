cask "kutta" do
  version "0.1.11"
  sha256 "68d9b3282d1264a66d947f830ef6a60b2b783614f150e5b6a6f57b2cae62b7d8"

  url "https://github.com/crgimenes/kutta/releases/download/v#{version}/kutta-darwin-universal.zip"
  name "kutta"
  desc "Qualitative 2D wind tunnel with an airfoil editor, for aeromodelers"
  homepage "https://github.com/crgimenes/kutta"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "kutta.app"
end
