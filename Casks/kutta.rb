cask "kutta" do
  version "0.0.12"
  sha256 "1641315770b6e1ff78905997b84b1355b8fe6c575cd90c0e328bb42a173aea90"

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
